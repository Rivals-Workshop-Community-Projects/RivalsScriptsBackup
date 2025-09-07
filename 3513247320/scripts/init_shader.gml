if "last_shader_tick" not in self exit;
if last_shader_tick == get_gameplay_time() exit;
else last_shader_tick = get_gameplay_time();

alt = get_player_color(player);
alt_main_color = "NOTGRAY";

if room == 34 && get_gameplay_time() > 2 && alt != 0{
	for (var r = 0; r < 5; r++;) set_article_color_slot(r, get_color_profile_slot_r(alt, r + 8), get_color_profile_slot_g(alt, r + 8), get_color_profile_slot_b(alt, r + 8), 1);
}
if "accurate_megaman_alt" not in self{
	accurate_megaman_alt = 0;
	accurate_megaman_alt_prev = 0;
	accurate_megaman_timer = 0;
	accurate_megaman_flashlength = 10;
}

switch alt{
	case 7: case 20: case 22:
		alt_main_color = "GRAY";
	break;
	case 29:
		for (var i = 0; i < 8; i++;) set_character_color_shading(i, 0);
		alt_main_color = "GBA";
	break;
	case 31:
		accurate_megaman_timer--;
		if accurate_megaman_timer == round(accurate_megaman_flashlength / 2) for (var i = 0; i < 8; i++;) set_color_profile_slot(alt, i, get_color_profile_slot_r(accurate_megaman_alt, i), get_color_profile_slot_g(accurate_megaman_alt, i), get_color_profile_slot_b(accurate_megaman_alt, i));
	break;
}

set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));