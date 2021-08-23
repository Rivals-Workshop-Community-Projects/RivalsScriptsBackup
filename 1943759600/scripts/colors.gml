var current_alt = 0;

//quick replace:
//find: slot\(\s*\d+
//replace: slot(current_alt
//make sure the .* button is enabled

//DEFAULT COLOR (R,G,B)
// crystal_light
set_color_profile_slot(current_alt, 0, 236, 141, 202 );
set_color_profile_slot_range( 0, 1, 1, 1 );

// crystal_dark
set_color_profile_slot(current_alt, 1, 161, 26, 113 );
set_color_profile_slot_range( 1, 1, 1, 1 );

// fur
set_color_profile_slot(current_alt, 2, 166, 115, 75 );
set_color_profile_slot_range( 2, 12, 13, 10 );

// skin???
set_color_profile_slot(current_alt, 3, 228, 133, 116 );
set_color_profile_slot_range( 3, 6, 4, 29 );

// pant
set_color_profile_slot(current_alt, 4, 213, 207, 215 );
set_color_profile_slot_range( 4, 9, 5, 18 );

// white
set_color_profile_slot(current_alt, 5, 255, 249, 249 );
set_color_profile_slot_range( 5, 1, 1, 1 );

// eye
set_color_profile_slot(current_alt, 6, 54, 123, 141 );
set_color_profile_slot_range( 6, 2, 6, 5 );
current_alt++;




//Blue Color
set_color_profile_slot(current_alt, 0, 198, 206, 227 ); //crystal_light
set_color_profile_slot(current_alt, 1, 65, 89, 152 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 226, 205, 179 ); //fur
set_color_profile_slot(current_alt, 3, 221, 148, 148 ); //skin???
set_color_profile_slot(current_alt, 4, 30, 107, 145 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 0, 50, 188 ); //eye
current_alt++;

//Red Color
set_color_profile_slot(current_alt, 0, 245, 198, 0 ); //crystal_light
set_color_profile_slot(current_alt, 1, 170, 138, 0 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 193, 158, 106 ); //fur
set_color_profile_slot(current_alt, 3, 143, 110, 89 ); //skin???
set_color_profile_slot(current_alt, 4, 220, 25, 25 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 34, 82, 217 ); //eye
current_alt++;

//Green Color
set_color_profile_slot(current_alt, 0, 133, 197, 71 ); //crystal_light
set_color_profile_slot(current_alt, 1, 60, 122, 0 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 145, 86, 70 ); //fur
set_color_profile_slot(current_alt, 3, 143, 110, 89 ); //skin???
set_color_profile_slot(current_alt, 4, 42, 59, 47 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 113, 155, 111 ); //eye
current_alt++;

//Black Color
set_color_profile_slot(current_alt, 0, 117, 116, 116 ); //crystal_light
set_color_profile_slot(current_alt, 1, 42, 23, 23 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 189, 188, 189 ); //fur
set_color_profile_slot(current_alt, 3, 186, 173, 162 ); //skin???
set_color_profile_slot(current_alt, 4, 77, 72, 72 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 112, 28, 130 ); //eye
current_alt++;

//Garnet
set_color_profile_slot(current_alt, 0, 228, 18, 102 ); //crystal_light
set_color_profile_slot(current_alt, 1, 153, 0, 61 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 107, 64, 93 ); //fur
set_color_profile_slot(current_alt, 3, 81, 80, 82 ); //skin???
set_color_profile_slot(current_alt, 4, 71, 65, 79 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 245, 237, 76 ); //eye
current_alt++;

//Seasonal Skin
switch (get_match_setting(SET_SEASON)) {
    case 1: //valentine's day
        set_color_profile_slot(current_alt, 0, 241, 45, 98 ); //crystal_light
        set_color_profile_slot(current_alt, 1, 166, 0, 44 ); //crystal_dark
        set_color_profile_slot(current_alt, 2, 100, 73, 57 ); //fur
        set_color_profile_slot(current_alt, 3, 241, 216, 231 ); //skin???
        set_color_profile_slot(current_alt, 4, 255, 88, 203 ); //pant
        set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
        set_color_profile_slot(current_alt, 6, 247, 53, 157 ); //eye
    break;
    
    case 2: //summer
        set_color_profile_slot(current_alt, 0, 255, 145, 185 ); //crystal_light
        set_color_profile_slot(current_alt, 1, 180, 23, 80 ); //crystal_dark
        set_color_profile_slot(current_alt, 2, 246, 186, 119 ); //fur
        set_color_profile_slot(current_alt, 3, 124, 75, 44 ); //skin???
        set_color_profile_slot(current_alt, 4, 172, 249, 255 ); //pant
        set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
        set_color_profile_slot(current_alt, 6, 34, 180, 56 ); //eye
    break;
    default:
    case 3: //halloween
        set_color_profile_slot(current_alt, 0, 159, 59, 189 ); //crystal_light
        set_color_profile_slot(current_alt, 1, 88, 0, 114 ); //crystal_dark
        set_color_profile_slot(current_alt, 2, 142, 109, 92 ); //fur
        set_color_profile_slot(current_alt, 3, 110, 153, 134 ); //skin???
        set_color_profile_slot(current_alt, 4, 161, 206, 98 ); //pant
        set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
        set_color_profile_slot(current_alt, 6, 209, 9, 23 ); //eye
    break;
    case 4: //christmas
        set_color_profile_slot(current_alt, 0, 236, 54, 67 ); //crystal_light
        set_color_profile_slot(current_alt, 1, 161, 0, 11 ); //crystal_dark
        set_color_profile_slot(current_alt, 2, 223, 196, 141 ); //fur
        set_color_profile_slot(current_alt, 3, 247, 74, 142 ); //skin???
        set_color_profile_slot(current_alt, 4, 89, 193, 53 ); //pant
        set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
        set_color_profile_slot(current_alt, 6, 0, 50, 188 ); //eye
    break;
}
current_alt++;
//Vaporwave 
set_color_profile_slot(current_alt, 0, 102, 248, 169 ); //crystal_light
set_color_profile_slot(current_alt, 1, 0, 173, 80 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 221, 221, 211 ); //fur
set_color_profile_slot(current_alt, 3, 154, 136, 113 ); //skin???
set_color_profile_slot(current_alt, 4, 240, 121, 169 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 104, 62, 144 ); //eye
current_alt++;

//Daisy
set_color_profile_slot(current_alt, 0, 25, 241, 148 ); //crystal_light
set_color_profile_slot(current_alt, 1, 0, 166, 95 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 186, 88, 65 ); //fur
set_color_profile_slot(current_alt, 3, 233, 164, 84 ); //skin???
set_color_profile_slot(current_alt, 4, 255, 137, 9 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 54, 123, 141 ); //eye
current_alt++;

//Champion (SlimePuffen)
set_color_profile_slot(current_alt, 0, 23, 166, 115 ); //crystal_light
set_color_profile_slot(current_alt, 1, 0, 91, 59 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 153, 215, 242 ); //fur
set_color_profile_slot(current_alt, 3, 85, 133, 104 ); //skin???
set_color_profile_slot(current_alt, 4, 245, 219, 139 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 22, 217, 148 ); //eye
current_alt++;

//Domon
set_color_profile_slot(current_alt, 0, 46, 122, 60 ); //crystal_light
set_color_profile_slot(current_alt, 1, 0, 47, 9 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 224, 173, 128 ); //fur
set_color_profile_slot(current_alt, 3, 233, 164, 84 ); //skin???
set_color_profile_slot(current_alt, 4, 190, 185, 173 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 218, 11, 62 ); //eye
current_alt++;

//Ryu
set_color_profile_slot(current_alt, 0, 218, 11, 62 ); //crystal_light
set_color_profile_slot(current_alt, 1, 143, 0, 35 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 154, 113, 79 ); //fur
set_color_profile_slot(current_alt, 3, 233, 181, 135 ); //skin???
set_color_profile_slot(current_alt, 4, 241, 240, 229 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 54, 123, 141 ); //eye
current_alt++;

//Yang
set_color_profile_slot(current_alt, 0, 237, 119, 41 ); //crystal_light
set_color_profile_slot(current_alt, 1, 162, 65, 0 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 235, 202, 127 ); //fur
set_color_profile_slot(current_alt, 3, 248, 221, 196 ); //skin???
set_color_profile_slot(current_alt, 4, 70, 48, 37 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 215, 123, 186 ); //eye
current_alt++;

//Rivalry - Ash
set_color_profile_slot(current_alt, 0, 99, 155, 255 ); //crystal_light
set_color_profile_slot(current_alt, 1, 0, 64, 180 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 243, 223, 158 ); //fur
set_color_profile_slot(current_alt, 3, 60, 58, 53 ); //skin???
set_color_profile_slot(current_alt, 4, 225, 69, 83 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 69, 47, 54 ); //eye
current_alt++;

//Nexus 
set_color_profile_slot(current_alt, 0, 198, 141, 236 ); //crystal_light
set_color_profile_slot(current_alt, 1, 107, 25, 161 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 130, 130, 170 ); //fur
set_color_profile_slot(current_alt, 3, 219, 119, 101 ); //skin???
set_color_profile_slot(current_alt, 4, 231, 225, 238 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 45, 184, 102 ); //eye
current_alt++;

//G7
set_color_profile_slot(current_alt, 0, 238, 238, 238 ); //crystal_light
set_color_profile_slot(current_alt, 1, 163, 91, 91 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 57, 51, 51 ); //fur
set_color_profile_slot(current_alt, 3, 106, 99, 99 ); //skin???
set_color_profile_slot(current_alt, 4, 196, 33, 44 ); //pant
set_color_profile_slot(current_alt, 5, 255, 249, 249 ); //white
set_color_profile_slot(current_alt, 6, 255, 237, 238 ); //eye
current_alt++;

// soup
set_color_profile_slot(current_alt, 0, 97, 252, 255 ); //crystal_light
set_color_profile_slot(current_alt, 1, 214, 254, 255 ); //crystal_dark
set_color_profile_slot(current_alt, 2, 124, 124, 125 ); //fur
set_color_profile_slot(current_alt, 3, 255, 236, 227 ); //skin???
set_color_profile_slot(current_alt, 4, 36, 37, 74 ); //pant
set_color_profile_slot(current_alt, 5, 224, 254, 255 ); //white
set_color_profile_slot(current_alt, 6, 0, 251, 255 ); //eye
current_alt++;

// Challenger-InnerOtaku
set_color_profile_slot(current_alt,  0, 237, 236, 228 ); //Crystal Light
set_color_profile_slot(current_alt,  1, 143, 139, 114 ); //Crystal Dark
set_color_profile_slot(current_alt,  2, 74, 61, 45 ); //Fur
set_color_profile_slot(current_alt,  3, 51, 49, 47 ); //Tail Ear
set_color_profile_slot(current_alt,  4, 252, 197, 0 ); //Clothes
set_color_profile_slot(current_alt,  5, 255, 253, 247 ); //Whites
set_color_profile_slot(current_alt,  6, 48, 34, 20 ); //Eye
current_alt++;

// Diamond Ranked
set_color_profile_slot(current_alt, 0, 184, 198, 255 ); //Crystal Light
set_color_profile_slot(current_alt, 1, 82, 93, 110 ); //Crystal Dark
set_color_profile_slot(current_alt, 2, 245, 254, 255 ); //Fur
set_color_profile_slot(current_alt, 3, 31, 117, 150 ); //Tail Ear
set_color_profile_slot(current_alt, 4, 207, 255, 229 ); //Clothes
set_color_profile_slot(current_alt, 5, 255, 255, 255 ); //Whites
set_color_profile_slot(current_alt, 6, 3, 52, 255 ); //Eye
current_alt++;

// Infamous
set_color_profile_slot(current_alt, 0, 95, 237, 215 ); //Crystal Light
set_color_profile_slot(current_alt, 1, 10, 59, 107 ); //Crystal Dark
set_color_profile_slot(current_alt, 2, 33, 50, 71 ); //Fur
set_color_profile_slot(current_alt, 3, 74, 217, 198 ); //Tail Ear
set_color_profile_slot(current_alt, 4, 203, 87, 242 ); //Clothes
set_color_profile_slot(current_alt, 5, 255, 255, 255 ); //Whites
set_color_profile_slot(current_alt, 6, 32, 171, 71 ); //Eye
current_alt++;

// Blacksmith Mouse
set_color_profile_slot(current_alt, 0, 252, 199, 74 ); //Crystal Light
set_color_profile_slot(current_alt, 1, 122, 75, 42 ); //Crystal Dark
set_color_profile_slot(current_alt, 2, 168, 98, 40 ); //Fur
set_color_profile_slot(current_alt, 3, 255, 196, 168 ); //Tail Ear
set_color_profile_slot(current_alt, 4, 42, 105, 20 ); //Clothes
set_color_profile_slot(current_alt, 5, 255, 255, 255 ); //Whites
set_color_profile_slot(current_alt, 6, 10, 69, 0 ); //Eye
current_alt++;

// Tekken Mouse
set_color_profile_slot(current_alt, 0, 217, 21, 0 ); //Crystal Light
set_color_profile_slot(current_alt, 1, 84, 23, 33 ); //Crystal Dark
set_color_profile_slot(current_alt, 2, 240, 206, 120 ); //Fur
set_color_profile_slot(current_alt, 3, 214, 153, 109 ); //Tail Ear
set_color_profile_slot(current_alt, 4, 199, 227, 224 ); //Clothes
set_color_profile_slot(current_alt, 5, 255, 255, 255 ); //Whites
set_color_profile_slot(current_alt, 6, 0, 124, 186 ); //Eye
current_alt++;

// Stargazing Fist
set_color_profile_slot(current_alt, 0, 130, 255, 224 ); //Crystal Light
set_color_profile_slot(current_alt, 1, 0, 103, 171 ); //Crystal Dark
set_color_profile_slot(current_alt, 2, 245, 219, 255 ); //Fur
set_color_profile_slot(current_alt, 3, 63, 58, 92 ); //Tail Ear
set_color_profile_slot(current_alt, 4, 100, 132, 250 ); //Clothes
set_color_profile_slot(current_alt, 5, 255, 255, 255 ); //Whites
set_color_profile_slot(current_alt, 6, 255, 203, 82 ); //Eye
current_alt++;


//copy new palettes above this. replace the first number in each line with current_alt.
//add current_alt++; after the line
set_num_palettes( current_alt );