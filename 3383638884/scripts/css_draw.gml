var alt_cur = get_player_color(player);

shader_end();
draw_sprite_ext(sprite_get("portrait_fix"), alt_cur, x + 50, y + 10, 2, 2, 0, c_white, 1);

//MunoPhone Touch
muno_event_type = 6; //css draw mostly in there
user_event(14);
/*
if(color_menu_open)
{
	draw_sprite_ext(sprite_get("_pho_colormenu_whitebox"), 0, x + 10, y + 10, 200, 142, 0, c_white, 0.5);

	draw_sprite_ext(sprite_get("_pho_colormenu_preview"), 0, x + 18, y + 38, 2, 2, 0, c_white, 1);
	n = 1;
	while(n<9)
	{
		draw_sprite_ext(sprite_get("_pho_colormenu_preview"), n, x + 18, y + 38, 2, 2, 0, make_color_rgb(slider_r[n]*255/68, slider_g[n]*255/68, slider_b[n]*255/68), 1);
		n++;
	}

	//color menu
	draw_sprite_ext(sprite_get("_pho_colormenu_back"), 0, x + 118, y + 48, 2, 2, 0, c_white, 0.6);
	draw_sprite_ext(sprite_get("_pho_colormenu_rim"), 0, x + 118, y + 48, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("_pho_colormenu_presets"), 0, x + 120, y + 38, 2, 2, 0, c_white, 1);

	if(color_preset_highlight > 0)
		draw_sprite_ext(sprite_get("_pho_colormenu_presets_highlight"), color_preset_highlight - 1, x + 114 + color_preset_highlight*6, y + 36, 2, 2, 0, c_white, 1);

	n = 1;
	while(n<9)
	{
		var cur_color = make_color_rgb(slider_r[n]*255/68, slider_g[n]*255/68, slider_b[n]*255/68);
		draw_sprite_ext(sprite_get("_pho_colormenu_whitebox"), 0, x + 104 + n*20 - (n>4)*80, y + 54 + (n>4)*20, 14, 14, 0, cur_color, 1);
		if(n == color_menu_cur_slot)
			draw_sprite_ext(sprite_get("_pho_colormenu_colorslot_highlight"), 0, x + 100 + n*20 - (n>4)*80, y + 50 + (n>4)*20, 2, 2, 0, c_white, 1);
		n++;
	}
	n = 0;
	while(n<3)
	{
		switch(n){
			case 0: var slider_x = slider_r[color_menu_cur_slot]; break;
			case 1: var slider_x = slider_g[color_menu_cur_slot]; break;
			case 2: var slider_x = slider_b[color_menu_cur_slot]; break;
		}
		draw_sprite_ext(sprite_get("_pho_colormenu_sliders"), n + (slider_held - 1 == n)*3, x + 124 + slider_x, y + 92 + n*10, 2, 2, 0, c_white, 1);

		n++;
	}
	draw_sprite_ext(sprite_get("_pho_colormenu_ok"), bucket_ok_pressed, x + 140, y + 128, 2, 2, 0, c_white, 1);
}
else
{
*/
	draw_sprite_ext(sprite_get("_pho_icon_shell"), 0, x + 18, y + 46, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("_pho_icon_color"), 0, x + 18, y + 46, 2, 2, 0, make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6)), 1);
	draw_sprite_ext(sprite_get("_pho_icon_shading"), 0, x + 18, y + 46, 2, 2, 0, make_color_rgb(get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)), 1);

	for (var cur = 0; cur < 4; cur++)
	{
		if(get_player_hud_color(cur+1) == $64e542) phone_online = true;
	}

	/*
	print_debug("[css_draw] Fake pep isonline = " + string(is_online));
	if(!is_online)
		draw_sprite_ext(sprite_get("_pho_icon_bucket"), bucket_ok_pressed || get_synced_var(player) == 1? 1 : 0, x + 24, y + 78, 2, 2, 0, c_white, 1);
}

//cursor coordinates
if(instance_exists(cursor_id))
{
	cur_x = get_instance_x(cursor_id);
	cur_y = get_instance_y(cursor_id);

	draw_debug_text(round(cur_x), round(cur_y - 22), string(cur_x - x));
	draw_debug_text(round(cur_x), round(cur_y - 10), string(cur_y - y));

	draw_debug_text(round(cur_x), round(cur_y + 50), string(cur_x));
	draw_debug_text(round(cur_x), round(cur_y + 62), string(cur_y));
}
*/