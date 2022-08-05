if (dragon_active)
{
	stage_x = get_stage_data( SD_X_POS );
	stage_y = get_stage_data( SD_Y_POS );
	draw_sprite_ext(sprite_get("blackdrop"), wish_index, view_get_wview() / 2, (view_get_hview() / 2) + 155, 0.33, 0.33, 0, c_white, 1 );
	draw_sprite_ext(sprite_get("wish_input"), wish_index, view_get_wview() / 2, (view_get_hview() / 2) + 150, 3, 3, 0, c_white, 1 );
	draw_debug_text((view_get_wview() / 2) - 16, (view_get_hview() / 2) + 75, string_format(wishing_time / 60, 2, 2))
	if (get_match_setting(SET_STOCKS) != 0 && get_match_setting(SET_PRACTICE) == false)
	{
		draw_debug_text((view_get_wview() / 2) - 38, (view_get_hview() / 2) + 100, "Extra Stock")
	}
	draw_debug_text((view_get_wview() / 2) - 38, (view_get_hview() / 2) + 200, "Immortality")
	draw_debug_text((view_get_wview() / 2) - 32 - 120, (view_get_hview() / 2) + 150, "Hyper Strongs")
	draw_debug_text((view_get_wview() / 2) - 32 + 100, (view_get_hview() / 2) + 150, "+5 Jumps")
}
else if (dragon_summoning)
{
	//draw_sprite_ext(sprite_get("super_one_star"), 0, view_get_wview() / 2, (view_get_hview()) + 99 - summon_progress * 25, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("super_two_star"), 0, (view_get_wview() / 2) + 567 / 2, (view_get_hview()) + 45 * 3 - summon_progress * 27, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("super_three_star"), 0, (view_get_wview() / 2) -234 / 2, (view_get_hview()) + 99 * 3 - summon_progress * 21, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("super_four_star"), 0, (view_get_wview() / 2) + 834 / 2, (view_get_hview()) + 66 * 3 - summon_progress * 19, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("super_five_star"), 0, (view_get_wview() / 2) - 785 / 2, (view_get_hview()) + 155 * 3 - summon_progress * 23, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("super_six_star"), 0, (view_get_wview() / 2) + 700 / 2, (view_get_hview()) + 125 * 3 - summon_progress * 17, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(sprite_get("super_seven_star"), 0, (view_get_wview() / 2) - 535 / 2, (view_get_hview()) + 90 * 3 - summon_progress * 22, 1, 1, 0, c_white, 1);
	
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) - 450 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 33, 60 ) - 120, 0.5, 0.5, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_red, 1);
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) - 225 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 27, 60 ) - 60, 1, 1, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_orange, 1);
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) - 333 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 30, 60 ) + 60, 0.825, 0.825, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_lime, 1);
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) - 650 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 36, 60 ) + 20, 0.825, 0.825, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_blue, 1);
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) + 250 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 24, 60 ) + 25, 0.825, 0.825, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_fuchsia, 1);
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) + 650 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 36, 60 ) + 22, 0.825, 0.825, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_aqua, 1);
	draw_sprite_ext(sprite_get("super_star"), 0, (view_get_wview() / 2) + 450 / 2, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, 0.5, 0.5, ease_cubeInOut( view_get_hview() * 0.5, view_get_hview() * -2, summon_progress - 26, 60 ) - 100, c_yellow, 1);
}