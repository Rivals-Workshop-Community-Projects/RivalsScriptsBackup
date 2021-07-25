if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_USPECIAL] = 0;
}

var alt_cur = get_player_color(player);
if (state == PS_SPAWN && can_override){
    if (alt_cur == 6){
        if (!confirmed){
            if (up_stick_down){ //valentines
                seasonal_override = true;
                color_overriden = 1;
                init_shader();
            }
            if (right_stick_down){ //summer
                seasonal_override = true;
                color_overriden = 2;
                init_shader();
            }
            if (down_stick_down){ //halloween
                seasonal_override = true;
                color_overriden = 3;
                init_shader();
            }
            if (left_stick_down){ //christmas
                seasonal_override = true;
                color_overriden = 4;
                init_shader();
            }
            if (special_pressed){
                confirmed = true;
                sound_play(asset_get("mfx_star"));
            }
            
            if (state_timer == 90){
                if (seasonal_override == true){
                    sound_play(sound_get("doink"));
                }
                seasonal_override = false;
                can_override = false;
            }
        }
    }
}


//runes
if (has_rune("A")){
	set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 300);
    set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
}

if (has_rune("B")){
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);

    set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 3);
    set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 4);
    
    set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
}

if (has_rune("D")){
	max_djumps = 3;
}

if (url != 2274954061){
	player = -1;
	spawn_hit_fx(x,y,0);
}


if (has_rune("G")){
	set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 11);
	
	set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 11);
}

if (has_rune("I")){
	knockback_adj = .85;
}

if (has_rune("J")){
    set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -60);
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 160);
}




if (has_rune("M")){
	if (state == PS_LANDING_LAG && state_timer == 0){
	    if (!hitstop && !hitpause){
	        create_hitbox( AT_EXTRA_1, 1, x, y );
	    }
	}
}


//rainbow alt
hue+=1;
if (hue>255) {hue-=255;}

color_rgb=make_color_rgb( 23, 230, 129 ); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot( 11, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();

color_rgb=make_color_rgb( 23, 230, 129 ); 
hue2=(color_get_hue(color_rgb)+hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
set_color_profile_slot( 11, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
init_shader();