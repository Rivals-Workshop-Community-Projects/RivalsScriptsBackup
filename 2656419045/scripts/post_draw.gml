muno_event_type = 4; user_event(14);

//Invalid sprite catcher
if(neo_sprite == "char_undefined") {
	draw_set_halign(fa_left); draw_set_valign(fa_top);
	draw_set_colour(c_dkgray); draw_set_font(asset_get("medFont"));
	var draw_text = "", counteroo = 0;
	repeat(string_length(neo_sprite_old)) {
		counteroo++;
		draw_text += string_char_at(neo_sprite_old, counteroo) + " ";
	}
	draw_text_ext_transformed(x - 27, y - 59, draw_text, 20, 115, 0.5, 0.5, 0);
	draw_text_ext_transformed(x - 29, y - 59, draw_text, 20, 115, 0.5, 0.5, 0);
	draw_text_ext_transformed(x - 27, y - 61, draw_text, 20, 115, 0.5, 0.5, 0);
	draw_text_ext_transformed(x - 29, y - 61, draw_text, 20, 115, 0.5, 0.5, 0);
	draw_set_colour(c_white);
	draw_text_ext_transformed(x - 28, y - 60, draw_text, 20, 115, 0.5, 0.5, 0);
}

if(neo_data.starman_from_id == id && neo_data.starman_time > 0) {
	var rainbow_colour = make_colour_hsv((get_gameplay_time() * 4) % 255, 255, 255);
	
	gpu_set_fog(1, rainbow_colour, 0, 0);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (small_sprites + 1), small_sprites?2:1, spr_angle, image_blend, 0.6);
	gpu_set_fog(0, 0, 0, 0);
}

if(helpless_darken) {
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * 2, 2, spr_angle, c_black, 0.5);
}

if(neo_state == "Cutscene" && neo_substate == "Death" && spr_dir == 0) {
	shader_start();
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2, 2, spr_angle, c_white, 1.0);
	shader_end();
}

if(neo_state == "Respawn Plat") {
	draw_sprite_ext(ROULETTE_ENTRIES[roulette_slot].sprite, 0, x, y + 16, ROULETTE_ENTRIES[roulette_slot].sprite_scale, ROULETTE_ENTRIES[roulette_slot].sprite_scale, 0, c_white, 1.0);
	draw_sprite_ext(sprite_get("misc_roulette_plat"), 0, x, y + 16, 2, 2, 0, c_white, 1.0);
}

if(neo_state == "Final Smash Plat" && neo_substate != "Jumping") {
	if(neo_substate == "Charging") var platform_scale = 2 + (neo_substatetimer / 14);
	else {
		var platform_scale = 11;
		draw_sprite_ext(BIG_ROULETTE_ENTRIES[roulette_slot].sprite, 0, x, y + 4 * BIG_ROULETTE_ENTRIES[roulette_slot].sprite_scale * platform_scale, platform_scale, platform_scale, 0, c_white, 1.0);
	}
	draw_sprite_ext(sprite_get("misc_roulette_plat"), 0, x, y + 4 * BIG_ROULETTE_ENTRIES[roulette_slot].sprite_scale * platform_scale, platform_scale, platform_scale, 0, c_white, 1.0);
}

//Draw twirl/spin decals
switch(neo_animstate_checked) {
	case "twirl":
		draw_sprite_ext(sprite_get("decal_twirl_lines"), 0, x, y + neo_power_checked.size_profile.decal_lines_offset, 2, 2, spr_angle, c_white, decal_lines_alpha);
		if(vsp < 0) draw_sprite_ext(sprite_get("decal_twirl_blur"), 0, x, y + neo_power_checked.size_profile.decal_blur_offset, 2, 2, spr_angle, c_white, decal_blur_alpha);
	break;
	case "twirl2":
		draw_sprite_ext(sprite_get("decal_" + neo_power_checked.size_profile.twirl_lines_type + "_lines"), 0, x, y + neo_power_checked.size_profile.decal_lines_offset, 2, 2, spr_angle, c_white, decal_lines_alpha);
	break;
	case "spin":
		draw_sprite_ext(sprite_get("decal_spin_lines"), 0, x, y + neo_power_checked.size_profile.decal_lines_offset, 2, 2, spr_angle, c_white, decal_lines_alpha);
	break;
}

if(show_p_meter) {
	//Draw P Meter
	var p_meter_x = x - 47 - 16, p_meter_y = y + 10, p_meter_width = 47, p_flash_frame = (get_gameplay_time() % 8 < 4);
	draw_sprite_ext(sprite_get("hud_p_meter"), 0, p_meter_x, p_meter_y, 2, 2, 0, c_white, 1.0);
	draw_sprite_part_ext(sprite_get("hud_p_meter"), 1, 0, 0, p_speed * p_meter_width, 7, p_meter_x, p_meter_y, 2, 2, (p_flashing && p_flash_frame)?neo_data.hud_flash_colour:neo_data.hud_colour, 1.0);
	
	var p_button_x = x + 47 - 10, p_button_y = y + 10;
	draw_sprite_ext(sprite_get("hud_p_button"), p_flashing?1:0, p_button_x, p_button_y, 2, 2, 0, p_flashing?(p_flash_frame?neo_data.hud_flash_colour:neo_data.hud_colour):neo_data.hud_flash_colour, 1.0);
	if(p_flashing)
		draw_sprite_ext(sprite_get("hud_p_button"), 2, p_button_x, p_button_y, 2, 2, 0, c_white, 1.0);
}

//user_event(12);