if(state == PS_DOUBLE_JUMP && state_timer == 1){
    sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.2, 1.3);
}

if(state == PS_WALL_JUMP || state_cat == SC_HITSTUN || !free){
    fspec_fresh = [1, 1, 1];
}
if(fspec_fresh[2] == 0){
    move_cooldown[AT_FSPECIAL] = 2;
}

if(blue_buffer && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)){
    if(blue){
        blue = false;
        blue_buffer = false;
        init_shader();
    }
}

if(blue){
    //vfx
    if(get_gameplay_time() % 10 == 0){
        var ran_x = random_func( 0, 60, true) - 30;
        var ran_y = random_func( 1, char_height, true) * -1;
        var hfx = spawn_hit_fx(x + ran_x, y + ran_y, vfx_ember);
        
        if(get_gameplay_time() % 30 == 0){
            hfx.depth  = depth - 1;
        }
    }
    
    //self damage
    if(get_gameplay_time() % blue_tick_rate == 0 && attack != AT_DSPECIAL){
        self_damage(1);
        sound_play(asset_get("sfx_burnend"), false, noone, 0.75, 1.1);
    }
    
    //kaguya alt rainbow
    if get_player_color(player) == 10 {
        init_shader();
    }
    
    //movement stat changes
    initial_dash_speed = blue_init_dash[1];
    dash_speed = blue_dash_speed[1];
    leave_ground_max = blue_leave_ground_max[1];
    max_jump_hsp = blue_max_jump_hsp[1];
    air_max_speed = blue_air_max_speed[1];
    air_accel = blue_air_accel[1];
    air_friction = blue_air_friction[1];
    fast_fall = blue_fast_fall[1];
    wave_land_adj = blue_wave_land_adj[1];
}else{
    initial_dash_speed = blue_init_dash[0];
    dash_speed = blue_dash_speed[0];
    leave_ground_max = blue_leave_ground_max[0];
    max_jump_hsp = blue_max_jump_hsp[0];
    air_max_speed = blue_air_max_speed[0];
    air_accel = blue_air_accel[0];
    air_friction = blue_air_friction[0];
    fast_fall = blue_fast_fall[0];
    wave_land_adj = blue_wave_land_adj[0];
}

if(state == PS_RESPAWN || respawn_taunt > 0){
    if(get_gameplay_time() % wing_timespeed == 0){
        wing_timer++;
    }
}

//hopes and dreams
if (get_player_color( player ) == 12){
	if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
		outline_color = [32, 32, 32];
	}
	init_shader();
}
#define self_damage(dmg_val)


if(dmg_val > 0){
    if(stored_dmg < storedmg_max * 2){
        stored_dmg += dmg_val;
        //clamp damage to the max, basically
        if(stored_dmg >= storedmg_max * (blue + 1)){
            dmg_val -= (stored_dmg - (storedmg_max * (blue + 1)));
            stored_dmg = storedmg_max * (blue + 1);
            if(!blue){
                blue = true;
                init_shader();
            }else{
                blue_buffer = true;
            }
        }
        take_damage( player, -1, dmg_val );
    }else{
        //if above max, you still take damage, but it doesnt store
        take_damage( player, -1, dmg_val );
    }
}else{
    //healing
    stored_dmg += dmg_val;
    take_damage( player, -1, dmg_val );
}

stored_dmg = clamp(stored_dmg, 0, storedmg_max * 2);
