//

if (get_player_color(player) == 5) && "color_hsv" in self{

    
    set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

}


if "karma" in self {
    if get_gameplay_time() == 90 && get_player_color(player) == 10  {
        

        
        set_article_color_slot( 0, 0, 255, 0 ); //eyes
        set_article_color_slot( 1, 0, 255, 0 ); //mainwhite
        set_article_color_slot( 2, 0, 255, 0 ); //black
        set_article_color_slot( 3, 0, 255, 0 ); //hair?
        set_article_color_slot( 4, 0, 255, 0 ); //ears?
        set_article_color_slot( 5, 0, 255, 0 ); //tight
        set_article_color_slot( 6, 0, 255, 0 ); //unnamed color row

	    if string_lower(get_player_name(player)) == "bee" {
	    	set_article_color_slot( 0, 255, 168, 204 ); //Hair
            set_article_color_slot( 1, 255, 255, 255 ); //Fur
            set_article_color_slot( 2, 255, 224, 229 ); //Sword
            set_article_color_slot( 3, 255, 173, 243 ); //Sword Shading
            set_article_color_slot( 4, 255, 212, 250 ); //Clothe
            set_article_color_slot( 5, 255, 0, 179 ); //Eyes
            set_article_color_slot( 6, 255, 0, 179 ); //Eyes
    
	    }
	    
	    if string_lower(get_player_name(player)) == "sai" {
	    	set_article_color_slot( 0, 255, 168, 204 ); //Hair
            set_article_color_slot( 1, 255, 255, 255 ); //Fur
            set_article_color_slot( 2, 255, 224, 229 ); //Sword
            set_article_color_slot( 3, 255, 173, 243 ); //Sword Shading
            set_article_color_slot( 4, 255, 212, 250 ); //Clothe
            set_article_color_slot( 5, 255, 0, 179 ); //Eyes
            set_article_color_slot( 6, 255, 0, 179 ); //Eyes
	    }
	
	
        
    }
}
