var alt = get_player_color(player)

//correcting the sprite 0's colors
switch alt{
    case 0://default
        set_character_color_slot( 4, 255, 139, 23, 1);
        set_character_color_slot( 7, 255, 33, 43, 1);
    break;
    
    //different building colors
    
    case 1://BLU
        set_article_color_slot( 1, 59, 145, 228, 1); //main reds 
    break;
    case 2://GRN
        set_article_color_slot( 1, 79, 179, 57, 1); //main reds
    break;
    case 3://YLW
        set_article_color_slot( 1, 204, 178, 0, 1); //main reds 
    break;
    case 4://TFC
        set_article_color_slot( 1, 62, 194, 214, 1); //main reds 
    break;
    case 5://Blu bot
        set_article_color_slot( 1, 149, 185, 237, 1); //main reds
    break;
    case 6://Red bot
        set_article_color_slot( 1, 189, 100, 100, 1); //main reds 
    break;
    case 7://Kitty0706
        set_article_color_slot( 1, 13, 62, 189, 1); //main reds 
    break;
    case 8://Emesis Blue
        set_article_color_slot( 1, 153, 142, 142, 1); //main redsrgb(153, 142, 142)
    break;
    case 9://Garden Warfare
        set_article_color_slot( 1, 159, 217, 72, 1); //main reds 
    break;
    case 10://Pizza Engineer
        set_article_color_slot( 1, 232, 180, 23, 1); //main reds
    break;
    case 11://Portly Plumber
        set_article_color_slot( 1, 9, 153, 58, 1); //main reds 
    break;
    case 12://Gordon Freeman
        set_article_color_slot( 1, 255, 174, 0, 1); //main reds 
    break;
    case 13://Steve
        set_article_color_slot( 1, 59, 243, 245, 1); //main reds 
    break;
    case 14://Nitori
        set_article_color_slot( 1, 255, 117, 151, 1); //main reds 
    break;
    case 15://Kris
        set_article_color_slot( 1, 242, 56, 107, 1); //main reds 
    break;
    case 16://Neko Arc
        set_article_color_slot( 1, 255, 251, 237, 1); //main reds
    break;
    case 17://Kragg
        set_article_color_slot( 1, 168, 130, 118, 1); //main reds
    break;
    case 18://Dazz
        set_article_color_slot( 1, 98, 0, 209, 1); //main reds
    break;
    case 19://King Coal
        set_article_color_slot( 1, 125, 7, 2, 1); //main reds
    break;
    case 20://Abyss
        set_article_color_slot( 1, 124, 15, 171, 1); //main reds
    break;
    case 21://Trans Rights
        set_article_color_slot( 1, 243, 110, 255, 1); //main reds
    break;
    case 22://Achievement
        set_article_color_slot( 1, 242, 94, 27, 1); //main reds 
    break;
    case 23://Renecup Dev Derby
        set_article_color_slot( 1, 102, 58, 86, 1); //main reds
    break;
    case 24://Engineer Gaming
        set_article_color_slot( 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv), 1); //main reds 
    break;
}
if alt == 10{//peppino's goggles and pants
    set_color_profile_slot( 0, 2, 141, 76, 69 );
    set_color_profile_slot_range( 2, 1, 1, 1 );
    set_color_profile_slot( 0, 1, 221, 42, 56 );
    set_color_profile_slot_range( 1, 23, 35, 62 );
} else{//sets it back to normal for the other alts
    set_color_profile_slot( 0, 2, 66, 35, 49 );
    set_color_profile_slot_range( 2, 34, 6, 30 );
    set_color_profile_slot( 0, 1, 221, 42, 56 );
    set_color_profile_slot_range( 1, 12, 34, 38 );
}

if get_player_color(player) == 22 {//achievement alt
    set_character_color_shading( 0, 0.25 );
    set_character_color_shading( 1, 0.50 );
    set_character_color_shading( 4, 0.25 );
}
