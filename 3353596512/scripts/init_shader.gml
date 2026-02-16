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

// SQUIDWORT
if (variable_instance_exists(id, "extra_col")){
    if (extra_col == 1){
        set_character_color_slot(0, 229, 159, 0 ); //suit
        set_character_color_slot(1, 209, 136, 0 ); //suit shading
        set_character_color_slot(2, 203, 226, 208 ); //mask
        set_character_color_slot(3, 149, 201, 185 ); //mask shading
        set_character_color_slot(4, 149, 201, 185 ); //boots/gloves
        set_character_color_slot(5, 229, 159, 0 ); //rabbit
        set_character_color_slot(6, 209, 136, 0 ); //rabbit shading
        set_character_color_slot(7, 254, 250, 203 ); //visor
        reset_shading();
    }
}



#define reset_shading()
    set_character_color_shading(1, 1);
    set_character_color_shading(2, 1);
    set_character_color_shading(3, 1);
    set_character_color_shading(4, 1);
    set_character_color_shading(5, 1);
    set_character_color_shading(6, 1);
    set_character_color_shading(7, 1);
