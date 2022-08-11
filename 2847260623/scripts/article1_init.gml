// static backgrounds
var sprite name = "";
var temp_para_x = 0;
var temp_para_y = 0;

death_check = 0;
glow = 0;
glow_timer = 0;

switch(depth){
	case 0: // Ground
		sprite_name = "ground";
		x_offset = 0;
		y_offset = 0;
		glow = 1;
		depth = 30;
		break;
	case 1: // BG3
		sprite_name = "bg3";
		temp_para_x = -.64;
		temp_para_y = -.58;
		x_offset = 244;
		y_offset = 121+64;
		glow = 1;
		depth = 36;
		break;
	case 2: // BG2
		sprite_name = "bg2";
		temp_para_x = -.88;
		temp_para_y = -.80;
		x_offset = 288;
		y_offset = 167+64
		glow = 1;
		depth = 38;
		break;
	case 3: // BG1
		sprite_name = "bg1";
		temp_para_x = -1;
		temp_para_y = -1;
		x_offset = 272;
		y_offset = 209+64;
		glow = 1;
		depth = 40;
		break;
	case 4: // FG1
		sprite_name = "fg1";
		temp_para_y = .20;
		x_offset = -128;
		y_offset = -42+64
		glow = 1;
		depth = 28;
		break;
	case 5: // Glow
		sprite_name = "glow";
		x_offset = -160;
		y_offset = 0;
		glow = 0.5;
		depth = 28;
		break;
}

parallax_x = temp_para_x;
parallax_y = temp_para_y;

time = 0;

if string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) != true || string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) != true || string_pos("SSL", get_char_info( 2, INFO_STR_NAME ) ) != true || string_pos("SSL", get_char_info( 3, INFO_STR_NAME ) ) != true {
	mode = 0;
}
if string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) == true && string_pos("SSL", get_char_info( 1, INFO_STR_NAME ) ) == true && string_pos("SSL", get_char_info( 2, INFO_STR_NAME ) ) == true && string_pos("SSL", get_char_info( 3, INFO_STR_NAME ) ) == true {
	mode = 1;
}

sprite_index = asset_get("empty_sprite");
sprite_drawn = sprite_get(sprite_name);