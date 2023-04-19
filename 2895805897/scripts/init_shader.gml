//init_shader.gml

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0: //default
        break;
    case 1: //in-game
        outline_color = [53, 84, 27];
        break;
    case 3: //dream
        outline_color = [138, 40, 173];
        break;
    case 4: //defeated melon
        outline_color = [255, 255, 255];
        break;
    case 12: //edgy melon
        outline_color = [90, 0, 0];
        break;
    case 14: //wise mystical tree
    	if (le_stinkeyBingus == false) {
	        set_character_color_slot(0, 133, 95, 57, 0);
	        set_character_color_slot(1, 51, 39, 42, 0);
	        set_character_color_slot(2, 79, 52, 47, 0);
	        set_character_color_slot(3, 23, 21, 22, 0);
    	}
        break;
    case 17: //virtual boy
        //for(i = 0; i <= 7; i++){
        //    set_character_color_shading(i, 0);
        //}
		outline_color = [61, 0, 0];
        break;
    case 19: //milestone ;)
    	if (le_stinkeyBingus == false) {
	        set_character_color_slot(0, 255, 255, 255, 0);
	        set_character_color_slot(1, 142, 189, 216, 0);
	        set_character_color_slot(2, 255, 255, 255, 0);
	        set_character_color_slot(3, 142, 189, 216, 0);
    	}
        break;
    case 16: //markimelon
    	if (le_stinkeyBingus == false) {
        set_character_color_slot(0, 233, 167, 109, 0);
        set_character_color_slot(1, 217, 136, 82, 0);
        set_character_color_slot(2, 233, 167, 109, 0);
        set_character_color_slot(3, 217, 136, 82, 0);
	    }
        break;
    case 15: //maurice
    	if (le_stinkeyBingus == false) {
        set_character_color_slot(0, 109, 94, 74, 0);
        set_character_color_slot(1, 84, 83, 75, 0);
        set_character_color_slot(2, 109, 94, 74, 0);
        set_character_color_slot(3, 64, 64, 64, 0);
    	}
        break;
    //case 19:
    //    for(i = 0; i <= 7; i++){
    //        set_character_color_shading(i, 0);
    //    }
	//	outline_color = [23, 15, 15];
    //    break;
}