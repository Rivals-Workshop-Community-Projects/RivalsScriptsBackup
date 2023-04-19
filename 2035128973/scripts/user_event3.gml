switch (string_upper(get_player_name(player)))
{
	default:
		// bunny
		set_color_profile_slot( 30, 0, 155, 99, 68 ); //Fur1
		set_color_profile_slot( 30, 1, 121, 67, 29 ); //Fur2
		set_color_profile_slot( 30, 2, 219, 231, 238 ); //AltFur1
		set_color_profile_slot( 30, 3, 96, 136, 160 ); //AltFur2
		set_color_profile_slot( 30, 4, 241, 227, 126 ); //Mask1
		set_color_profile_slot( 30, 5, 195, 151, 62 ); //Mask2
		set_color_profile_slot( 30, 6, 121, 67, 29 ); //Eye
		set_color_profile_slot( 30, 7, 147, 196, 227 ); //Spike
		break;
	case "KARU":
	case "LUKARU":
		// input delay
		set_color_profile_slot( 30, 0, 82, 72, 162 ); //Fur1
		set_color_profile_slot( 30, 1, 71, 26, 130 ); //Fur2
		set_color_profile_slot( 30, 2, 173, 96, 140 ); //AltFur1
		set_color_profile_slot( 30, 3, 143, 60, 85 ); //AltFur2
		set_color_profile_slot( 30, 4, 153, 242, 255 ); //Mask1
		set_color_profile_slot( 30, 5, 227, 153, 255 ); //Mask2
		set_color_profile_slot( 30, 6, 237, 207, 55 ); //Eye
		set_color_profile_slot( 30, 7, 227, 153, 255 ); //Spike
		break;
	case "AURORA":
	case "AURO<3":
		// Aurora
		set_color_profile_slot( 30, 0, 80, 80, 107 ); //Fur1
		set_color_profile_slot( 30, 1, 44, 34, 69 ); //Fur2
		set_color_profile_slot( 30, 2, 212, 227, 255 ); //AltFur1
		set_color_profile_slot( 30, 3, 166, 128, 250 ); //AltFur2
		set_color_profile_slot( 30, 4, 237, 243, 216 ); //Mask1
		set_color_profile_slot( 30, 5, 255, 175, 255 ); //Mask2
		set_color_profile_slot( 30, 6, 220, 204, 240 ); //Eye
		set_color_profile_slot( 30, 7, 164, 124, 213 ); //Spike
		break;
	case "NIGHT":
		// Surprising!
		set_color_profile_slot( 30, 0, 42, 210, 207 ); //Fur1
		set_color_profile_slot( 30, 1, 22, 115, 158 ); //Fur2
		set_color_profile_slot( 30, 2, 18, 182, 201 ); //AltFur1
		set_color_profile_slot( 30, 3, 12, 86, 150 ); //AltFur2
		set_color_profile_slot( 30, 4, 106, 104, 154 ); //Mask1
		set_color_profile_slot( 30, 5, 78, 64, 110 ); //Mask2
		set_color_profile_slot( 30, 6, 222, 40, 40 ); //Eye
		set_color_profile_slot( 30, 7, 191, 106, 214 ); //Spike
		break;
}