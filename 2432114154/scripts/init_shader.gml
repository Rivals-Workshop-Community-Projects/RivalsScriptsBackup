if "cheapmode" in self {
if cheapmode != 3 {





} else {
    set_character_color_slot( 0, 255, 13, 13 ); //Energy
    set_character_color_slot( 1, 28, 28, 28 ); //Top shading
    set_character_color_slot( 2, 54, 54, 54 ); //Top
    set_character_color_slot( 3, 247, 247, 247 ); //Pattern1
    set_character_color_slot( 4, 204, 204, 204 ); //Pattern2
    set_character_color_slot( 5, 33, 33, 33 ); //Dark parts
    set_character_color_slot( 6, 255, 255, 255 ); //Fur
    set_character_color_slot( 7, 178, 177, 182 ); //Fur shading
    
    set_article_color_slot( 0, 255, 13, 13 ); //Energy
    set_article_color_slot( 1, 28, 28, 28 ); //Top shading
    set_article_color_slot( 2, 54, 54, 54 ); //Top
    set_article_color_slot( 3, 247, 247, 247 ); //Pattern1
    set_article_color_slot( 4, 204, 204, 204 ); //Pattern2
    set_article_color_slot( 5, 33, 33, 33 ); //Dark parts
    set_article_color_slot( 6, 255, 255, 255 ); //Fur
    set_article_color_slot( 7, 178, 177, 182 ); //Fur shading
    
    
}



  if get_gameplay_time() == 120 && get_player_color(player) == 28  {
        

        
	set_article_color_slot( 0, 0, 241, 255 );
    set_article_color_slot( 1, 26, 36, 22 );
    set_article_color_slot( 2, 39, 59, 32 );
    set_article_color_slot( 3, 116, 173, 36 );
    set_article_color_slot( 4, 53, 73, 26 );
    set_article_color_slot( 5, 24, 33, 36 );
    set_article_color_slot( 6, 255, 255, 255 );
    set_article_color_slot( 7, 178, 177, 182 );
    	
    	if string_lower(get_player_name(player)) == "cam" {
    	  set_character_color_slot( 0, 255, 126, 0 ); //Energy
          set_character_color_slot( 1, 158, 158, 158 ); //Top shading
          set_character_color_slot( 2, 201, 201, 201 ); //Top
          set_character_color_slot( 3, 168, 0, 67 ); //Pattern1
          set_character_color_slot( 4, 103, 164, 224 ); //Pattern2
          set_character_color_slot( 5, 26, 61, 102 ); //Dark parts
          set_character_color_slot( 6, 148, 99, 87 ); //Fur
          set_character_color_slot( 7, 133, 75, 60 ); //Fur shading
          
    	  set_article_color_slot( 0, 255, 126, 0 ); //Energy
          set_article_color_slot( 1, 158, 158, 158 ); //Top shading
          set_article_color_slot( 2, 201, 201, 201 ); //Top
          set_article_color_slot( 3, 168, 0, 67 ); //Pattern1
          set_article_color_slot( 4, 103, 164, 224 ); //Pattern2
          set_article_color_slot( 5, 26, 61, 102 ); //Dark parts
          set_article_color_slot( 6, 148, 99, 87 ); //Fur
          set_article_color_slot( 7, 133, 75, 60 ); //Fur shading
    	}
    	
    	if string_lower(get_player_name(player)) == "blue" {
    	  set_character_color_slot( 0, 0, 241, 255 ); //Energy
          set_character_color_slot( 1, 191, 100, 127 ); //Top shading
          set_character_color_slot( 2, 245, 169, 184 ); //Top
          set_character_color_slot( 3, 255, 220, 255 ); //Pattern1
          set_character_color_slot( 4, 255, 200, 240 ); //Pattern2
          set_character_color_slot( 5, 91, 206, 250 ); //Dark parts
          set_character_color_slot( 6, 255, 255, 255 ); //Fur
          set_character_color_slot( 7, 178, 177, 182 ); //Fur shading
          
          set_article_color_slot( 0, 0, 241, 255 ); //Energy
          set_article_color_slot( 1, 191, 100, 127 ); //Top shading
          set_article_color_slot( 2, 245, 169, 184 ); //Top
          set_article_color_slot( 3, 255, 220, 255 ); //Pattern1
          set_article_color_slot( 4, 255, 200, 240 ); //Pattern2
          set_article_color_slot( 5, 91, 206, 250 ); //Dark parts
          set_article_color_slot( 6, 255, 255, 255 ); //Fur
          set_article_color_slot( 7, 178, 177, 182 ); //Fur shading
    	}
    	
	
	
	
        
    }
    
}