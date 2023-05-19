var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

//init shader

//Image Mask
//if  (get_player_color(player) == 1) { 
//    if("start_predraw" in self) && start_predraw{
//    set_character_color_slot( 0, 0, 0, 0, 0); 
//    set_article_color_slot( 0, 0, 0, 0, 0); 
//    }
//}

//Base Colormap
if  (get_player_color(player) == 0) { 
    set_character_color_slot( 2, 235, 26, 26); //shirt
    set_article_color_slot( 0, 235, 26, 26);   //shirt
    
    set_character_color_slot ( 3, 9, 122, 227); //shoes
    set_article_color_slot ( 3, 9, 122, 54); //shoes
    
    set_character_color_slot ( 4, 150, 84, 54); //shoes
    set_article_color_slot ( 4, 150, 84, 54); //shoes
    
    set_character_color_slot ( 5, 255, 255, 255); //gloves
    set_article_color_slot ( 5, 255, 255, 255); //gloves
    
    set_character_color_slot ( 6, 255, 223, 40); //buttons
    set_article_color_slot ( 6, 255, 223, 40); //buttons
    
    set_character_color_slot ( 7, 255, 106, 0); //Fireball
    set_article_color_slot ( 7,  255, 106, 0); //Fireball

}

//Flying Mario
if (get_player_color( player ) == 4){ 
	set_character_color_shading(0, 0.64);
	set_character_color_shading(3, 0.64);
}