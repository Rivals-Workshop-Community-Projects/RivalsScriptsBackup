with (oPlayer){
	if (hit_player_obj != noone){
		if (hit_player_obj.activated_kill_effect){
			with (asset_get("pHitBox")){
				if (player == other.player){
					if (attack == AT_DSPECIAL){
						destroyed = true;
					}
				}
			}
		}
	}
}


if (attack == AT_FSPECIAL && fspec_teleporting){
	prat_land_time = fspec_teleport_prat_land;
}
else{
	prat_land_time = regular_prat_land;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	grabbed = -4;
}

if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    move_cooldown[AT_USPECIAL] = 0;
}

if (url != 2849669092){
	player = -1;
	spawn_hit_fx(x,y,0);
}

//rainbow alt stuff
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 214, 64, 64 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 17, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 17, 1, color_get_red(color_hsv),color_get_green(color_hsv) - 25,color_get_blue(color_hsv) + 25); //uses that variable to set the slot's new colours
set_color_profile_slot( 17, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 17, 7, color_get_red(color_hsv),color_get_green(color_hsv) + 50,color_get_blue(color_hsv) - 50); //uses that variable to set the slot's new colours
init_shader();