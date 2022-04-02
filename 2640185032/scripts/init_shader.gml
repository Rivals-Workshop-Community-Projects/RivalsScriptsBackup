//init shhhhhhhhhhhhhhhhhhhh
if  (get_player_color(player) == 16) {
    set_character_color_slot( 6, 232, 0, 0, 0.2);
    set_article_color_slot( 6, 232, 0, 0, 0.2);
    set_character_color_slot( 7, 158, 0, 0, 0.2);
    set_article_color_slot( 7, 158, 0, 0, 0.2);

}

if("alt_select" in self && alt_select > -1){
    
    switch(alt_select){
        
        //True 23
        case 0:
            set_character_color_slot( 0, 236, 140, 255 ); //ice main
            set_character_color_slot( 1, 248, 212, 255 ); //ice light
            set_character_color_slot( 2, 185, 92, 204 ); //ice dark
            set_character_color_slot( 3, 141, 61, 158 ); //ice darkest
            set_character_color_slot( 4, 107, 58, 135 ); //body main
            set_character_color_slot( 5, 63, 28, 82 ); //body dark
            set_character_color_slot( 6, 255, 122, 209 ); //scarf main
            set_character_color_slot( 7, 166, 60, 128 ); //scarf dark
            set_article_color_slot( 0, 236, 140, 255 ); //ice main
            set_article_color_slot( 1, 248, 212, 255 ); //ice light
            set_article_color_slot( 2, 185, 92, 204 ); //ice dark
            set_article_color_slot( 3, 141, 61, 158 ); //ice darkest
            set_article_color_slot( 4, 107, 58, 135 ); //body main
            set_article_color_slot( 5, 63, 28, 82 ); //body dark
            set_article_color_slot( 6, 255, 122, 209 ); //scarf main
            set_article_color_slot( 7, 166, 60, 128 ); //scarf dark
            break;
        
        //Parasol
        case 1:
            set_character_color_slot( 0, 255, 59, 59 ); //ice main
            set_character_color_slot( 1, 255, 128, 128 ); //ice light
            set_character_color_slot( 2, 205, 0, 42 ); //ice dark
            set_character_color_slot( 3, 138, 0, 0 ); //ice darkest
            set_character_color_slot( 4, 239, 213, 24 ); //body main
            set_character_color_slot( 5, 191, 147, 10 ); //body dark
            set_character_color_slot( 6, 255, 255, 255 ); //scarf main
            set_character_color_slot( 7, 176, 176, 176 ); //scarf dark
            set_article_color_slot( 0, 255, 59, 59 ); //ice main
            set_article_color_slot( 1, 255, 128, 128 ); //ice light
            set_article_color_slot( 2, 205, 0, 42 ); //ice dark
            set_article_color_slot( 3, 138, 0, 0 ); //ice darkest
            set_article_color_slot( 4, 239, 213, 24 ); //body main
            set_article_color_slot( 5, 191, 147, 10 ); //body dark
            set_article_color_slot( 6, 255, 255, 255 ); //scarf main
            set_article_color_slot( 7, 176, 176, 176 ); //scarf dark
            break;
        
        //Kerkyeion
        case 2:
            set_character_color_slot( 0, 37, 214, 255 ); //ice main
            set_character_color_slot( 1, 195, 232, 254 ); //ice light
            set_character_color_slot( 2, 30, 136, 242 ); //ice dark
            set_character_color_slot( 3, 30, 77, 179 ); //ice darkest
            set_character_color_slot( 4, 66, 65, 92 ); //body main
            set_character_color_slot( 5, 32, 33, 69 ); //body dark
            set_character_color_slot( 6, 254, 254, 254 ); //scarf main
            set_character_color_slot( 7, 184, 180, 213 ); //scarf dark
            set_article_color_slot( 0, 37, 214, 255 ); //ice main
            set_article_color_slot( 1, 195, 232, 254 ); //ice light
            set_article_color_slot( 2, 30, 136, 242 ); //ice dark
            set_article_color_slot( 3, 30, 77, 179 ); //ice darkest
            set_article_color_slot( 4, 66, 65, 92 ); //body main
            set_article_color_slot( 5, 32, 33, 69 ); //body dark
            set_article_color_slot( 6, 254, 254, 254 ); //scarf main
            set_article_color_slot( 7, 184, 180, 213 ); //scarf dark
            break;
            
        //Chimera
        case 3:
            set_character_color_slot( 0, 48, 227, 131 ); //ice main
            set_character_color_slot( 1, 173, 255, 192 ); //ice light
            set_character_color_slot( 2, 38, 145, 100 ); //ice dark
            set_character_color_slot( 3, 14, 102, 65 ); //ice darkest
            set_character_color_slot( 4, 40, 80, 82 ); //body main
            set_character_color_slot( 5, 23, 52, 54 ); //body dark
            set_character_color_slot( 6, 0, 255, 117 ); //scarf main
            set_character_color_slot( 7, 0, 158, 73 ); //scarf dark
            set_article_color_slot( 0, 48, 227, 131 ); //ice main
            set_article_color_slot( 1, 173, 255, 192 ); //ice light
            set_article_color_slot( 2, 38, 145, 100 ); //ice dark
            set_article_color_slot( 3, 14, 102, 65 ); //ice darkest
            set_article_color_slot( 4, 40, 80, 82 ); //body main
            set_article_color_slot( 5, 23, 52, 54 ); //body dark
            set_article_color_slot( 6, 0, 255, 117 ); //scarf main
            set_article_color_slot( 7, 0, 158, 73 ); //scarf dark
            break;

    }
    
}