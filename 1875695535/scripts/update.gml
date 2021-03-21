//update


if get_player_color(player) == 7 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
}
 
 
if (state_timer = 1 && state == PS_IDLE || state == PS_HITSTUN ){
    max_fall = 15;
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
    set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -25);    
}

if (get_player_stocks( player ) == 1) {
    ragemode = 1;
}

if (state = PS_WALK){
    
    if (state_timer = 40){
        state_timer = 2;
    }

    if (state_timer = 5){
        sound_play(sound_get("walkhop"))
    }
    
    if (state_timer = 22){
        sound_play(sound_get("walkland"))
    }

    if (state_timer > 7 && state_timer < 22){
    joy_pad_idle = false;
            state = PS_WALK;

    if (spr_dir = 1){
    right_hard_press = true;
    }
    
    if (spr_dir = -1){
    left_hard_press = true;
    }



        if (ragemode = 1){
            walk_speed = 15;
        }
        else{
            walk_speed = 6;
        }
    }
    else{
        hsp = 0;
    }

}


if (state = PS_DASH){
    
    if (state_timer = 17){
        state_timer = 0;
    }

    if (state_timer = 9){
        sound_play(sound_get("dashland"))
    }

    if (state_timer > 2 && state_timer < 9){
        if (ragemode = 1){
            hsp = 14 * spr_dir
        }
        else{
            hsp = 8 * spr_dir
        }
    }
    else{
        hsp = 1 * spr_dir;
    }

}

if (ragemode == 1){
    var rageoutline = (sin((get_gameplay_time() - 100) * 0.15) * -128) + 128
    outline_color = [ rageoutline * 0.75, 0, 0];
    init_shader();
    set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 30);
    set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
    knockback_adj = 0.65;
    jump_speed = 11;
    air_max_speed = 7;
    max_jump_hsp = 7;
    initial_dash_speed = 5;
    walk_speed = 15;
    dash_speed = 6;
    djump_speed = 12;
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 18);
    set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
}

move_cooldown[AT_JAB] = 99999;
move_cooldown[AT_FTILT] = 99999;
move_cooldown[AT_DTILT] = 99999;
move_cooldown[AT_UTILT] = 99999;
move_cooldown[AT_FSTRONG] = 99999;
move_cooldown[AT_USTRONG] = 99999;
move_cooldown[AT_DSTRONG] = 99999;
move_cooldown[AT_UAIR] = 99999;
move_cooldown[AT_DAIR] = 99999;
move_cooldown[AT_FAIR] = 99999;
move_cooldown[AT_BAIR] = 99999;
move_cooldown[AT_NAIR] = 99999;
move_cooldown[AT_DATTACK] = 99999;