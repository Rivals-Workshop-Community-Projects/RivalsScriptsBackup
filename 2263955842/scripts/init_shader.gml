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
if (get_player_color(player) == 16){
    set_color_profile_slot_range(7, 10, 26, 7)
    set_color_profile_slot_range(2, 24, 11, 19); //HAIR 
    
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
    outline_color = [35, 67, 49];
    
}
else
{
    set_color_profile_slot_range(2, 24, 10, 10); //HAIR 
    set_color_profile_slot_range(7, 0, 0, 0); //PINK
}