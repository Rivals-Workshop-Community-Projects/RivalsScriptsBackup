//init shader

/*
//Image Mask
if  (get_player_color(player) == 1) { 
    if("start_predraw" in self) && start_predraw{
    set_character_color_slot( 0, 0, 0, 0, 0); 
    set_article_color_slot( 0, 0, 0, 0, 0); 
    }
}
*/

switch (get_player_color(player)){
    case 0: //default
        set_character_color_slot(4, 82, 82, 82); //boots/gloves
        set_character_color_slot(5, 218, 123, 30); //rabbit
        set_character_color_slot(6, 190, 82, 10); //rabbit shading
    break;
    case 1: //green
    case 6:
    //case 7:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 18:
    case 20:
    case 22:
    case 23:
    case 24:
        set_character_color_shading(1, 0.6);
    break;
    case 25:
        set_character_color_shading(4, 1.5);
        set_character_color_shading(7, 1.3);
    break;
}