if free then vsp = min(vsp + article_gravity, article_max_fall_speed);
state_timer++;
depth = player_id.depth+1;
can_be_hit[player_id.player] = 2;


//Spawn
if (state == 1){
    sprite_index = sprite_get("weenieSpawn");

    if (player_id.attack == AT_FSPECIAL && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
        player_id.x = x;
        player_id.y = y;
        hsp = player_id.hsp;
        vsp = player_id.vsp;
    } else {
        state = 6;
        state_timer = 0;
    }
}

//Dash
if (state == 2){
    sprite_index = sprite_get("weenieDash");
    
    if (player_id.attack == AT_FSPECIAL && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
        player_id.x = x;
        player_id.y = y;
    } else {
        state = 6;
        state_timer = 0;
    }

    hsp = player_id.hsp;
    vsp = player_id.vsp;

    if (abs(hsp) == 7 && !hitpause){
        sound_play(player_id.weenieSound, true, noone, 1, 1);
    }

    if (abs(hsp) >= 6.8){ //Actually 7 due to how the code works.
        if (state_timer % 6 == 0){
            CreateAfterimage();
        }

        if (!instance_exists(weenieBox)){
            with player_id attack_end();
            weenieBox = create_hitbox(AT_FSPECIAL, 1, x, y);

        } else {

            weenieBox.length += 1;
            weenieBox.damage = round(abs(hsp));
            weenieBox.kb_value = round(abs(hsp));
            weenieBox.hitpause = round(abs(hsp));

            if (round(abs(hsp) >= 10)){
                weenieBox.hit_effect = HFX_GEN_BIG;
                weenieBox.sound_effect = asset_get("sfx_blow_heavy1");
            }
        }
    }
}

//Turn
if (state == 3){
    sprite_index = sprite_get("weenieTurn");
    if (player_id.attack == AT_FSPECIAL && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
        player_id.x = x;
        player_id.y = y;
    } else {
        state = 6;
        state_timer = 0;
    }

    
    if (player_id.window_timer == 11){
        hsp = round(hsp);
    } else {
        hsp *=  0.9;
    }
}

//Idle
if (state == 4 || state == 5){
    sprite_index = sprite_get("weenieIdle");
    image_index = round(state_timer * article_anim_speed % image_number);

    if (floor(hsp) > article_friction && free == false) then hsp -= article_friction
    if (floor(hsp) < -article_friction && free == false) then hsp += article_friction;
    if (floor(hsp) < article_friction && floor(hsp) > -article_friction) then hsp = 0;
}

//Death
if (state == 6 || destroyed == true){
    sprite_index = sprite_get("weenieDie");
    ignores_walls = true;
    is_hittable = false;

    if (state_timer > 120){
        instance_destroy();
        exit;
    }
}

//Ram
if (state == 7){
    sprite_index = sprite_get("weenieDash");
    image_index = 5 + (state_timer / 3);

    if (abs(hsp) > 1){
        if (!instance_exists(weenieBox2)){
            weenieBox2 = create_hitbox(AT_FSPECIAL_2, 1, x + (10 + hsp) * spr_dir, y - 20);

        } else {

            weenieBox2.x = x + (10 + hsp) * spr_dir;
            weenieBox2.y = y - 20;
            weenieBox2.length += 1;

        }
    }

    if (state_timer == 20){
        state = 4;
        state_timer = 0;
    }

    print(hsp)

    if (floor(hsp) > article_friction && free == false) then hsp -= article_friction * 2
    if (floor(hsp) < -article_friction && free == false) then hsp += article_friction * 2;
    if (floor(hsp) < article_friction && floor(hsp) > -article_friction) then hsp = 0;
}



var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;


if (y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
    instance_destroy();
    exit;
}

#define CreateAfterimage()
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:0, col:_color, timer:0, timerMax:18};
    if (instance_exists(player_id)) then afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:player_id.small_sprites, x:player_id.x, y:player_id.y, spr_dir:player_id.spr_dir, sprite_index:player_id.sprite_index, image_index:player_id.image_index, rot:0, col:_color, timer:0, timerMax:18};
}