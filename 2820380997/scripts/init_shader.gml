if(instance_exists(asset_get("cs_playercursor_obj"))){ exit;}
if(instance_exists(asset_get("stage_HUD"))){ exit;}
switch(get_player_color(player)) { 
    case 0:
        // Prevent extra shading on this alt.
        break;
    case 14: // Rainbox Alt from Dino
        rainbowAlt(3); // //Kimono Accent
        rainbowAlt(4); // //Sash and Anklet
        rainbowAlt(6); // //Soul Fire 1
  break;
  
    case 15: // Smashland from Iroh
    	for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
    	outline_color = [ 35, 67, 49 ];
    	break;
    default: // All other alts
        //fset_character_color_shading(1, 2) // Set hair to be shaded at 2x
        set_character_color_shading(2, 2) // Set kimono to be shaded at 2x
    break;
}

#define rainbowAlt(profileNum)
    set_character_color_slot( argument[0], color_r, color_g, color_b);
    set_article_color_slot(argument[0], color_r, color_g, color_b);