if (dragon_active == true || (disappear_progress < 300 && summon_progress > 240))
{
	//draw_sprite_ext(sprite_get("big_flying_nimbus"), 0, flying_nimbus_x, flying_nimbus_y, 0.75, 0.75, 0, c_white, 1)
	stage_x = get_stage_data( SD_X_POS );
	stage_y = get_stage_data( SD_Y_POS );
	stage_center_x = ease_linear(stage_x, room_width - stage_x, 1, 2)
	draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_black, 0.75);
	draw_sprite_ext( sprite_get("fufu_nova_pendulum"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), 100 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, cos(get_gameplay_time() / 60) * 25, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_things"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 2, 2, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_pupils"), 0,  ((player_x[wishing_player] - stage_center_x / 1) div 12) + stage_center_x, nova_height + ((player_y[wishing_player] - nova_height) div 12) + cos((get_gameplay_time() * -1) / 20) * 2, 2, 2, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	//draw_sprite_ext( sprite_get("nova_vane_eyes"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	//draw_sprite_ext( sprite_get("nova_big_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 114, -110 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time()), c_white, 1 )
	//draw_sprite_ext( sprite_get("nova_silver_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 60, -120 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time()), c_white, 1 )
	//draw_sprite_ext( sprite_get("nova_small_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 124, -90 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time() * -1), c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_big_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 114, -110 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time()), c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_silver_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 80, -120 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 2, 2, (get_gameplay_time()), c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_small_gear"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 124, -90 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time() * -1), c_white, 1 )
	//draw_sprite_ext( sprite_get("nova_wind_up_thingy"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 150, 0 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, cos(get_gameplay_time() / 30), 25, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_wind_up_thingy"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 150, 0 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 2, cos(get_gameplay_time() / 30) * 2, 25, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_eyelids_upper"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(nova_height, max(nova_height - 20, ease_linear(nova_height, nova_height - 20, summon_progress - 240, 120))) + cos((get_gameplay_time() * -1) / 20) * 2, 2, 2, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_eyelids_lower"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), min(nova_height + 20, max(nova_height, ease_linear(nova_height, nova_height + 20, summon_progress - 240, 120))) + cos((get_gameplay_time() * -1) / 20) * 2, 2, 2, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	//draw_sprite_ext( sprite_get("nova_face"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	//draw_sprite_ext( sprite_get("og_nova_face"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 4, 4, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_base"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 2, 2, cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_second_hand"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 113, 107 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time() * -1.5) - 45, c_white, 1 )
	draw_sprite_ext( sprite_get("fufu_nova_first_hand"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 113, 107 + nova_height + cos((get_gameplay_time() * -1) / 20) * 2, 1, 1, (get_gameplay_time()) - 45, c_white, 1 )draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, ease_linear(1, 0, summon_progress - 240, 60));
	if (safe_mode = false)
	{
		depth = 30
	}
	draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), max(0, ease_linear(0, 120, disappear_progress - 180, 120)), 120, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("flash"), 0, (ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 64) + ((player_x[wishing_player] - stage_center_x / 1) div 25), (nova_height - 16 + cos((get_gameplay_time() * -1) / 20) * 2) + ((player_y[wishing_player] - nova_height) div 25), max(0, ease_linear(0, 120, disappear_progress - 180, 120)), 120, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("flash"), 0, (ease_linear( stage_x, room_width - stage_x, 1, 2 ) + 64) + ((player_x[wishing_player] - stage_center_x / 1) div 25), (nova_height - 16 + cos((get_gameplay_time() * -1) / 20) * 2) + ((player_y[wishing_player] - nova_height) div 25), max(0, ease_linear(0, 120, disappear_progress - 180, 120)), 120, 0, c_white, 1);
	if (disappear_progress > 180)
	{
		shake_camera( 1, 2 )
	}
}
else if (disappear_progress >= 300 && disappear_progress < 420)
{
	draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, ease_linear(1, 0, disappear_progress - 300, 120));
}
else if (dragon_summoning == true)
{
	//draw_sprite_ext(sprite_get("big_flying_nimbus"), 0, flying_nimbus_x, flying_nimbus_y, 0.75, 0.75, 0, c_white, 1)
	stage_x = get_stage_data( SD_X_POS );
	stage_y = get_stage_data( SD_Y_POS );
	draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_black, min(ease_linear(0, 1, summon_progress, 30), 0.75));
	draw_sprite_ext(sprite_get("lightning"), get_gameplay_time() % 10, 0, nova_height - 25, 1, min(3, max(0, ease_expoIn(0, 2, max(0, summon_progress - 120), 60))), 90, c_white, 1);
	draw_sprite_ext(sprite_get("lightning"), get_gameplay_time() % 10, room_width, nova_height - 25, 1, -1 * min(3, max(0, ease_expoIn(0, 2, max(0, summon_progress - 120), 60))), 90, c_white, 1);
	star_distance = 240 - summon_progress
	star_distance = max(0, ease_circOut( 2500, 0, summon_progress, 240 ))
	star_size = ease_circOut( 2, 0, summon_progress, 300 )
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (0 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (0 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_red, 1)
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (1 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (1 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_orange, 1)
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (2 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (2 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_yellow, 1)
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (3 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (3 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_fuchsia, 1)
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (4 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (4 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_blue, 1)
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (5 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (5 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_aqua, 1)
	draw_sprite_ext(sprite_get("super_star"), 0, lengthdir_x(star_distance, (6 * 51.4285714286) + (3 * get_gameplay_time())) + (room_width / 2), lengthdir_y(star_distance, (6 * 51.4285714286) + (3 * get_gameplay_time())) + (nova_height), star_size, star_size, 0, c_lime, 1)
	draw_sprite_ext( sprite_get("nova_complete_white"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), nova_height + cos((get_gameplay_time() * -1) / 20) * 2, max(0, ease_expoIn(0, 1, max(0, summon_progress - 180), 60)), max(0, ease_expoIn(0, 1, max(0, summon_progress - 180), 60)), cos((get_gameplay_time() * -1) / 75) * 0, c_white, 1 )
	//draw_sprite_ext(sprite_get("shenron_summon_head"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ) - 10, summon_height - 380, 2, 2, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("shenron_summon_body"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), summon_height, 2, 2, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("shenron_summon_body"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), summon_height + 380, 2, 2, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("shenron_summon_body"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), summon_height + 760, 2, 2, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("shenron_summon_body"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), summon_height + 1140, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("flash"), 0, ease_linear( stage_x, room_width - stage_x, 1, 2 ), ease_linear( stage_y, room_height - stage_y, 1, 2 ), 120, 120, 0, c_white, ease_linear(0, 1, summon_progress - 180, 60));
	if (safe_mode = false)
	{
		depth = 30
	}
	if (summon_progress > 60)
	{
		shake_camera( 2, 2 )
	}
	
}
else
{
	//draw_sprite_ext(sprite_get("big_flying_nimbus"), 0, flying_nimbus_x, flying_nimbus_y, 0.75, 0.75, 0, c_white, 1)
	depth = 9
}