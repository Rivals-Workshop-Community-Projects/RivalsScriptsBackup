var alt_cur = get_player_color(player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    case 0:
        set_character_color_slot(2, 239, 179, 51);
        set_article_color_slot(2, 239, 179, 51);
    break;
    case 7:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
		outline_color = [11, 27, 35];
    break;
    case 28:
        outline_color = [21, 35, 65];
    break;
    case 31:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
    break;
}
   