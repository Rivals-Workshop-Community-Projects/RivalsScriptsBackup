//variables for flexibility
var pal_num = 0; //alt slot number

var col_dblue = 0;
var col_white = 1;
var col_hair = 2;
var col_skin = 3;
var col_lblue = 4;
var col_black = 5;
var col_light = 6;
var col_fire = 7;



//DEFAULT COLOR
set_color_profile_slot(pal_num, col_white, 206, 216, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 182, 88, 61); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
set_color_profile_slot(pal_num, col_lblue, 76, 144, 206); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 43, 60, 140); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 30, 26, 39); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 164, 247, 198); //LIGHT
set_color_profile_slot(pal_num, col_fire, 81, 210, 197); //FIRE

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(col_white, 13, 7, 15); //CLOTHWHITE
set_color_profile_slot_range(col_hair, 9, 11, 29); //HAIR
set_color_profile_slot_range(col_skin, 10, 20, 20); //SKIN
set_color_profile_slot_range(col_lblue, 2, 8, 14); //CLOTHLIGHTBLUE
set_color_profile_slot_range(col_dblue, 10, 4, 46); //CLOTHDARKBLUE
set_color_profile_slot_range(col_black, 15, 6, 6); //CLOTHBLACK
set_color_profile_slot_range(col_light, 10, 40, 16); //LIGHT
set_color_profile_slot_range(col_fire, 14, 36, 30); //FIRE


pal_num ++;
//P2 - SOPH
set_color_profile_slot(pal_num, col_white, 227, 217, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 76, 144, 206); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
set_color_profile_slot(pal_num, col_lblue, 193, 143, 113); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 182, 88, 61); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 38, 27, 31); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 150, 150, 150); //LIGHT
set_color_profile_slot(pal_num, col_fire, 90, 90, 90); //FIRE

pal_num ++;
//P3 - VENUS
set_color_profile_slot(pal_num, col_white, 227, 206, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 214, 164, 133); //HAIR
set_color_profile_slot(pal_num, col_skin, 253, 205, 176); //SKIN
set_color_profile_slot(pal_num, col_lblue, 191, 51, 118); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 139, 52, 118); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 54, 37, 52); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 159, 244); //LIGHT
set_color_profile_slot(pal_num, col_fire, 244, 119, 130); //FIRE

pal_num ++;
//P4 - LIAV
set_color_profile_slot(pal_num, col_white, 38, 36, 32); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 207, 154, 73); //HAIR
set_color_profile_slot(pal_num, col_skin, 210, 153, 134); //SKIN
set_color_profile_slot(pal_num, col_lblue, 242, 206, 83); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 38, 36, 32); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 227, 225, 203); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 159, 217, 255); //LIGHT
set_color_profile_slot(pal_num, col_fire, 206, 125, 227); //FIRE

//P4 - LIAV (OLD)
//set_color_profile_slot(pal_num, col_white, 218, 214, 186); //CLOTHWHITE

pal_num ++;
//P5 - ROY
set_color_profile_slot(pal_num, col_white, 121, 29, 49); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 52, 43, 48); //HAIR
set_color_profile_slot(pal_num, col_skin, 241, 164, 152); //SKIN
set_color_profile_slot(pal_num, col_lblue, 196, 64, 64); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 227, 211, 206); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 34, 68, 114); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 197, 159); //LIGHT
set_color_profile_slot(pal_num, col_fire, 206, 83, 69); //FIRE

//P5 - ROY (OLD)
/*
set_color_profile_slot(pal_num, col_white, 227, 211, 206); //CLOTHWHITE
set_color_profile_slot(pal_num, col_skin, 241, 164, 152); //SKIN
set_color_profile_slot(pal_num, col_dblue, 34, 68, 114); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 121, 29, 49); //CLOTHBLACK
*/

pal_num ++;
//P6 - ASRA
set_color_profile_slot(pal_num, col_white, 227, 209, 206); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 135, 81, 80); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 198, 155); //SKIN
set_color_profile_slot(pal_num, col_lblue, 147, 55, 44); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 111, 24, 35); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 56, 27, 43); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 73, 20, 28); //LIGHT
set_color_profile_slot(pal_num, col_fire, 170, 15, 46); //FIRE

pal_num ++;
//P7 - SAHAR
set_color_profile_slot(pal_num, col_white, 140, 105, 211); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 34, 30, 34); //HAIR
set_color_profile_slot(pal_num, col_skin, 186, 130, 114); //SKIN
set_color_profile_slot(pal_num, col_lblue, 126, 128, 137); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 66, 41, 105); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 34, 30, 34); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 42, 16, 128); //LIGHT
set_color_profile_slot(pal_num, col_fire, 70, 11, 93); //FIRE

/*
//P7 - SAHAR (OLD)
set_color_profile_slot(pal_num, col_white, 214, 206, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_lblue, 140, 105, 211); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_black, 86, 88, 97); //CLOTHBLACK
*/

pal_num ++;
//P8 - DAD
set_color_profile_slot(pal_num, col_white, 206, 227, 209); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 39, 48, 44); //HAIR
set_color_profile_slot(pal_num, col_skin, 196, 139, 122); //SKIN
set_color_profile_slot(pal_num, col_lblue, 65, 140, 68); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 12, 51, 28); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 69, 38, 16); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 167, 247, 164);//LIGHT
set_color_profile_slot(pal_num, col_fire, 35, 135, 118); //FIRE

pal_num ++;
//P9 - SHADOW
set_color_profile_slot(pal_num, col_white, 227, 212, 206); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 43, 37, 36); //HAIR
set_color_profile_slot(pal_num, col_skin, 222, 114, 89); //SKIN
set_color_profile_slot(pal_num, col_lblue, 181, 12, 33); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 43, 37, 36); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 43, 37, 36); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 115, 183, 235);//LIGHT (hero shadow)
set_color_profile_slot(pal_num, col_fire, 191, 20, 27); //FIRE (dark shadow)

pal_num ++;
//P10 - UNDERSWAP PAPYRUS
set_color_profile_slot(pal_num, col_white, 194, 88, 48); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 200, 179, 165); //HAIR
set_color_profile_slot(pal_num, col_skin, 228, 218, 204); //SKIN
set_color_profile_slot(pal_num, col_lblue, 172, 37, 6); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 169, 72, 4); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 43, 23, 16); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 196, 206, 209);//LIGHT
set_color_profile_slot(pal_num, col_fire, 224, 112, 18); //FIRE (bravery)
//set_color_profile_slot(pal_num, col_fire, 18, 217, 224); //FIRE (patience)

//P10 - UNDERSWAP PAPYRUS
//set_color_profile_slot(pal_num, col_white, 228, 218, 204); //CLOTHWHITE

pal_num ++;
//P11 - UTSUHO "OKUU" REIUJI
set_color_profile_slot(pal_num, col_white, 206, 227, 219); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 33, 45, 67); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
set_color_profile_slot(pal_num, col_lblue, 184, 33, 14); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 37, 142, 105); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 12, 26, 21); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 211, 65);//LIGHT
set_color_profile_slot(pal_num, col_fire, 224, 124, 69); //FIRE

pal_num ++;
//P12 - AIN
set_color_profile_slot(pal_num, col_white, 16, 212, 164); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 140, 153, 151); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
set_color_profile_slot(pal_num, col_lblue, 24, 108, 93); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 206, 227, 218); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 206, 227, 218); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 57, 230, 255); //LIGHT (creation)
set_color_profile_slot(pal_num, col_fire, 81, 196, 186); //FIRE (cycle)

//P12 - AIN (OLD)
/*
set_color_profile_slot(pal_num, col_white, 206, 227, 218); //CLOTHWHITE
set_color_profile_slot(pal_num, col_black, 8, 38, 52); //CLOTHBLACK
*/

pal_num ++;
//P13 - TARTAGLIA/CHILDE
set_color_profile_slot(pal_num, col_white, 206, 216, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 200, 81, 38); //HAIR
set_color_profile_slot(pal_num, col_skin, 250, 198, 161); //SKIN
set_color_profile_slot(pal_num, col_lblue, 158, 11, 33); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 109, 112, 109); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 83, 84, 100); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 79, 152, 237);//LIGHT (hydro)
set_color_profile_slot(pal_num, col_fire, 135, 51, 160); //FIRE (electro delusion)

pal_num ++;
//P14 - NERO
set_color_profile_slot(pal_num, col_white, 108, 16, 35); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 137, 143, 166); //HAIR
set_color_profile_slot(pal_num, col_skin, 229, 161, 128); //SKIN
set_color_profile_slot(pal_num, col_lblue, 108, 16, 35); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 28, 29, 84); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 24, 22, 29); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 231, 133, 41);//LIGHT
set_color_profile_slot(pal_num, col_fire, 46, 129, 208); //FIRE

//P14 - NERO (OLD)
//set_color_profile_slot(pal_num, col_white, 206, 216, 227); //CLOTHWHITE


pal_num ++;
//P15 - EARLY ACCESS
set_color_profile_slot(pal_num, col_white, 211, 226, 154); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 167, 186, 74); //HAIR
set_color_profile_slot(pal_num, col_skin, 211, 226, 154); //SKIN
set_color_profile_slot(pal_num, col_lblue, 167, 186, 74); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 83, 122, 62); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 83, 122, 62); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 211, 226, 154); //LIGHT
set_color_profile_slot(pal_num, col_fire, 83, 122, 62); //FIRE

pal_num ++;
//P16 - NES
set_color_profile_slot(pal_num, col_white, 255, 203, 186); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 227, 81, 0); //HAIR
set_color_profile_slot(pal_num, col_skin, 255, 203, 186); //SKIN
set_color_profile_slot(pal_num, col_lblue, 227, 81, 0); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 32, 0, 178); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 32, 0, 178); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 255, 255); //LIGHT
set_color_profile_slot(pal_num, col_fire, 97, 162, 255); //FIRE

pal_num ++;
//P17 - ABYSS
set_color_profile_slot(pal_num, col_white, 112, 125, 187); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 43, 35, 56); //HAIR
set_color_profile_slot(pal_num, col_skin, 64, 80, 123); //SKIN
set_color_profile_slot(pal_num, col_lblue, 149, 57, 202); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 43, 35, 56); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 23, 19, 25); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 173, 80, 203);//LIGHT
set_color_profile_slot(pal_num, col_fire, 173, 80, 203); //FIRE

pal_num ++;
//P18 - INFAMOUS
set_color_profile_slot(pal_num, col_white, 206, 227, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 70, 197, 166); //HAIR
set_color_profile_slot(pal_num, col_skin, 128, 169, 195); //SKIN
set_color_profile_slot(pal_num, col_lblue, 42, 200, 231); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 124, 70, 168); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 46, 45, 84); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 198, 109, 237);//LIGHT
set_color_profile_slot(pal_num, col_fire, 81, 210, 197); //FIRE

pal_num ++;
//P19 - GOLD RANK
set_color_profile_slot(pal_num, col_white, 218, 214, 186); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 255, 204, 16); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
set_color_profile_slot(pal_num, col_lblue, 110, 132, 184); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 255, 204, 16); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 133, 84, 50); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 252, 250, 97);//LIGHT
set_color_profile_slot(pal_num, col_fire, 164, 198, 209); //FIRE

pal_num ++;
//P20 - SEASONAL ALTS
//birthday alt logic is set in update.gml
switch(get_match_setting(SET_SEASON))
{
    case 1: //VALENTINE'S DAY
        set_color_profile_slot(pal_num, col_white, 227, 206, 217); //CLOTHWHITE
        set_color_profile_slot(pal_num, col_hair, 229, 98, 150); //HAIR
        set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
        set_color_profile_slot(pal_num, col_lblue, 185, 68, 139); //CLOTHLIGHTBLUE
        set_color_profile_slot(pal_num, col_dblue, 141, 8, 15); //CLOTHDARKBLUE
        set_color_profile_slot(pal_num, col_black, 52, 5, 24); //CLOTHBLACK
        set_color_profile_slot(pal_num, col_light, 255, 159, 244); //LIGHT (the same as venus)
        set_color_profile_slot(pal_num, col_fire, 175, 98, 130); //FIRE
        break;
        
    case 2: //SUMMER
        set_color_profile_slot(pal_num, col_white, 206, 216, 227); //CLOTHWHITE
        set_color_profile_slot(pal_num, col_hair, 205, 108, 65); //HAIR
        set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
        set_color_profile_slot(pal_num, col_lblue, 221, 181, 121); //CLOTHLIGHTBLUE
        set_color_profile_slot(pal_num, col_dblue, 76, 144, 206); //CLOTHDARKBLUE
        set_color_profile_slot(pal_num, col_black, 169, 60, 71); //CLOTHBLACK
        set_color_profile_slot(pal_num, col_light, 221, 181, 121); //LIGHT (yellow parts)
        set_color_profile_slot(pal_num, col_fire, 205, 108, 65); //FIRE (same as clothblack)
        break;
    
    case 3: //HALLOWEEN
        set_color_profile_slot(pal_num, col_white, 246, 240, 206); //CLOTHWHITE
        set_color_profile_slot(pal_num, col_hair, 156, 197, 235); //HAIR
        set_color_profile_slot(pal_num, col_skin, 172, 159, 146); //SKIN
        set_color_profile_slot(pal_num, col_lblue, 217, 199, 102); //CLOTHLIGHTBLUE
        set_color_profile_slot(pal_num, col_dblue, 73, 76, 208); //CLOTHDARKBLUE
        set_color_profile_slot(pal_num, col_black, 99, 76, 69); //CLOTHBLACK
        set_color_profile_slot(pal_num, col_light, 246, 240, 206); //LIGHT (same as clothwhite)
        set_color_profile_slot(pal_num, col_fire, 172, 159, 146); //FIRE (same as hair)
        break;
      
    case 4: //CHRISTMAS
        set_color_profile_slot(pal_num, col_white, 227, 208, 206); //CLOTHWHITE
        set_color_profile_slot(pal_num, col_hair, 227, 208, 206); //HAIR
        set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
        set_color_profile_slot(pal_num, col_lblue, 24, 108, 93); //CLOTHLIGHTBLUE
        set_color_profile_slot(pal_num, col_dblue, 141, 8, 15); //CLOTHDARKBLUE
        set_color_profile_slot(pal_num, col_black, 141, 8, 15); //CLOTHBLACK
        set_color_profile_slot(pal_num, col_light, 255, 200, 132); //LIGHT (same as theikos)
        set_color_profile_slot(pal_num, col_fire, 227, 208, 206); //FIRE (same as clothwhite)
        break;
}

pal_num ++;
//P21 - JURAMI
set_color_profile_slot(pal_num, col_white, 227, 212, 206); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 196, 7, 0); //HAIR
set_color_profile_slot(pal_num, col_skin, 180, 107, 82); //SKIN
set_color_profile_slot(pal_num, col_lblue, 239, 81, 28); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 32, 25, 45); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 32, 25, 45); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 200, 132); //LIGHT (blessing)
set_color_profile_slot(pal_num, col_fire, 94, 10, 0); //FIRE (curse)

pal_num ++;
//P22 - BAYSEN
set_color_profile_slot(pal_num, col_white, 26, 26, 53); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 156, 28, 45); //HAIR
set_color_profile_slot(pal_num, col_skin, 213, 130, 91); //SKIN
set_color_profile_slot(pal_num, col_lblue, 219, 179, 85); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 35, 47, 104); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 42, 31, 51); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 226, 168); //LIGHT (stars)
set_color_profile_slot(pal_num, col_fire, 50, 18, 147); //FIRE (space dust)

pal_num ++;
//P23 - SHIRO
set_color_profile_slot(pal_num, col_white, 227, 217, 206); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 179, 164, 155); //HAIR
set_color_profile_slot(pal_num, col_skin, 223, 149, 134); //SKIN
set_color_profile_slot(pal_num, col_lblue, 208, 103, 44); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 189, 28, 73); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 100, 79, 79); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 234, 175, 44);//LIGHT
set_color_profile_slot(pal_num, col_fire, 181, 25, 18); //FIRE

pal_num ++;
//P24 - SPLATRACER'S ALT
set_color_profile_slot(pal_num, col_white, 207, 227, 206); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 100, 110, 108); //HAIR
set_color_profile_slot(pal_num, col_skin, 212, 162, 145); //SKIN
set_color_profile_slot(pal_num, col_lblue, 92, 183, 56); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 13, 86, 44); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 16, 21, 24); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 0, 66, 37); //LIGHT
set_color_profile_slot(pal_num, col_fire, 191, 255, 0); //FIRE

pal_num ++;
//P25 - TRAIL MIX'S ALT
set_color_profile_slot(pal_num, col_white, 220, 180, 230); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 48, 17, 44); //HAIR
set_color_profile_slot(pal_num, col_skin, 161, 114, 152); //SKIN
set_color_profile_slot(pal_num, col_lblue, 92, 65, 69); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 61, 28, 71); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 48, 24, 32); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 142, 54, 224); //LIGHT
set_color_profile_slot(pal_num, col_fire, 192, 94, 186); //FIRE

pal_num ++;
//P26 - HELEL
set_color_profile_slot(pal_num, col_white, 221, 221, 221); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 192, 192, 192); //HAIR
set_color_profile_slot(pal_num, col_skin, 221, 221, 221); //SKIN
set_color_profile_slot(pal_num, col_lblue, 150, 150, 150); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 103, 103, 103); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 66, 66, 66); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 200, 200, 200);//LIGHT
set_color_profile_slot(pal_num, col_fire, 200, 200, 200); //FIRE

pal_num ++;
//P27 - THEIKOS
set_color_profile_slot(pal_num, col_white, 218, 214, 186); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 84, 160, 217); //HAIR
set_color_profile_slot(pal_num, col_skin, 245, 181, 150); //SKIN
set_color_profile_slot(pal_num, col_lblue, 225, 186, 71); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 197, 188, 172); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 54, 40, 29); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 253, 245, 127); //LIGHT
set_color_profile_slot(pal_num, col_fire, 237, 207, 97); //FIRE

//changes the maximum number of palettes
set_num_palettes(pal_num + 1);

/*
//P?? - ARC
set_color_profile_slot(pal_num, col_white, 227, 211, 207); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 191, 157, 162); //HAIR
set_color_profile_slot(pal_num, col_skin, 235, 207, 205); //SKIN
set_color_profile_slot(pal_num, col_lblue, 141, 75, 77); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 56, 34, 40); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 56, 34, 40); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 255, 0, 0); //LIGHT
set_color_profile_slot(pal_num, col_fire, 150, 25, 25); //FIRE

pal_num ++;
//P?? - ZETTA
set_color_profile_slot(pal_num, col_white, 212, 206, 227); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 200, 193, 202); //HAIR
set_color_profile_slot(pal_num, col_skin, 212, 206, 227); //SKIN
set_color_profile_slot(pal_num, col_lblue, 92, 216, 3); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 113, 111, 137); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 15, 21, 17); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 162, 255, 10);//LIGHT
set_color_profile_slot(pal_num, col_fire, 36, 47, 37); //FIRE

pal_num ++;
//P?? - TEMPLATE
set_color_profile_slot(pal_num, col_white, 0, 0, 0); //CLOTHWHITE
set_color_profile_slot(pal_num, col_hair, 0, 0, 0); //HAIR
set_color_profile_slot(pal_num, col_skin, 0, 0, 0); //SKIN
set_color_profile_slot(pal_num, col_lblue, 0, 0, 0); //CLOTHLIGHTBLUE
set_color_profile_slot(pal_num, col_dblue, 0, 0, 0); //CLOTHDARKBLUE
set_color_profile_slot(pal_num, col_black, 0, 0, 0); //CLOTHBLACK
set_color_profile_slot(pal_num, col_light, 0, 0, 0);//LIGHT
set_color_profile_slot(pal_num, col_fire, 0, 0, 0); //FIRE
*/