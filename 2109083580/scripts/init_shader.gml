//early access alt
switch (get_player_color(player))
{
	case 7:
		for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
		outline_color = [ 35, 67, 49 ];
		break;
	case 13:
		var temp_a = 0.6;
		var temp_r = get_color_profile_slot_r(13, 0);
		var temp_g = get_color_profile_slot_g(13, 0);
		var temp_b = get_color_profile_slot_b(13, 0);
		set_character_color_slot(0, temp_r, temp_g, temp_b, temp_a);
		set_article_color_slot(0, temp_r, temp_g, temp_b, temp_a);
		temp_r = get_color_profile_slot_r(13, 4);
		temp_g = get_color_profile_slot_g(13, 4);
		temp_b = get_color_profile_slot_b(13, 4);
		set_character_color_slot(4, temp_r, temp_g, temp_b, temp_a);
		set_article_color_slot(4, temp_r, temp_g, temp_b, temp_a);
		temp_r = get_color_profile_slot_r(13, 6);
		temp_g = get_color_profile_slot_g(13, 6);
		temp_b = get_color_profile_slot_b(13, 6);
		set_character_color_slot(6, temp_r, temp_g, temp_b, temp_a);
		set_article_color_slot(6, temp_r, temp_g, temp_b, temp_a);
		break;
}
//#region Sanguine Lightning Colour Palette

if("slActive" in self && slActive){
	// Skin
	set_color_profile_slot( 0, 5, 221, 45, 80 );
	
	// Alt Fur
	set_color_profile_slot( 0, 6, 252, 252, 211 );
	
	switch (get_player_color(player))
	{
	case 1:
		set_color_profile_slot( 1, 5, 243, 58, 211 ); //Skin
		set_color_profile_slot( 1, 6, 252, 211, 251 ); //Alt Fur
	break;
	case 2:
		set_color_profile_slot( 2, 5, 221, 45, 80 ); //Skin
		set_color_profile_slot( 2, 6, 240, 175, 172 ); //Alt Fur
	break;
	case 3:
		set_color_profile_slot( 3, 5, 204, 254, 54 ); //Skin
		set_color_profile_slot( 3, 6, 197, 224, 167 ); //Alt Fur
	break;
	case 4:
		set_color_profile_slot( 4, 5, 247, 233, 254 ); //Skin
		set_color_profile_slot( 4, 6, 179, 158, 180 ); //Alt Fur
	break;
	case 5:
		set_color_profile_slot( 5, 5, 221, 45, 80 ); //Skin
		set_color_profile_slot( 5, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 6:
		set_color_profile_slot( 6, 5, 238, 23, 136 ); //Skin
		set_color_profile_slot( 6, 6, 125, 103, 173 ); //Alt Fur
	break;
	case 7:
		set_color_profile_slot( 7, 5, 167, 186, 74 ); //Skin
		set_color_profile_slot( 7, 6, 211, 226, 154 ); //Alt Fur
	break;
	case 8:
		set_color_profile_slot( 8, 5, 221, 45, 80 ); //Skin
		set_color_profile_slot( 8, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 9:
		set_color_profile_slot( 9, 5, 239, 69, 69 ); //Skin
		set_color_profile_slot( 9, 6, 198, 209, 223 ); //Alt Fur
	break;
	case 10:
		set_color_profile_slot( 10, 5, 206, 0, 0 ); //Skin
		set_color_profile_slot( 10, 6, 222, 206, 156 ); //Alt Fur
	break;
	case 11:
		set_color_profile_slot( 11, 5, 221, 45, 80 ); //Skin
		set_color_profile_slot( 11, 6, 236, 247, 255 ); //Alt Fur
	break;
	case 12:
		set_color_profile_slot( 12, 5, 74, 228, 255 ); //Skin
		set_color_profile_slot( 12, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 13:
		//set_color_profile_slot( 13, 5, 254, 225, 69 ); //Skin
		//set_color_profile_slot( 13, 6, 242, 250, 171 ); //Alt Fur
		set_color_profile_slot( 13, 5, 153, 116, 196 ); //Skin
		set_color_profile_slot( 13, 6, 253, 195, 245 ); //Alt Fur
	break;
	case 14:
		set_color_profile_slot( 14, 5, 254, 137, 157 ); //Skin
		set_color_profile_slot( 14, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 15:
		set_color_profile_slot( 15, 5, 255, 255, 255 ); //Skin
		set_color_profile_slot( 15, 6, 243, 84, 116 ); //Alt Fur
	break;
	case 16:
		set_color_profile_slot( 16, 5, 177, 239, 242 ); //Alt Fur
		set_color_profile_slot( 16, 6, 168, 255, 250 ); //Skin
	break;
	case 17:
		set_color_profile_slot( 17, 5, 255, 195, 158 ); //Alt Fur 2
		set_color_profile_slot( 17, 6, 255, 160, 59 ); //Skin 2
	break;
	case 18:
		set_color_profile_slot( 18, 5, 254, 225, 69 ); //Skin
		set_color_profile_slot( 18, 6, 242, 250, 171 ); //Alt Fur
	break;
	default:
	break;
	}
}
else{	
	// Skin
	set_color_profile_slot( 0, 5, 219, 119, 101 );
	
	// Alt Fur
	set_color_profile_slot( 0, 6, 253, 253, 253 );
	
	switch (get_player_color(player))
	{
	case 1:
		set_color_profile_slot( 1, 5, 219, 119, 101 ); //Skin
		set_color_profile_slot( 1, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 2:
		set_color_profile_slot( 2, 5, 230, 157, 145 ); //Skin
		set_color_profile_slot( 2, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 3:
		set_color_profile_slot( 3, 5, 221, 218, 100 ); //Skin
		set_color_profile_slot( 3, 6, 235, 245, 197 ); //Alt Fur
	break;
	case 4:
		set_color_profile_slot( 4, 5, 221, 45, 80 ); //Skin
		set_color_profile_slot( 4, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 5:
		set_color_profile_slot( 5, 5, 140, 77, 149 ); //Skin
		set_color_profile_slot( 5, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 6:
		set_color_profile_slot( 6, 5, 245, 103, 221 ); //Skin
		set_color_profile_slot( 6, 6, 245, 175, 226 ); //Alt Fur
	break;
	case 7:
		set_color_profile_slot( 7, 5, 83, 122, 62 ); //Skin
		set_color_profile_slot( 7, 6, 211, 226, 154 ); //Alt Fur
	break;
	case 8:
		set_color_profile_slot( 8, 5, 166, 150, 177 ); //Skin
		set_color_profile_slot( 8, 6, 228, 224, 233 ); //Alt Fur
	break;
	case 9:
		set_color_profile_slot( 9, 5, 220, 114, 143 ); //Skin
		set_color_profile_slot( 9, 6, 198, 209, 223 ); //Alt Fur
	break;
	case 10:
		set_color_profile_slot( 10, 5, 219, 119, 101 ); //Skin
		set_color_profile_slot( 10, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 11:
		set_color_profile_slot( 11, 5, 166, 150, 177 ); //Skin
		set_color_profile_slot( 11, 6, 204, 194, 209 ); //Alt Fur
	break;
	case 12:
		set_color_profile_slot( 12, 5, 176, 130, 204 ); //Skin
		set_color_profile_slot( 12, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 13:
		set_color_profile_slot( 13, 5, 116, 141, 196 ); //Skin
		set_color_profile_slot( 13, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 14:
		set_color_profile_slot( 14, 5, 222, 204, 143 ); //Skin
		set_color_profile_slot( 14, 6, 245, 237, 205 ); //Alt Fur
	break;
	case 15:
		set_color_profile_slot( 15, 5, 174, 142, 172 ); //Skin
		set_color_profile_slot( 15, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 16:
		set_color_profile_slot( 16, 5, 61, 127, 242 ); //Skin
		set_color_profile_slot( 16, 6, 247, 248, 250 ); //Alt Fur
	break;
	case 17:
		set_color_profile_slot( 17, 5, 185, 70, 70 ); //Skin
		set_color_profile_slot( 17, 6, 255, 230, 210 ); //Alt Fur
	break;
	case 18:
		set_color_profile_slot( 18, 5, 242, 250, 171 ); //Skin
		set_color_profile_slot( 18, 6, 253, 253, 253 ); //Alt Fur
	break;
	default:
	break;
	}
}