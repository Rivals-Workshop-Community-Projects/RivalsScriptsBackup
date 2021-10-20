hue_offset = hue_offset mod 255; //keeps hue_offset within the 0-255 range
hue_offset += hue_speed;

if (get_player_color( player ) == 19) {

	color_rgb = make_color_rgb(250, 150, 150); //input rgb values here, uses rgb to create a gamemaker colour variable
	hue = (color_get_hue(color_rgb) + hue_offset) mod 255; //finds the hue and shifts it
	color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	set_color_profile_slot(19, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
	set_color_profile_slot(19, 1, 450-color_get_red(color_hsv), 450-color_get_green(color_hsv), 450-color_get_blue(color_hsv));
	init_shader();
}

if( x < 150 || x > room_width-150 || y < 150 || y > room_height - 150)
	move_cooldown[AT_NSPECIAL] = 2;

if (dspecUsed)
	move_cooldown[AT_DSPECIAL] = 2;
if (!free || state == PS_WALL_JUMP)
	dspecUsed = false;
	
if (attack == AT_USPECIAL){
    if (vsp < 0)
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
    else    
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
}

if (state != PS_ATTACK_AIR || state != PS_ATTACK_AIR)
	air_accel = .25;
	
if (move_cooldown[AT_NSPECIAL] == 1 && portalParry){
	portalParry = false;
	sound_play(sound_get("TB_watered"));
	spawn_hit_fx(x+16, y-56, 19);
}

if (birbTimer >= 12){
	birbTimer = 0;
}
birbTimer ++;