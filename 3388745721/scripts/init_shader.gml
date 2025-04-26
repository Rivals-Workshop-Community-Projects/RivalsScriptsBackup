var alt_cur = get_player_color(player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    //case 0:
        //set_character_color_slot(2, 239, 179, 51);
        //set_article_color_slot(2, 239, 179, 51);
    //break;
    //case 7:
        //for(i = 0; i <= 7; i++){
            //set_character_color_shading(i, 0);
        //}
		//outline_color = [11, 27, 35];
    //break;
    case 17:
        set_character_color_slot(3, 221, 221, 228, 0.45);
        set_article_color_slot(3, 221, 221, 228, 0.45);
    break;
    case 26:
    		set_character_color_shading(3, 0.3);
    		set_character_color_shading(4, 1.3);
    break;
    //case 28:
            //set_character_color_shading(2, 0.3);
            //set_character_color_shading(3, 0.3);
            //set_character_color_shading(5, 0.3);
            //set_character_color_shading(6, 0.3);
    //break;
}
   