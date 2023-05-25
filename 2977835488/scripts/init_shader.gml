//#region Local Variables
//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
//#endregion

switch (alt_cur) {
    case 0:
        set_character_color_slot(3, 243, 247, 255);
        set_article_color_slot(3, 243, 247, 255);
    break;
   
    case 29:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
		outline_color = [234, 220, 255];
    break;
    case 30:
        for(i = 0; i <= 7; i++){
            set_character_color_shading(i, 0);
        }
		outline_color = [255, 0, 0];
    break;
}
   