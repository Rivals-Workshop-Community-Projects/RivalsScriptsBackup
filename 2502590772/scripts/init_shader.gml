//init_shader.gml
var alt_clr = get_player_color("online_css" in self ? 0 : player);



switch (alt_clr) {
    case 0:
        set_color_slot( 3, 251, 219, 149 );
    break;
    case 29:
        set_character_color_shading( 0, -1 );
        //set_character_color_shading( 1, 0 );
        //set_character_color_shading( 2, 0 );
        set_character_color_shading( 3, -1 );
        //set_character_color_shading( 4, 0 );
        //set_character_color_shading( 5, 0 );
        //set_character_color_shading( 6, 0 );
        //set_character_color_shading( 7, 0 );
        set_character_color_slot(0, 219, 48, 90, 0.8);
        set_character_color_slot(3, 35, 185, 185, 0.8);
    break;
    case 30:
    case 31:
    /*
        set_character_color_slot( 0, 255, 229, 181 );
        set_character_color_slot( 1, 255, 122, 122 );
        set_character_color_slot( 2, 202,  45,  31 );
        set_character_color_slot( 3, 255, 211, 181 );
        set_character_color_slot( 4,  95, 179, 237 );
        set_character_color_slot( 5,  83, 113, 237 );
        */
        set_color_slot( 0, 255, 229, 181 );
        set_color_slot( 1, 255, 122, 122 );
        set_color_slot( 2, 202,  45,  31 );
        set_color_slot( 3, 251, 219, 149 ); //
        set_color_slot( 4,  95, 179, 237 );
        set_color_slot( 5,  83, 113, 237 );
        
        
    break;
    
    
}

if (alt_clr == 0) { 
  
}

if (alt_clr == 29) {

}


#define set_color_slot
var shade_slot = argument[0], 
    r = argument[1], 
    g = argument[2], 
    b = argument[3], 
    a = argument_count > 4 ? argument[4]: 1;
set_character_color_slot( shade_slot, r, g, b, a );
set_article_color_slot( shade_slot, r, g, b, a );