//draw_hud - the x position of your HUD element is 48*(i-1)
if(!variable_instance_exists(self, "patch_ver"))
{
	patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR));
	patch_day = "WIP";
	patch_month = "- Sirc";
}
textDraw(temp_x + 24, temp_y + 40, "fName", c_white, 0, 1000, 0.5, false, 1, patch_ver);

//Debug draw
if(variable_instance_exists(self, "phone_cheats") && phone_cheats[CHEAT_DEBUG] == 1)
{
	var vx = temp_x + 5;
	var vy = temp_y - 240;
	
	draw_debug_text(vx, vy, "HSP, VSP: " + string_format(hsp, 3, 4) + ", " + string_format(vsp, 3, 4));
	
    draw_debug_text(vx, vy + 20, "X, Y: " + string(x) + ", " + string(y));
	
	draw_debug_text(vx, vy + 40, "DSH: " + string(in_dash_jumpsquat + 2 * in_dash_shorthop));
    draw_debug_text(vx + 100, vy + 40, "Free: " + string(!free * ground_type));

    draw_debug_text(vx, vy + 60, "State: " + string(get_state_name(state)) + " (" + string(state) + ")");

    draw_debug_text(vx, vy + 80, "State Timer: " + string(state_timer));
	
	draw_debug_text(vx, vy + 100, "Current Sprite: " + current_sprite + " (" + string((image_index % (sprite_get_number(current_sprite_ref) / 8))) + ")");
	
	draw_debug_text(vx + 100, vy + 120, "Window: " + string(window) + " (" + string(window_timer) + ")");
    draw_debug_text(vx, vy + 120, "Attack: " + string(attack));
	
	draw_debug_text(vx, vy + 140, "#NSp: " + string(nspecial_current_projectiles));
	
	/*
	draw_debug_text(vx, vy + 140, "Last: " + string((last_image_index % (sprite_get_number(current_sprite_ref) / 8))));
	draw_debug_text(vx + 100, vy + 140, "Match: " + string((match_image_index % (sprite_get_number(current_sprite_ref) / 8))));
    draw_debug_text(vx, vy + 160, "Meat: F" + string(disabled_fspecial) + " U" + string(disabled_uspecial) + " N" + string(disabled_nspecial));
	draw_debug_text(vx, vy + 180, "Sac Lvl: " + string(sacrifice_level));
    
    draw_debug_text(vx + 100, vy + 180, "RP: " + string(restores_level) + "," + string(restores_left));

    draw_debug_text(vx, vy + 200, "DSp Choice: " + string(dspecial_selected));
	draw_debug_text(vx + 100, vy + 200, "Kills: " + string(vanda_total_kills));*/
}
else if(variable_instance_exists(self, "phone_cheats") && phone_cheats[CHEAT_DEBUG] == 2)
{
	var vx = temp_x + 5;
	var vy = temp_y - 240;
	
	if(get_gameplay_time() % perf_size == 0)
	{
		update_p = 0;
		attack_update_p = 0;
		animation_p = 0;
		pre_draw_p = 0;
		
		update_zeros = 0;
		attack_update_zeros = 0;
		animation_zeros = 0;
		pre_draw_zeros = 0;
		for(var i = 0; i < perf_size; i++)
		{
			update_p += update_perf[|i];
			attack_update_p += attack_update_perf[|i];
			animation_p += animation_perf[|i];
			pre_draw_p += pre_draw_perf[|i];
			
			update_zeros += update_perf[|i] == 0;
			attack_update_zeros += attack_update_perf[|i] == 0;
			animation_zeros += animation_perf[|i] == 0;
			pre_draw_zeros += pre_draw_perf[|i] == 0;
		}
	}
	
	draw_debug_text(vx, vy + 100, "Processing Time (rolling " + string(perf_size) + "f avg)");
	draw_debug_text(vx, vy + 120, "Update: " + string_format(update_p / perf_size, 2, 3) + "ms (" + string(update_zeros) + ")");
	draw_debug_text(vx, vy + 140, "Attack Update: " + string_format(attack_update_p / perf_size, 2, 3) + "ms (" + string(attack_update_zeros) + ")");
	draw_debug_text(vx, vy + 160, "Pre-Draw: " + string_format(pre_draw_p / perf_size, 2, 3) + "ms (" + string(animation_zeros) + ")");
	draw_debug_text(vx, vy + 180, "Animation: " + string_format(animation_p / perf_size, 2, 3) + "ms (" + string(pre_draw_zeros) + ")");
	
	
	draw_debug_text(temp_x + 5, temp_y - 10, "Frame Drops: " + string(dropped_frames));
	
}

//Munophone Touch
{
	muno_event_type = 5;
	user_event(14);
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);