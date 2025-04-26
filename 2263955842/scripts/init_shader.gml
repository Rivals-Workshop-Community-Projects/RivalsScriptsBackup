//init_shader

switch (get_player_color(player)) {
    case 3: //Sanae Alt Fix
         set_character_color_shading(2,2); 
    break;
    case 8: //Cirno Alt Fix
         set_character_color_shading(2,2); 
    break;
    case 12: //Yuuto Alt Fix
        set_character_color_shading(2,-1.3); 
        // Makes Yuuto's hair shading look
        // better.
    break;
    
}


//set_character_color_shading(7,10); 


//early access alt 
