if "supply" in self {
    if get_gameplay_time() == 50 && get_player_color(player) == 13  {
        

        
        set_article_color_slot( 0, 255, 213, 0 ); //unnamed color row
        set_article_color_slot( 1, 255, 255, 255 ); //unnamed color row
        set_article_color_slot( 2, 121, 121, 121 ); //unnamed color row
        set_article_color_slot( 3, 189, 189, 189 ); //unnamed color row
        set_article_color_slot( 4, 171, 141, 0 ); //unnamed color row
        set_article_color_slot( 5, 121, 100, 0 ); //unnamed color row
        set_article_color_slot( 6, 255, 0, 0 ); //unnamed color row
        set_article_color_slot( 7, 168, 0, 0 ); //unnamed color row
    	
    	if string_lower(get_player_name(player)) == "sharpi" {

            set_article_color_slot( 0, 242, 255, 242 ); //unnamed color row
            set_article_color_slot( 1, 255, 255, 255 ); //unnamed color row
            set_article_color_slot( 2, 121, 121, 121 ); //unnamed color row
            set_article_color_slot( 3, 0, 255, 0 ); //ignore me
            set_article_color_slot( 4, 199, 255, 199 ); //ignore me
            set_article_color_slot( 5, 130, 140, 130 ); //unnamed color row
            set_article_color_slot( 6, 135, 145, 135 ); //unnamed color row
            set_article_color_slot( 7, 247, 255, 247 ); //unnamed color row
    	}
	
	    if string_lower(get_player_name(player)) == "sai" {

	         set_article_color_slot( 0, 56, 105, 23 ); //unnamed color row
             set_article_color_slot( 1, 255, 255, 255 ); //unnamed color row
             set_article_color_slot( 2, 170, 163, 212 ); //unnamed color row
             set_article_color_slot( 3, 170, 163, 212 ); //unnamed color row
             set_article_color_slot( 4, 52, 39, 56 ); //unnamed color row
             set_article_color_slot( 5, 12, 56, 38 ); //unnamed color row
             set_article_color_slot( 6, 255, 255, 255 ); //unnamed color row
             set_article_color_slot( 7, 171, 142, 168 ); //unnamed color row
    	}
	
	
        
    }
}