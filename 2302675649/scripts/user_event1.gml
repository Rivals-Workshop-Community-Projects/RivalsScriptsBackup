switch (string_upper(get_player_name(player)))
{
	default:
	if (string_upper(get_player_name(player)) == "HALLO"+chr(12354))
	{
		// redQuote
		set_color_profile_slot( 31, 0, 255, 48, 48 ); //sword
		set_color_profile_slot( 31, 1, 255, 48, 48 ); //shirt
		set_color_profile_slot( 31, 2, 179, 0, 47 ); //shirt2
		set_color_profile_slot( 31, 3, 255, 48, 48 ); //pants
		set_color_profile_slot( 31, 4, 179, 0, 47 ); //pants2
		set_color_profile_slot( 31, 5, 255, 48, 48 ); //skin
		set_color_profile_slot( 31, 6, 179, 0, 47 ); //skin2
		set_color_profile_slot( 31, 7, 179, 0, 47 ); //hair
		break;
	}
	else
	{
		// Riptide
		set_color_profile_slot( 31, 0, 0, 199, 218 ); //sword
		set_color_profile_slot( 31, 1, 254, 184, 0 ); //shirt
		set_color_profile_slot( 31, 2, 218, 93, 0 ); //shirt2
		set_color_profile_slot( 31, 3, 50, 77, 120 ); //pants
		set_color_profile_slot( 31, 4, 18, 37, 87 ); //pants2
		set_color_profile_slot( 31, 5, 242, 228, 214 ); //skin
		set_color_profile_slot( 31, 6, 194, 162, 153 ); //skin2
		set_color_profile_slot( 31, 7, 218, 93, 0 ); //hair
	}
	break;
	case "LUKARU":
	case "KARU":
	case "AURORA":
	case "AURO<3":
		// Aurora
		set_color_profile_slot( 31, 0, 166, 128, 250 ); //sword
		set_color_profile_slot( 31, 1, 237, 243, 216 ); //shirt
		set_color_profile_slot( 31, 2, 255, 175, 255 ); //shirt2
		set_color_profile_slot( 31, 3, 80, 80, 107 ); //pants
		set_color_profile_slot( 31, 4, 44, 34, 69 ); //pants2
		set_color_profile_slot( 31, 5, 220, 204, 240 ); //skin
		set_color_profile_slot( 31, 6, 164, 124, 213 ); //skin2
		set_color_profile_slot( 31, 7, 166, 128, 250 ); //hair
		break;
	case "CHISAN":
	case "UTA":
		// Endless Now
		set_color_profile_slot( 31, 0, 194, 1, 194 ); //sword
		set_color_profile_slot( 31, 1, 223, 182, 87 ); //shirt
		set_color_profile_slot( 31, 2, 168, 118, 55 ); //shirt2
		set_color_profile_slot( 31, 3, 82, 64, 44 ); //pants
		set_color_profile_slot( 31, 4, 54, 40, 29 ); //pants2
		set_color_profile_slot( 31, 5, 219, 202, 193 ); //skin
		set_color_profile_slot( 31, 6, 189, 167, 161 ); //skin2
		set_color_profile_slot( 31, 7, 43, 58, 84 ); //hair
		break;
	case "BLUE":
		// Blue Dragon
		set_color_profile_slot( 31, 0, 78, 238, 245 ); //sword
		set_color_profile_slot( 31, 1, 255, 255, 170 ); //shirt
		set_color_profile_slot( 31, 2, 230, 184, 131 ); //shirt2
		set_color_profile_slot( 31, 3, 55, 97, 181 ); //pants
		set_color_profile_slot( 31, 4, 49, 36, 158 ); //pants2
		set_color_profile_slot( 31, 5, 55, 97, 181 ); //skin
		set_color_profile_slot( 31, 6, 49, 36, 158 ); //skin2
		set_color_profile_slot( 31, 7, 243, 36, 76 ); //hair
		break;
}