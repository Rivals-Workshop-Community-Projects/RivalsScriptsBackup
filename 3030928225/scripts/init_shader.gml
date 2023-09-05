//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 2: //Alive
        set_character_color_shading(2, 2);
        break;
        
    case 7: //Purple Haze
    	set_character_color_shading(2, 0.8);
    	break;
    	
    case 8: //General
    	set_character_color_shading(2, 0.7);
    	break
    	
    case 8: //Veggie
    	set_character_color_shading(2, 1.2);
    	break;
    	
    case 9: //Beetlejuice
    	set_character_color_shading(6, 0.4);
    	break;
    	
    case 13: //Fast Food
    	set_character_color_shading(2, 1.5);
    	set_character_color_shading(4, 1.8);
    	set_character_color_shading(6, 1.5);
    	break;
    	
    case 17: //Winning
    	set_character_color_shading(0, 0.5);
    	set_character_color_shading(4, 0.5);
    	set_character_color_shading(5, 0.5);
    	break;
    	
    case 19: //Valya
    	set_character_color_shading(1, 0.6);
    	break;
    	
    case 20: //Error
    	set_character_color_shading(2, 4);
    	set_character_color_shading(6, 4);
    	set_character_color_shading(7, 4);
}