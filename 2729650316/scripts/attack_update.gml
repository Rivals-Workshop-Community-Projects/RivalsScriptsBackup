//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 80;
}

if (attack == AT_FSPECIAL){
    fspecUsed = true;
    if (window == 2){
        if(window_timer == 1)
        afterImageTimer = 18;
        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
        if (special_pressed && window_timer < 18)
        {
            destroy_hitboxes();
            window_timer = 18;
        }
    }
    if(window != 1)
        can_wall_jump = true;
}

if (attack == AT_FSPECIAL_AIR){
    hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    if(window == 1)
        sfxPlayed = false;
    if(window == 2)
    {
        if(right_down) hsp += .2;
        if(left_down)  hsp -= .2;
        can_wall_jump = true;
        if(state_timer > 60)
        {
            can_shield = true;
            can_jump = true;
        }
        if(down_down)
            fall_through = true;
    }
    if(window == 3) 
    {
        if(!free && !sfxPlayed)
        {
            hsp /= 3;
            destroy_hitboxes();
            sfxPlayed = true;
            sound_play(asset_get("sfx_abyss_seed_land"),false,noone,0.7,1.4);
            sound_play(asset_get("sfx_ell_fist_explode"),false,noone,1,1.6);
            spawn_base_dust(x+10*spr_dir,y, "land", -spr_dir)
        }
    }
    if(window == 4 && free)
       iasa_script();
}

if (attack == AT_USPECIAL)
{
    can_fast_fall = false;
    if(move_cooldown[AT_USPECIAL_2] == 0 && window == 1 && window_timer == 6 && special_down)
    {
        vsp = -6;
        set_attack(AT_USPECIAL_2);
    }
    else if(window == 1)
        clear_button_buffer(PC_SPECIAL_PRESSED);
        
    // uspecUsed = true;
    if(state_timer == 8)
    {
        sfxPlayed = false;
        afterImageTimer = 12;
    }
    if(window != 1) 
    {
        can_wall_jump = true;
        if(!free && !sfxPlayed)
        {
            sfxPlayed = true;
            sound_play(asset_get("sfx_abyss_seed_land"),false,noone,0.7,1.4);
            sound_play(asset_get("sfx_ell_fist_explode"),false,noone,1,1.6);
            spawn_base_dust(x+10*spr_dir,y, "land", -spr_dir)
        }
    }
    if(window == 3 && window_timer == 8 && !hitpause)
    {
        vsp = 12;
        afterImageTimer = 16;
    }
    if(window == 4)
    {
        can_fast_fall = false;
        if(window_timer > 30)
        {
            can_shield = true;
            // can_jump = true;
        }
    }
    if(window == 5)
        destroy_hitboxes();
}

if (attack == AT_DSPECIAL){
    move_cooldown[AT_DSPECIAL] = 60;
    if (window == 2 && window_timer == 1){
        instance_create(x,y-40,"obj_article_platform");
    }
}
if(attack == AT_USPECIAL_2)
{
    hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    move_cooldown[AT_USPECIAL_2] = 240;
}

if (attack == AT_USTRONG) {
    can_fast_fall = false;
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (state_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
        reset_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE);
    }
    if(can_break)
    {
        set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 8);
        set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 15);
        set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
    }
    if(window == 3)
    {
        if(!has_hit && window_timer > 6)
        {   can_move = false; hsp *= 0.95; }
        set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
    }
    //Grabbed part
    if(instance_exists(grabbed_player_obj))
    {
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS) && window_timer > 1) { grabbed_player_obj = noone; }
        else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
        else 
        {
            //keep the grabbed player in hitstop until the grab is complete.
            with(grabbed_player_obj)
            {
                hitstop = 4;
                hitpause = true;
                fall_through = true;
            }
            //if this is the first frame of a window, store the grabbed player's relative position.
            if (window_timer <= 1) {
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
            }
            if(window >= 4 && window <= 6)
            {
                if(window <= 5)
                    fall_through = true;
                if(!hitpause)
                    draw_y = 30;

                //change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
                var pull_to_x = -10*spr_dir;
                var pull_to_y = -60;
                
                //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( floor(grabbed_player_relative_x), floor(pull_to_x), window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( floor(grabbed_player_relative_y), floor(pull_to_y), window_timer, window_length);
            }
        }
    }
    if(window == 7 && window_timer <= 1)
    {
        if(can_break) break_table = true;
        draw_y = 0;
    }
}
if(attack == AT_FSTRONG)
{
    can_move = false;
    can_fast_fall = false;
    if (state_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
        reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
        reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE);
    }
    if(can_break)
    {
        set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
        set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 5);
        set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 15);
    }
    //Grabbed part
    if(instance_exists(grabbed_player_obj))
    {
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
        else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
        else 
        {
            //keep the grabbed player in hitstop until the grab is complete.
            with(grabbed_player_obj)
            {
                hitstop = 4;
                hitpause = true;
            }
            //if this is the first frame of a window, store the grabbed player's relative position.
            if (window_timer <= 1) {
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
            }
            if(window >= 4)
            {
                //change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
                var pull_to_x = 40*spr_dir;
                var pull_to_y = -20-(window_timer/10);
                
                //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( floor(grabbed_player_relative_x), floor(pull_to_x), window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( floor(grabbed_player_relative_y), floor(pull_to_y), window_timer, window_length);
            }
        }
    }
    if(window == 5 && window_timer <= 1)
    {
        if(can_break) break_table = true;
    }
}
if(attack == AT_DSTRONG)
{
    can_move = false;
    can_fast_fall = false;
    if (state_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
        reset_attack_value(AT_DSTRONG, AG_NUM_WINDOWS);
        reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE);
    }
    if(can_break)
    {
        set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
        set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 5);
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 15);
    }
    //Grabbed part
    if(instance_exists(grabbed_player_obj))
    {
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
        else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
        else 
        {
            //keep the grabbed player in hitstop until the grab is complete.
            with(grabbed_player_obj)
            {
                hitstop = 4;
                hitpause = true;
            }
            //if this is the first frame of a window, store the grabbed player's relative position.
            if (window_timer <= 1) {
                grabbed_player_relative_x = grabbed_player_obj.x - x;
                grabbed_player_relative_y = grabbed_player_obj.y - y;
            }
            if(window >= 4)
            {
                hud_offset = 40;
                //change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
                var pull_to_x = 30*spr_dir;
                var pull_to_y = -10;
                
                //using an easing function, smoothly pull the opponent into the grab over the duration of this window.
                var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
                grabbed_player_obj.x = x + ease_circOut( floor(grabbed_player_relative_x), floor(pull_to_x), window_timer, window_length);
                grabbed_player_obj.y = y + ease_circOut( floor(grabbed_player_relative_y), floor(pull_to_y), window_timer, window_length);
            }
        }
    }
    if(window == 5 && window_timer <= 1)
        if(can_break) break_table = true;
}

if(attack == AT_TAUNT && window == 2 && crowdCooldown == 0)
{
    crowdCooldown = 120;
    crowdHype ++;
    sound_play(sound_get("crowd_taunt"),false,noone,1+(crowdHype/20),0.8+(crowdHype/80))
}


#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;