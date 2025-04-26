switch(get_player_color("onlineCSS" in self && onlineCSS ? 0 : player)) {
    case 0:
        set_character_color_slot( 7, 255, 245, 255 ); //fix dress color
    break;
    case 1: //seija ajies Alt Fix
         set_character_color_shading(7,0.6); 
    break;
    case 3: //hina Alt Fix
         set_character_color_shading(7,0.4); 
         set_character_color_shading(1,1.5); 
    break;
    case 4: //letty Alt Fix
         set_character_color_shading(1,1.5); 
    break;
    case 5: //suika Alt Fix
         set_character_color_shading(7,0.7); 
    break;
    case 6: //Yamame Alt Fix
         set_character_color_shading(7,0.6); 
    break;
    case 7: //Ryoku Alt Fix
         set_character_color_shading(7,0.6); 
    break;
    case 8: //Farewell
        for (var i = 0; i < 8; i += 1)
        {
             set_character_color_shading(i,0); 
        }
    break;
}