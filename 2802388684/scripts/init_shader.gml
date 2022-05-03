//init_shader.gml
var alt_clr = get_player_color("online_css" in self ? 0 : player);

switch (alt_clr) {
	case 0:
	case 11:
	case 21:
		if ("state" not in self || state != PS_PARRY || image_index != 1) {
		set_character_color_slot(1, 102, 102, 102, 1);
		set_character_color_slot(2, 221, 92, 0, 1);
		set_character_color_slot(3, 51, 51, 51, 1);
	}
	break;
}
