

if get_gameplay_time() == 90 && get_player_color(player) == 16 {
	

	set_article_color_slot( 0, 255, 211, 0 ); //Energy
    set_article_color_slot( 1, 255, 226, 158 ); //Skin
    set_article_color_slot( 2, 255, 142, 110 ); //Skinshade
    set_article_color_slot( 3, 204, 166, 0 ); //Hair
    set_article_color_slot( 4, 0, 191, 0 ); //pant
    set_article_color_slot( 5, 0, 132, 255 ); //Eyes
    set_article_color_slot( 6, 250, 0, 0 ); //Shirt
    set_article_color_slot( 7, 255, 218, 41 ); //Shine
    
    if string_lower(get_player_name(player)) == "stand"{
    	

		
		set_character_color_slot( 0, 82, 40, 166 ); //Energy
        set_character_color_slot( 1, 175, 64, 230 ); //Skin
        set_character_color_slot( 2, 108, 36, 224 ); //Skinshade
        set_character_color_slot( 3, 28, 34, 125 ); //Hair
        set_character_color_slot( 4, 57, 28, 125 ); //pant
        set_character_color_slot( 5, 125, 50, 166 ); //Eyes
        set_character_color_slot( 6, 125, 50, 166 ); //Shirt
        set_character_color_slot( 7, 255, 23, 231 ); //Shine

        set_article_color_slot( 0, 82, 40, 166 ); //Energy
        set_article_color_slot( 1, 175, 64, 230 ); //Skin
        set_article_color_slot( 2, 108, 36, 224 ); //Skinshade
        set_article_color_slot( 3, 28, 34, 125 ); //Hair
        set_article_color_slot( 4, 57, 28, 125 ); //pant
        set_article_color_slot( 5, 125, 50, 166 ); //Eyes
        set_article_color_slot( 6, 255, 255, 255); //Shirt
        set_article_color_slot( 7, 255, 23, 231 ); //Shine

	}
	
	
	if string_lower(get_player_name(player)) == "sai" or string_lower(get_player_name(player)) == "cosmic"{
		set_character_color_slot( 0, 62, 6, 153 ); //Energy
        set_character_color_slot( 1, 9, 0, 13 ); //Skin
        set_character_color_slot( 2, 0, 0, 0 ); //Skinshade
        set_character_color_slot( 3, 12, 0, 18 ); //Hair
        set_character_color_slot( 4, 12, 0, 18 ); //pant
        set_character_color_slot( 5, 255, 255, 255 ); //Eyes
        set_character_color_slot( 6, 12, 0, 18 ); //Shirt
        set_character_color_slot( 7, 62, 6, 153 ); //Shine
        
        set_article_color_slot( 0, 62, 6, 153 ); //Energy
        set_article_color_slot( 1, 9, 0, 13 ); //Skin
        set_article_color_slot( 2, 0, 0, 0 ); //Skinshade
        set_article_color_slot( 3, 12, 0, 18 ); //Hair
        set_article_color_slot( 4, 12, 0, 18 ); //pant
        set_article_color_slot( 5, 255, 255, 255 ); //Eyes
        set_article_color_slot( 6, 12, 0, 18 ); //Shirt
        set_article_color_slot( 7, 62, 6, 153 ); //Shine
	}
	
	if string_lower(get_player_name(player)) == "ded" {
		set_character_color_slot( 0, 255, 55, 55 )
        set_character_color_slot( 1, 196, 143, 77 ); //Skin
        set_character_color_slot( 2, 161, 81, 63 ); //Skinshade
        set_character_color_slot( 3, 0, 0, 0 ); //Hair
        set_character_color_slot( 4, 5, 5, 5 ); //pant
        set_character_color_slot( 5, 8, 0, 163 ); //Eyes
        set_character_color_slot( 6, 71, 2, 2 ); //Shirt
        set_character_color_slot( 7, 82, 2, 2 ); //Shine
        
		set_article_color_slot( 0, 255, 55, 55 )
        set_article_color_slot( 1, 196, 143, 77 ); //Skin
        set_article_color_slot( 2, 161, 81, 63 ); //Skinshade
        set_article_color_slot( 3, 0, 0, 0 ); //Hair
        set_article_color_slot( 4, 5, 5, 5 ); //pant
        set_article_color_slot( 5, 8, 0, 163 ); //Eyes
        set_article_color_slot( 6, 71, 2, 2 ); //Shirt
        set_article_color_slot( 7, 82, 2, 2 ); //Shine
	}
	

}


if (get_player_color(player) == 16) {
    
    
}


if (get_player_color(player) == 11) {
    
    set_character_color_shading(4, 4)
    
    if uped == 1 {
        set_character_color_slot(3, 237, 190, 0);
        set_character_color_slot(5, 36, 191, 39);
        
        set_article_color_slot(3, 237, 190, 0);
        set_article_color_slot(5, 36, 191, 39);
    }
    
    if uped == 2 {
        set_character_color_slot(3, 255, 3, 37);
        set_character_color_slot(5, 255, 3, 37);
        
        set_article_color_slot(3, 255, 3, 37);
        set_article_color_slot(5, 255, 3, 37);
    }
    
    if uped == 3 {
        set_character_color_slot(3, 44, 232, 226);
        set_character_color_slot(5, 44, 232, 226);
        
        set_article_color_slot(3, 44, 232, 226);
        set_article_color_slot(5, 44, 232, 226);
    }
    
    if uped >= 4 {
        set_character_color_slot(3, 245, 245, 245);
        set_character_color_slot(5, 195, 232, 231);
        
        set_article_color_slot(3, 245, 245, 245);
        set_article_color_slot(5, 195, 232, 231);
    }
    

    
}



if (get_player_color(player) == 15) {
    if uped >= 4 {
        set_character_color_slot(1, 88, 60, 64);
        set_character_color_slot(2, 48, 34, 29);
    }
}



if (get_player_color(player) == 1) {
    
    set_character_color_shading(4, 4)
    
}


if (get_player_color(player) == 2) {
    
    set_character_color_shading(4, 2)
    
}

if (get_player_color(player) == 6) {
    
    set_character_color_shading(4, 4)
    
}


if (get_player_color(player) == 11) {
    
    set_character_color_shading(4, 3)
    
}

if (get_player_color(player) == 12) {
    
    set_character_color_shading(4, 3)
    
}

if (get_player_color(player) == 14) {
    
    set_character_color_shading(4, 3)
    
}