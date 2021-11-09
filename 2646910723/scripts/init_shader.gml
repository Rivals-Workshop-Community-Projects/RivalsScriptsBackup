



if "ragemode" in self {
    
    
    if get_player_color(player) != 10 && get_player_color(player) != 4 && get_player_color(player) != 8  
    && get_player_color(player) != 17{
        if ragemode == 0 {
                set_character_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_character_color_slot( 1, ar2, ag2, ab2 ); //Fur
                
                set_article_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_article_color_slot( 1, ar2, ag2, ab2 ); //Fur
                
        } else {
                set_character_color_slot( 7, ar4, ag4, ab4 ); //Energy - eyes
                set_character_color_slot( 1, ar1, ag1, ab1 ); //Fur
                
                set_article_color_slot( 7, ar4, ag4, ab4 ); //Energy - eyes
                set_article_color_slot( 1, ar1, ag1, ab1 ); //Fur                
        }
    }
    
    
    if get_player_color(player) == 17 {
        if ragemode == 0 {
                set_character_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_character_color_slot( 1, ar2, ag2, ab2 ); //Fur
                set_character_color_slot( 0, 28, 67, 163 ); //Fur
                 set_character_color_slot( 4, 0, 0, 0 ); //Fur             
                              
                set_article_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_article_color_slot( 1, ar2, ag2, ab2 ); //Fur
                set_article_color_slot( 0, 28, 67, 163 ); //Fur
                set_article_color_slot( 4, 0, 0, 0 ); //Fur
                
        } else {
                set_character_color_slot( 7, ar4, ag4, ab4 ); //Energy - eyes
                set_character_color_slot( 1, 255, 199, 43 ); //Fur
                set_character_color_slot( 0, 89, 233, 255 ); //Fur
                set_character_color_slot( 4, 156, 75, 0); //Fur  
                
                set_article_color_slot( 7, ar4, ag4, ab4 ); //Energy - eyes
                set_article_color_slot( 1, 255, 199, 43 ); //Fur    rgb(255, 199, 43)
                set_article_color_slot( 0, 89, 233, 255 ); //Fur
                set_article_color_slot( 4, 156, 75, 0 ); //Fur
        }
    }
    
    if get_player_color(player) == 4 {
        
        if ragemode == 0 {
              set_article_color_slot( 0, 135, 135, 135 ); //Energy - eyes
              set_article_color_slot( 1, 28, 28, 28 ); //Hair
              set_article_color_slot( 2, 84, 84, 84 ); //Coat
              set_article_color_slot( 3, 84, 84, 84 ); //Decor
              set_article_color_slot( 4, 0, 0, 0 ); //Line
              set_article_color_slot( 5, 171, 171, 171 ); //InnerCoat
              set_article_color_slot( 6, 255, 255, 255 ); //Skin
              set_article_color_slot( 7, 255, 255, 255 ); //Eye sub
              
              set_character_color_slot( 0, 135, 135, 135 ); //Energy - eyes
              set_character_color_slot( 1, 28, 28, 28 ); //Hair
              set_character_color_slot( 2, 84, 84, 84 ); //Coat
              set_character_color_slot( 3, 84, 84, 84 ); //Decor
              set_character_color_slot( 4, 0, 0, 0 ); //Line
              set_character_color_slot( 5, 171, 171, 171 ); //InnerCoat
              set_character_color_slot( 6, 255, 255, 255 ); //Skin
              set_character_color_slot( 7, 255, 255, 255 ); //Eye sub
        } else {
              set_article_color_slot( 0, 230, 21, 56 ); //Energy - eyes
              set_article_color_slot( 1, 242, 94, 120 ); //Hair
              set_article_color_slot( 2, 20, 46, 74 ); //Coat
              set_article_color_slot( 3, 94, 71, 40 ); //Decor
              set_article_color_slot( 4, 28, 0, 11 ); //Line
              set_article_color_slot( 5, 203, 202, 224 ); //InnerCoat
              set_article_color_slot( 6, 255, 206, 201 ); //Skin
              set_article_color_slot( 7, 255, 255, 255 ); //Eye sub
              
              set_character_color_slot( 0, 230, 21, 56 ); //Energy - eyes
              set_character_color_slot( 1, 242, 94, 120 ); //Hair
              set_character_color_slot( 2, 20, 46, 74 ); //Coat
              set_character_color_slot( 3, 94, 71, 40 ); //Decor
              set_character_color_slot( 4, 28, 0, 11 ); //Line
              set_character_color_slot( 5, 203, 202, 224 ); //InnerCoat
              set_character_color_slot( 6, 255, 206, 201 ); //Skin
              set_character_color_slot( 7, 255, 255, 255 ); //Eye sub
        }
        
    }
    
   if get_player_color(player) == 10 {
         if ragemode == 0 {
                set_character_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                
                set_article_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                
        } else {
                set_character_color_slot( 7, ar4, ag4, ab4 ); //Energy - eyes
                
                set_article_color_slot( 7, ar4, ag4, ab4 ); //Energy - eyes
     }
    }
    
    if get_player_color(player) == 8 {
         if ragemode == 0 {
                set_character_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_character_color_slot( 1, ar2, ag2, ab2 ); //Furrgb(245, 44, 44)
                set_character_color_slot( 0, 245, 44, 44 ); //Fur
                
                set_article_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_article_color_slot( 1, ar2, ag2, ab2 ); //Fur
                set_article_color_slot( 0, 245, 44, 44 ); //Fur
        } else {
                set_character_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_character_color_slot( 1, 240, 248, 255 ); //Fur
                set_character_color_slot( 0, 224, 255, 255 ); //Fur
                
                set_article_color_slot( 7, ar3, ag3, ab3 ); //Energy - eyes
                set_article_color_slot( 1, 240, 248, 255 ); //Fur
                set_article_color_slot( 0, 224, 255, 255 ); //Fur
       }
    }
    
    

}
