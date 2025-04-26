//fspec detection
//count down
if(right_buffer > 0) right_buffer--;
if(left_buffer > 0) left_buffer--;

//only reset if the direction is no longer held
if(right_buffer == 0 && !(right_hard_pressed || right_pressed || right_down)) right_buffer = -1;
if(left_buffer == 0 && !(left_hard_pressed || left_pressed || left_down)) left_buffer = -1;
//trigger on hard press
if(right_hard_pressed && right_buffer <= -1){
    right_buffer = 7;
}
if(left_hard_pressed && left_buffer <= -1){
    left_buffer = 7;
}


/* old fspec detection
if(right_pressed){
    right_buffer = 6;
}
if(left_pressed){
    left_buffer = 6;
}
if(right_buffer > 0) right_buffer--;
if(left_buffer > 0) left_buffer--;
*/
if get_player_color(player) == 7 {
    hue = (hue + hue_speed) % 255; //finds the hue and shifts it
    color_hsv = make_color_hsv(hue, 160, 245); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot(7, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot(7, 1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
    set_article_color_slot(0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot(1, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
    init_shader();
}

if(fspec_timer >= 0){
    
    if(fspec_yes == 2 && fspec_timer % 4 == 0){
        if(fspec_timer == 0){
            sound_play(sound_get("sfx_fspec_boom"));
            create_hitbox(AT_FSPECIAL, 2, floor(fspec_x), floor(fspec_y)); //change this hbox num to 1 for the funny
        }else if(fspec_timer == 16){
            fspec_finalhit = spawn_hit_fx(floor(fspec_x), floor(fspec_y), vfx_fspec_final);
            create_hitbox(AT_FSPECIAL, 3, floor(fspec_x), floor(fspec_y));
            fspec_timer = -2;
            fspec_x = 0;
            fspec_y = 0;
            fspec_yes = 0;
        }else{
            create_hitbox(AT_FSPECIAL, 2, floor(fspec_x), floor(fspec_y));
        }
    }else if(fspec_yes == 3 && fspec_timer == 27){
        spawn_hit_fx(floor(fspec_x), floor(fspec_y), vfx_fspec_no);
        sound_play(asset_get("sfx_burnend"));
        fspec_timer = -2;
        fspec_x = 0;
        fspec_y = 0;
        fspec_yes = 0;
    }
    
    fspec_timer++;
}

if((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && (state_timer == 2 || state_timer == 17)) ||
  ((state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && (state_timer == 7 || state_timer == 20)) ||
  ((state == PS_AIR_DODGE) && (state_timer == 1 || state_timer == 13)){
    spawn_hit_fx( x, y, vfx_blink );
}

//vfx depth
with hit_fx_obj if player_id == other {
    if hit_fx == other.vfx_fspec_hits || hit_fx == other.vfx_fspec_final || hit_fx == other.vfx_blink ||
    hit_fx == other.vfx_twinkle || hit_fx == other.vfx_barrier_beam || hit_fx == other.vfx_warp_reappear{
        depth = player_id.depth-5;
    }
}

if(!has_float){
    move_cooldown[AT_NSPECIAL] = 2;
    if(!free) has_float = true;
}

//nspecial jumpglide (float) logic
if(in_float){
    if(get_gameplay_time() % 20 == 0) sound_play(sound_get("sfx_rapidjab"), false, noone, 0.6, 0.99);
    if(get_gameplay_time() % 4 == 0){
        var particle_x = x + ((random_func(0, 20, true)) - 10);
        var particle_y = y - (-6 + random_func(1, 12, true));
        spawn_hit_fx( particle_x, particle_y, vfx_twinkle );
    }
    if(!hitpause){
        if(special_down){
            hsp += nspec_air_accel * (right_down - left_down);
            if(!right_down && !left_down){
                hsp *= .6;
            }
            if(state == PS_ATTACK_AIR){
                hsp = clamp(hsp, -(nspec_air_max - 0.75), (nspec_air_max - 0.75));
            }else{
                hsp = clamp(hsp, -nspec_air_max, nspec_air_max);
            }
            
            if(vsp < 0){
                vsp += 0.7;
                if(vsp > 0) vsp = 0;
                has_float = false;
            }
            if(vsp == 0){
                vsp = 0;
                nspec_float_cur++;
                if(nspec_float_cur > nspec_float_time) vsp += nspec_grav;
            }else if (vsp > 0){
                vsp += nspec_grav;
                vsp = clamp(vsp, 0, 14);
            }
            if(!free && nspec_float_cur > 0){
                set_state(PS_LAND);
                in_float = false;
                nspec_grav_cur = 0;
                nspec_float_cur = 0;
                sound_stop(sound_get("sfx_rapidjab"));
            }
        }
        if(!special_down || (state == PS_WALL_JUMP && state_timer == 0) || (state == PS_AIR_DODGE && state_timer == 0) || (state == PS_HITSTUN) ||
        (state == PS_DOUBLE_JUMP && state_timer == 0) || vsp >= fast_fall - 0.7){
            in_float = false;
            sound_stop(sound_get("sfx_rapidjab"));
        }
    }
}
gravity_speed = float_gravity_speed[in_float];

with hit_fx_obj if player_id == other {
    if hit_fx == other.vfx_holyhit_m || hit_fx == other.vfx_holyhit_l {
        depth = player_id.depth+1;
    }
}

