//colors.gml
//this script holds all the character's different alt colors

// default palette
var pal_num = 0; //this variable counts +1 above every alt, which is how the game knows which alt this is

//this part sets up all the base colors from the sprite
//colormapping is done in init_shader.gml
set_color_profile_slot(pal_num, 0, 245, 251, 252); //body
set_color_profile_slot(pal_num, 1, 206, 220, 227); //body shade
set_color_profile_slot(pal_num, 2, 255, 0, 0); //'-' //this value belongs to the sprites in the sprites folder, i later change it to black on init_shader.gml
set_color_profile_slot(pal_num, 3, 74, 162, 246); //effects

//set the "range" of the colors, so the game knows which colors relate to the main color
//the values here are HSV (hue, saturation, value) values, and it's relative to the main color
//for more info check https://rivalsofaether.com/colors-gml/
set_color_profile_slot_range(0, 1, 1, 1);
set_color_profile_slot_range(1, 1, 1, 1);
set_color_profile_slot_range(2, 1, 1, 1);
set_color_profile_slot_range(3, 1, 31, 22);


pal_num ++; //1 = red
set_color_profile_slot(pal_num, 0, 231, 19, 19); //body
set_color_profile_slot(pal_num, 1, 160, 7, 59); //body shade
set_color_profile_slot(pal_num, 2, 255, 177, 41); //'-'
set_color_profile_slot(pal_num, 3, 252, 175, 73); //effects

pal_num ++; //2 = blue
set_color_profile_slot(pal_num, 0, 57, 77, 255); //body
set_color_profile_slot(pal_num, 1, 39, 25, 184); //body shade
set_color_profile_slot(pal_num, 2, 140, 242, 15); //'-'
set_color_profile_slot(pal_num, 3, 219, 24, 24); //effects

pal_num ++; //3 = pink
set_color_profile_slot(pal_num, 0, 237, 88, 150); //body
set_color_profile_slot(pal_num, 1, 175, 60, 159); //body shade
set_color_profile_slot(pal_num, 2, 77, 21, 117); //'-'
set_color_profile_slot(pal_num, 3, 255, 183, 117); //effects
 
pal_num ++; //4 = green
set_color_profile_slot(pal_num, 0, 61, 231, 65); //body
set_color_profile_slot(pal_num, 1, 44, 175, 91); //body shade
set_color_profile_slot(pal_num, 2, 207, 23, 161); //'-'
set_color_profile_slot(pal_num, 3, 200, 255, 200); //effects
 
pal_num ++; //5 = orange
set_color_profile_slot(pal_num, 0, 255, 141, 48); //body
set_color_profile_slot(pal_num, 1, 216, 89, 30); //body shade
set_color_profile_slot(pal_num, 2, 84, 43, 19); //'-'
set_color_profile_slot(pal_num, 3, 147, 64, 230); //effects

pal_num ++; //6 = grey
set_color_profile_slot(pal_num, 0, 150, 161, 163); //body
set_color_profile_slot(pal_num, 1, 109, 114, 130); //body shade
set_color_profile_slot(pal_num, 2, 0, 0, 0); //'-'
set_color_profile_slot(pal_num, 3, 184, 208, 224); //effects

pal_num ++; //7 = black/shadow
set_color_profile_slot(pal_num, 0, 34, 30, 50); //body
set_color_profile_slot(pal_num, 1, 18, 15, 29); //body shade
set_color_profile_slot(pal_num, 2, 245, 251, 252); //'-'
set_color_profile_slot(pal_num, 3, 178, 0, 0); //effects

pal_num ++; //8 = cyan
set_color_profile_slot(pal_num, 0, 103, 243, 255); //body
set_color_profile_slot(pal_num, 1, 74, 183, 216); //body shade
set_color_profile_slot(pal_num, 2, 255, 248, 74); //'-'
set_color_profile_slot(pal_num, 3, 233, 234, 235); //effects

pal_num ++; //9 = purple
set_color_profile_slot(pal_num, 0, 146, 38, 240); //body
set_color_profile_slot(pal_num, 1, 86, 29, 209); //body shade
set_color_profile_slot(pal_num, 2, 255, 170, 0); //'-'
set_color_profile_slot(pal_num, 3, 255, 110, 20); //effects

pal_num ++; //10 = BLW
set_color_profile_slot(pal_num, 0, 115, 66, 26); //body
set_color_profile_slot(pal_num, 1, 64, 25, 18); //body shade
set_color_profile_slot(pal_num, 2, 255, 255, 255); //'-'
set_color_profile_slot(pal_num, 3, 255, 217, 31); //effects

pal_num ++; //11 = rainbow ver. 1 (scrolls between RGB colors consistently)
set_color_profile_slot(pal_num, 0, 0, 255, 0); //body
set_color_profile_slot(pal_num, 1, 0, 255, 0); //body shade
set_color_profile_slot(pal_num, 2, 0, 0, 0); //'-'
set_color_profile_slot(pal_num, 3, 0, 255, 0); //effects

pal_num ++; //12 = rainbow ver. 2 (scrolls between # specific colors - 3 by default)
set_color_profile_slot(pal_num, 0, 0, 255, 0); //body
set_color_profile_slot(pal_num, 1, 0, 255, 0); //body shade
set_color_profile_slot(pal_num, 2, 0, 0, 0); //'-'
set_color_profile_slot(pal_num, 3, 200, 200, 200); //effects

pal_num ++; //13 = abyss (SHOULD BE HERE BECAUSE OF THE DEATH EFFECT)
set_color_profile_slot(pal_num, 0, 122, 129, 187); //body
set_color_profile_slot(pal_num, 1, 79, 61, 94); //body shade
set_color_profile_slot(pal_num, 2, 255, 127, 0); //'-'
set_color_profile_slot(pal_num, 3, 220, 113, 255); //effects

pal_num ++; //14 = early access (gameboy)
set_color_profile_slot(pal_num, 0, 211, 226, 154); //body
set_color_profile_slot(pal_num, 1, 167, 186, 74); //body shade
set_color_profile_slot(pal_num, 2, 83, 122, 62); //'-'
set_color_profile_slot(pal_num, 3, 167, 186, 74); //effects

pal_num ++; //15 = milestone
set_color_profile_slot(pal_num, 0, 0, 0, 0); //body
set_color_profile_slot(pal_num, 1, 0, 0, 0); //body shade
set_color_profile_slot(pal_num, 2, 255, 255, 255); //'-'
set_color_profile_slot(pal_num, 3, 0, 255, 0); //effects

pal_num ++; //16 = seasonals
switch(get_match_setting(SET_SEASON))
{
    case 1: //v-day
        set_color_profile_slot(pal_num, 0, 255, 148, 208); //body
        set_color_profile_slot(pal_num, 1, 182, 13, 115); //body shade
        set_color_profile_slot(pal_num, 2, 255, 243, 252); //'-'
        set_color_profile_slot(pal_num, 3, 240, 111, 138); //effects
        break;
    case 2: //summer
        set_color_profile_slot(pal_num, 0, 255, 244, 108); //body
        set_color_profile_slot(pal_num, 1, 227, 134, 32); //body shade
        set_color_profile_slot(pal_num, 2, 85, 181, 233); //'-'
        set_color_profile_slot(pal_num, 3, 253, 167, 39); //effects
        break;
    case 3: //halloween
        set_color_profile_slot(pal_num, 0, 53, 73, 117); //body
        set_color_profile_slot(pal_num, 1, 18, 39, 71); //body shade
        set_color_profile_slot(pal_num, 2, 3, 184, 255); //'-'
        set_color_profile_slot(pal_num, 3, 36, 75, 255); //effects
        break;
    case 4: //x-mas
        set_color_profile_slot(pal_num, 0, 255, 27, 2); //body
        set_color_profile_slot(pal_num, 1, 191, 12, 12); //body shade
        set_color_profile_slot(pal_num, 2, 254, 249, 248); //'-'
        set_color_profile_slot(pal_num, 3, 1, 255, 60); //effects
        break;
}

pal_num ++; //17 = imfamous
set_color_profile_slot(pal_num, 0, 54, 231, 251); //body
set_color_profile_slot(pal_num, 1, 84, 82, 167); //body shade
set_color_profile_slot(pal_num, 2, 213, 69, 254); //'-'
set_color_profile_slot(pal_num, 3, 63, 254, 140); //effects

pal_num ++; //18 = gold rank (SHOULD BE HERE BECAUSE OF THE SHINY EFFECT)
set_color_profile_slot(pal_num, 0, 255, 204, 0); //body
set_color_profile_slot(pal_num, 1, 255, 135, 0); //body shade
set_color_profile_slot(pal_num, 2, 121, 122, 195); //'-'
set_color_profile_slot(pal_num, 3, 225, 225, 237); //effects

pal_num ++; //19 = enderman //by prober
set_color_profile_slot(pal_num, 0, 26, 26, 26); //body
set_color_profile_slot(pal_num, 1, 0, 0, 0); //body shade
set_color_profile_slot(pal_num, 2, 247, 1, 255); //'-'
set_color_profile_slot(pal_num, 3, 254, 140, 254); //effects

pal_num ++; //20 = spearmint //by supersonic
set_color_profile_slot(pal_num, 0, 143, 255, 218); //body
set_color_profile_slot(pal_num, 1, 73, 204, 175); //body shade
set_color_profile_slot(pal_num, 2, 14, 140, 117); //'-'
set_color_profile_slot(pal_num, 3, 133, 233, 255); //effects

pal_num ++; //21 = THE MAN BEHIND THE TESTING //by prober
set_color_profile_slot(pal_num, 0, 96, 0, 155); //body
set_color_profile_slot(pal_num, 1, 90, 0, 154); //body shade
set_color_profile_slot(pal_num, 2, 255, 255, 255); //'-'
set_color_profile_slot(pal_num, 3, 11, 7, 13); //effects

set_num_palettes(pal_num + 1); //palletes total - no need to change this if you are using the pal_num variable for alts