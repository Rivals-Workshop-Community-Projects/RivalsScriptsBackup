switch (string_upper(get_player_name(player)))
{
	default:
		// Riptide
		set_color_profile_slot( 31, 0, 254, 184, 0 ); //Scarf
		set_color_profile_slot( 31, 1, 0, 199, 218 ); //Fur tone
		set_color_profile_slot( 31, 2, 242, 228, 214 ); //Fur tone2
		set_color_profile_slot( 31, 3, 218, 93, 0 ); //Eye
		set_color_profile_slot( 31, 4, 254, 184, 0 ); //Eye2
		set_color_profile_slot( 31, 5, 50, 77, 120 ); //Limbs
		set_color_profile_slot( 31, 6, 12, 25, 58 ); //Limbs2
		break;
	case "LUKARU":
	case "KARU":
		// Sky High
		set_color_profile_slot( 31, 0, 255, 255, 128 ); //Scarf
		set_color_profile_slot( 31, 1, 130, 224, 245 ); //Fur tone
		set_color_profile_slot( 31, 2, 255, 255, 255 ); //Fur tone2
		set_color_profile_slot( 31, 3, 219, 53, 130 ); //Eye
		set_color_profile_slot( 31, 4, 252, 149, 196 ); //Eye2
		set_color_profile_slot( 31, 5, 85, 101, 207 ); //Limbs
		set_color_profile_slot( 31, 6, 76, 65, 181 ); //Limbs2
		break;
	case "AURORA":
	case "AURO<3":
		// Fel Spark
		set_color_profile_slot( 31, 0, 212, 59, 145 ); //Scarf
		set_color_profile_slot( 31, 1, 71, 54, 66 ); //Fur tone
		set_color_profile_slot( 31, 2, 138, 119, 126 ); //Fur tone2
		set_color_profile_slot( 31, 3, 86, 191, 252 ); //Eye
		set_color_profile_slot( 31, 4, 255, 255, 255 ); //Eye2
		set_color_profile_slot( 31, 5, 212, 161, 190 ); //Limbs
		set_color_profile_slot( 31, 6, 138, 103, 136 ); //Limbs2
		break;
}