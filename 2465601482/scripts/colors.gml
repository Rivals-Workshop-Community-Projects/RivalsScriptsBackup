//DEFAULT COLOR (R,G,B)
set_num_palettes(9);
set_color_profile_slot(0, 0, 36, 67, 32); //green
set_color_profile_slot(0, 1, 164, 158, 176); //grey
set_color_profile_slot(0, 2, 203, 203, 203); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(0, 3, 169, 125, 77); //glove
set_color_profile_slot(0, 4, 96, 52, 135); //feather
set_color_profile_slot(0, 5, 34, 32, 52); //face
set_color_profile_slot(0, 6, 251, 0, 0); //RED
//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 32, 14, 33); // green
set_color_profile_slot_range(1, 20, 7, 25); // grey
set_color_profile_slot_range(2, 0, 0, 0); // grey
set_color_profile_slot_range(3, 3, 3, 20); // glove
set_color_profile_slot_range(4, 20, 15, 20); // feather
set_color_profile_slot_range(5, 3, 5, 10); // face
set_color_profile_slot_range(6, 0, 0, 0); // RED
//Blue Color
var c = 1;
set_color_profile_slot(c, 0, 41, 173, 229); //green
set_color_profile_slot(c, 1, 164, 158, 176); //grey
set_color_profile_slot(c, 2, 203, 203, 203); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 16, 91, 26); //glove
set_color_profile_slot(c, 4, 0, 6, 186); //feather
set_color_profile_slot(c, 5, 34, 32, 52); //face
set_color_profile_slot(c, 6, 251, 0, 0); //RED
c++; // hehe
//Red Color
set_color_profile_slot(c, 0, 158, 0, 0); //green
set_color_profile_slot(c, 1, 188, 139, 152); //grey
set_color_profile_slot(c, 2, 188, 155, 149); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 188, 94, 0); //glove
set_color_profile_slot(c, 4, 170, 175, 0); //feather
set_color_profile_slot(c, 5, 34, 32, 52); //face
set_color_profile_slot(c, 6, 251, 0, 0); //RED
c++;
//Green Color
set_color_profile_slot(c, 0, 135, 136, 135); //green
set_color_profile_slot(c, 1, 164, 158, 176); //grey
set_color_profile_slot(c, 2, 203, 203, 203); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 0, 127, 15); //glove
set_color_profile_slot(c, 4, 210, 255, 0 ); //feather
set_color_profile_slot(c, 5, 34, 32, 52); //face
set_color_profile_slot(c, 6, 251, 0, 0); //RED
c++;
//Black Color
set_color_profile_slot(c, 0, 230, 230, 230); //green
set_color_profile_slot(c, 1, 164, 158, 176); //grey
set_color_profile_slot(c, 2, 203, 203, 203); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 251, 0, 0); //glove
set_color_profile_slot(c, 4, 251, 0, 0); //feather
set_color_profile_slot(c, 5, 34, 32, 52); //face
set_color_profile_slot(c, 6, 251, 0, 0); //RED
c++;
//Purple Color
set_color_profile_slot(c, 0, 180, 127, 155); //green
set_color_profile_slot(c, 1, 255, 114, 203); //grey
set_color_profile_slot(c, 2, 255, 229, 234); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 96, 50, 105); //glove
set_color_profile_slot(c, 4, 181, 245, 255); //feather
set_color_profile_slot(c, 5, 34, 32, 52); //face
set_color_profile_slot(c, 6, 255, 255, 255); //RED
c++;
// holiday
switch get_match_setting(SET_SEASON) {
    case 1:
        set_color_profile_slot(c, 0, 255, 131, 203); //green
        set_color_profile_slot(c, 1, 255, 238, 247); //grey
        set_color_profile_slot(c, 2, 255, 255, 255); //greyhighlight because I'm a dummy who didn't ensure it had hue
        set_color_profile_slot(c, 3, 196, 37, 64); //glove
        set_color_profile_slot(c, 4, 246, 77, 213); //feather
        set_color_profile_slot(c, 5, 109, 76, 99); //face
        set_color_profile_slot(c, 6, 255, 73, 73); //RED
        break;
    case 2:
        set_color_profile_slot(c, 0, 255, 166, 40); //green
        set_color_profile_slot(c, 1, 237, 205, 187); //grey
        set_color_profile_slot(c, 2, 255, 253, 229); //greyhighlight because I'm a dummy who didn't ensure it had hue
        set_color_profile_slot(c, 3, 89, 204, 223); //glove
        set_color_profile_slot(c, 4, 255, 216, 32); //feather
        set_color_profile_slot(c, 5, 41, 119, 73); //face
        set_color_profile_slot(c, 6, 235, 70, 0); //RED
        break;
    case 3:
        set_color_profile_slot(c, 0, 0, 250, 255); //green
        set_color_profile_slot(c, 1, 0, 250, 255); //grey
        set_color_profile_slot(c, 2, 0, 250, 255); //greyhighlight because I'm a dummy who didn't ensure it had hue
        set_color_profile_slot(c, 3, 0, 250, 255); //glove
        set_color_profile_slot(c, 4, 0, 250, 255); //feather
        set_color_profile_slot(c, 5, 0, 250, 255); //face
        set_color_profile_slot(c, 6, 0, 0, 0); //RED
        break;
    case 4:
        set_color_profile_slot(c, 0, 222, 72,72 ); //green
        set_color_profile_slot(c, 1, 253, 229, 231); //grey
        set_color_profile_slot(c, 2, 255, 255, 255); //greyhighlight because I'm a dummy who didn't ensure it had hue
        set_color_profile_slot(c, 3, 87, 197, 53); //glove
        set_color_profile_slot(c, 4, 0, 255, 30); //feather
        set_color_profile_slot(c, 5, 218, 218, 218); //face
        set_color_profile_slot(c, 6, 251, 0, 0); //RED
        break;
    default:
        break;
}
c++;
// abyss
set_color_profile_slot(c, 0, 141, 131, 188); //green
set_color_profile_slot(c, 1, 79, 61, 94); //grey
set_color_profile_slot(c, 2, 90, 70, 105); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 228, 246, 255); //glove
set_color_profile_slot(c, 4, 220, 113, 255); //feather
set_color_profile_slot(c, 5, 86, 84, 146); //face
set_color_profile_slot(c, 6, 220, 113, 255); //RED
c++;
// bandwagon
set_color_profile_slot(c, 0, 167, 186, 74); //green
set_color_profile_slot(c, 1, 211, 226, 154); //grey
set_color_profile_slot(c, 2, 211, 226, 154); //greyhighlight because I'm a dummy who didn't ensure it had hue
set_color_profile_slot(c, 3, 211, 226, 154); //glove
set_color_profile_slot(c, 4, 83, 122, 62); //feather
set_color_profile_slot(c, 5, 83, 122, 62); //face
set_color_profile_slot(c, 6, 167, 186, 74); //RED
c++;
