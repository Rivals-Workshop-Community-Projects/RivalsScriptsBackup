//
is_frog = false;
switch(url){
    case CH_ZETTERBURN:
    frog_color1 = 255;
    frog_color2 = 127;
    frog_color3 = 0;
    break;
    case CH_FORSBURN:
    frog_color1 = 76;
    frog_color2 = 72;
    frog_color3 = 72;
    break;
    case CH_CLAIREN:
    frog_color1 = 196;
    frog_color2 = 68;
    frog_color3 = 166;
    break;
    case CH_MOLLO:
    frog_color1 = 244;
    frog_color2 = 212;
    frog_color3 = 173;
    break;
    case CH_ORCANE:
    frog_color1 = 59;
    frog_color2 = 73;
    frog_color3 = 135;
    break;
    case CH_ETALUS:
    frog_color1 = 180;
    frog_color2 = 230;
    frog_color3 = 230;
    break;
    case CH_RANNO:
    frog_color1 = 182;
    frog_color2 = 244;
    frog_color3 = 48;
    break;
    case CH_HODAN:
    frog_color1 = 231;
    frog_color2 = 84;
    frog_color3 = 84;
    break;
    case CH_KRAGG:
    frog_color1 = 187;
    frog_color2 = 155;
    frog_color3 = 143;
    break;
    case CH_MAYPUL:
    frog_color1 = 108;
    frog_color2 = 155;
    frog_color3 = 113;
    break;
    case CH_SYLVANOS:
    frog_color1 = 126;
    frog_color2 = 167;
    frog_color3 = 87;
    break;
    case CH_OLYMPIA:
    frog_color1 = 184;
    frog_color2 = 128;
    frog_color3 = 83;
    break;
    case CH_WRASTOR:
    frog_color1 = 168;
    frog_color2 = 87;
    frog_color3 = 143;
    break;
    case CH_ABSA:
    frog_color1 = 120;
    frog_color2 = 121;
    frog_color3 = 161;
    break;
    case CH_ELLIANA:
    frog_color1 = 175;
    frog_color2 = 145;
    frog_color3 = 200;    
    break;
    case CH_POMME:
    frog_color1 = 251;
    frog_color2 = 234;
    frog_color3 = 244;  
    break;
    case CH_ORI:
    frog_color1 = 253;
    frog_color2 = 253;
    frog_color3 = 253; 
    break;
    case CH_SHOVEL_KNIGHT:
    frog_color1 = 58;
    frog_color2 = 210;
    frog_color3 = 228; 
    break;
    default:
    frog_color1 = get_color_profile_slot_r( get_player_color(player), 0);
    frog_color2 = get_color_profile_slot_g( get_player_color(player), 0);
    frog_color3 = get_color_profile_slot_b( get_player_color(player), 0);
    break;
}