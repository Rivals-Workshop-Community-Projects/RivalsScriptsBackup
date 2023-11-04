//update.gml

#macro BS_IDLE 0
#macro BS_TURN 1
#macro BS_SAD 2
#macro BS_HAPPY 3
state = 0; //the state machine for buddies sucks


///////////////////////////////////////////////////// GENERAL SECTION /////////////////////////////////////////////////////

//update chao
if (sprite_index != chao_sprite) sprite_index = chao_sprite;
image_index = real_img_index;

if ("chao_type" in owner && chao_type != owner.chao_type) chao_type = owner.chao_type;
if (prev_chao_type != chao_type) set_chao();

//state machine
switch (cur_state)
{
    case BS_IDLE:
        real_img_index += idle_anim_speed;
        break;
    case BS_TURN:
        real_img_index = lerp(real_img_num[cur_state-1], real_img_num[cur_state], state_timer/turn_time);
        if (state_timer >= turn_time) set_state(BS_IDLE);
        break;
    case BS_SAD: case BS_HAPPY:
        real_img_index = lerp(
            real_img_num[cur_state-1] + anim_check[window-1][1],
            real_img_num[cur_state-1] + anim_check[window-1][1] + anim_check[window-1][2],
            window_timer/anim_check[window-1][0]
        );
        break;
}
if (real_img_index >= real_img_num[cur_state]) real_img_index = (cur_state == BS_IDLE) ? 0 : real_img_num[cur_state-1];

//if a new voiceclip is playing, cut the old one
if (cur_voiceclip[0] != cur_voiceclip[1])
{
    sound_stop(cur_voiceclip[1]);
    cur_voiceclip[1] = cur_voiceclip[0];
}

//position setup
var go_slowness = 10;
var end_x = owner.x - spr_dir * dist_from_player[0];
var end_y = owner.y - dist_from_player[1];
var go_angle = point_direction(x, y, end_x, end_y);
var go_dist = point_distance(x, y, end_x, end_y);

//state and movement setup
if (cur_state != BS_SAD && cur_state != BS_HAPPY)
{
    x += lengthdir_x(go_dist/go_slowness, go_angle);
    y += lengthdir_y(go_dist/go_slowness, go_angle);

    //checking changes in position (speed basically lol)
    if (prev_pos[0] != x) prev_pos[0] = x;
    if (prev_pos[1] != y) prev_pos[1] = y;

    //floating offset
    flutter_timer += (flutter_up ? 1 : -1);
    if (flutter_timer < 0 || flutter_timer > flutter_max) flutter_up = !flutter_up;
    y += ease_quadInOut(0, floor(flutter_height/10), flutter_timer, flutter_max);

    if (spr_dir != owner.spr_dir * 2) //turning
    {
        spr_dir = owner.spr_dir * 2;
        set_state(BS_TURN);
    }

    //taunt
    if ((owner.state == PS_ATTACK_GROUND || owner.state == PS_ATTACK_AIR) && owner.attack == AT_TAUNT && owner.state_timer == 1) set_state(BS_HAPPY);
}
else //advanced animation setup for cheering/getting upset
{
    window_timer ++;
    if (window_timer >= anim_check[window-1][0])
    {
        window_timer = 0;
        if (window+1 > array_length(anim_check)) set_state(BS_IDLE);
        else window ++;
    }
}

//chao can react to one or more deaths at once
with (oPlayer) if (state == PS_RESPAWN && state_timer == 0 && !clone && !custom_clone)
{
    other.last_player_died = player; //player death check
    other.last_player_killed = (last_player_hit_me > 0 || hit_player_obj == noone) ? last_player_hit_me : hit_player_obj.player;
}
if (last_player_died > -1) //emoting when player dies/gets a KO (resets values when the state is applied)
{
    if (last_player_died != owner.player && last_player_killed == owner.player) set_state(BS_HAPPY); //checks if the dying player died by the owner
    if (last_player_died == owner.player) set_state(BS_SAD); //checks if the owner died regardless of how
}

///////////////////////////////////////////////// ADVANCED COMPATIBILITY //////////////////////////////////////////////////

//compatibility with Bar-Kun!Sonic's super form
if ("is_bar_sonic" in owner)
{
    chao_sprite = sprite_get(owner.uses_super_sprites ? "sonicsuper" : "sonic");

    /*
    with (owner)
    {
        var temp = 1;
        repeat (7)
        {
            var pos = temp*4;
            other.chao_colO[pos] = cur_colors[temp + uses_super_colors * 8][0] / 255;
            other.chao_colO[pos + 1] = cur_colors[temp + uses_super_colors * 8][1] / 255;
            other.chao_colO[pos + 2] = cur_colors[temp + uses_super_colors * 8][2] / 255;
            other.chao_colB[pos] = shading_data[alt_cur][temp];
            temp ++;
        }
    }
    */
}

if (!owner.perfect_dodging && !owner.hitpause_flash)
{
    for (var i = 0; i < array_length(chao_colO); i++) chao_colO[i] = owner.colorO[i];
    for (var i = 0; i < array_length(chao_colB); i++) chao_colB[i] = owner.colorB[i];
}

#define set_state(new_state)
{
    cur_state = new_state;
    state_timer = 0;
    window_timer = 0;

    if (new_state == BS_SAD || new_state == BS_HAPPY)
    {
        anim_check = (new_state == BS_HAPPY) ? (chao_type == 3 ? anim_happy_omochao : anim_happy) : anim_sad;
        window = 1;

        voice_array(new_state == BS_HAPPY); //voice clip

        last_player_died = -1;
        last_player_killed = -1;
    }
    else window = 0;

    real_img_index = (new_state == BS_IDLE) ? 0 : real_img_num[new_state-1];
}
#define set_chao
{
    switch (chao_type)
    {
        case 0: chao_sprite = sprite_get("neutral"); break;
        case 1: chao_sprite = sprite_get("hero"); break;
        case 2: chao_sprite = sprite_get("dark"); break;
        case 3: chao_sprite = sprite_get("omochao"); break;
        case 4: chao_sprite = sprite_get("SSL"); break;
        case 5:
            chao_sprite = ("chao_custom_spr" in owner ? owner.chao_custom_spr : chao_custom_spr);
            chao_uses_alts = ("chao_uses_alts" in owner ? owner.chao_uses_alts : chao_uses_alts);
            break;
    }
    if (prev_chao_type != -99) user_event(1); //chao sounds (doesn't need to run here cuz it runs on load.gml anyways)
    prev_chao_type = chao_type;
}
#define voice_array(num)
{
    if (chao_sound_type > 0) switch (num)
    {
        case 0: //owner dying
            var number = random_func_2(current_second, chao_sound_amounts[2], true);
            cur_voiceclip[0] = sound_play(sound_get(chao_sound_bank[2][number]));
            break;
        case 1: //owner securing a kill/taunting
            var number = random_func_2(current_second, chao_sound_amounts[1], true);
            cur_voiceclip[0] = sound_play(sound_get(chao_sound_bank[1][number]));
            break;
    }
}