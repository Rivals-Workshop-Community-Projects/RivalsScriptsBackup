// DEFAULT COLOR

var palNum = 0;

// COLORS
set_color_profile_slot(palNum, 0, 194, 116, 229); // electro
set_color_profile_slot(palNum, 1, 5, 198, 25); // hair (changes in init_shader)
set_color_profile_slot(palNum, 2, 229, 176, 145); // skin
set_color_profile_slot(palNum, 3, 219, 230, 246); // white-blue
set_color_profile_slot(palNum, 4, 188, 0, 0); // dark purple (changes in init_shader)
set_color_profile_slot(palNum, 5, 237, 184, 94); // gold
set_color_profile_slot(palNum, 6, 136, 134, 242); // purple-blue
set_color_profile_slot(palNum, 7, 100, 48, 50); // stocking

// RANGE
set_color_profile_slot_range(0, 29, 37, 24); // electro
set_color_profile_slot_range(1, 1, 5, 24); // hair
set_color_profile_slot_range(2, 12, 17, 11); // skin
set_color_profile_slot_range(4, 1, 1, 27); // dark purple
set_color_profile_slot_range(5, 10, 9, 8); // gold
set_color_profile_slot_range(6, 10, 12, 20); // purple-blue
set_color_profile_slot_range(7, 14, 5, 11); // stocking


// ALTERNATE COLORS

palNum ++; // 1 = xiao
set_color_profile_slot(palNum, 0, 115, 255, 189); //electro
set_color_profile_slot(palNum, 1, 55, 87, 74); //hair
set_color_profile_slot(palNum, 2, 230, 178, 168); //skin
set_color_profile_slot(palNum, 3, 207, 251, 255); //white-blue
set_color_profile_slot(palNum, 4, 136, 230, 176); //dark purple
set_color_profile_slot(palNum, 5, 125, 66, 201); //gold
set_color_profile_slot(palNum, 6, 242, 255, 242); //purple-blue
set_color_profile_slot(palNum, 7, 55, 59, 125); //stocking

palNum ++; // 2 = ninguang
set_color_profile_slot(palNum, 0, 222, 184, 97); //electro
set_color_profile_slot(palNum, 1, 219, 209, 193); //hair
set_color_profile_slot(palNum, 2, 242, 180, 158); //skin
set_color_profile_slot(palNum, 3, 255, 205, 61); //white-blue
set_color_profile_slot(palNum, 4, 219, 208, 182); //dark purple
set_color_profile_slot(palNum, 5, 194, 27, 27); //gold
set_color_profile_slot(palNum, 6, 102, 73, 15); //purple-blue
set_color_profile_slot(palNum, 7, 219, 176, 160); //stocking

palNum ++; // 3 = mona
set_color_profile_slot(palNum, 0, 157, 150, 255); //electro
set_color_profile_slot(palNum, 1, 41, 34, 82); //hair
set_color_profile_slot(palNum, 2, 229, 185, 153); //skin
set_color_profile_slot(palNum, 3, 166, 163, 255); //white-blue
set_color_profile_slot(palNum, 4, 65, 39, 181); //dark purple
set_color_profile_slot(palNum, 5, 235, 211, 124); //gold
set_color_profile_slot(palNum, 6, 176, 44, 44); //purple-blue
set_color_profile_slot(palNum, 7, 84, 53, 112); //stocking

palNum ++; // 4 = diluc
set_color_profile_slot(palNum, 0, 255, 60, 38); //electro
set_color_profile_slot(palNum, 1, 171, 26, 26); //hair
set_color_profile_slot(palNum, 2, 242, 180, 158); //skin
set_color_profile_slot(palNum, 3, 64, 27, 27); //white-blue
set_color_profile_slot(palNum, 4, 64, 27, 27); //dark purple
set_color_profile_slot(palNum, 5, 255, 171, 74); //gold
set_color_profile_slot(palNum, 6, 255, 245, 245); //purple-blue
set_color_profile_slot(palNum, 7, 28, 13, 13); //stocking

palNum ++; // 5 = ganyu
set_color_profile_slot(palNum, 0, 186, 248, 255); //electro
set_color_profile_slot(palNum, 1, 99, 174, 219); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 229, 255, 251); //white-blue
set_color_profile_slot(palNum, 4, 151, 193, 199); //dark purple
set_color_profile_slot(palNum, 5, 209, 65, 65); //gold
set_color_profile_slot(palNum, 6, 89, 182, 235); //purple-blue
set_color_profile_slot(palNum, 7, 51, 39, 45); //stocking

palNum ++; // 6 = al haitham
set_color_profile_slot(palNum, 0, 98, 214, 83); //electro
set_color_profile_slot(palNum, 1, 114, 133, 132); //hair
set_color_profile_slot(palNum, 2, 240, 196, 171); //skin
set_color_profile_slot(palNum, 3, 13, 28, 31); //white-blue
set_color_profile_slot(palNum, 4, 18, 37, 43); //dark purple
set_color_profile_slot(palNum, 5, 209, 147, 82); //gold
set_color_profile_slot(palNum, 6, 72, 201, 154); //purple-blue
set_color_profile_slot(palNum, 7, 24, 48, 70); //stocking

palNum ++; // 7 =lumine
set_color_profile_slot(palNum, 0, 237, 153, 83); //electro (it's moreso their eye color)
set_color_profile_slot(palNum, 1, 230, 197, 134); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 165, 228, 247); //white-blue
set_color_profile_slot(palNum, 4, 211, 219, 230); //dark purple
set_color_profile_slot(palNum, 5, 163, 181, 201); //gold
set_color_profile_slot(palNum, 6, 133, 102, 76); //purple-blue
set_color_profile_slot(palNum, 7, 205, 221, 230); //stocking

palNum ++; // 8 = aether
set_color_profile_slot(palNum, 0, 237, 153, 83); //electro (it's moreso their eye color)
set_color_profile_slot(palNum, 1, 230, 197, 134); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 240, 232, 204); //white-blue
set_color_profile_slot(palNum, 4, 69, 45, 31); //dark purple
set_color_profile_slot(palNum, 5, 232, 217, 132); //gold
set_color_profile_slot(palNum, 6, 71, 57, 33); //purple-blue
set_color_profile_slot(palNum, 7, 69, 37, 31); //stocking

palNum ++; // 9 = ei
set_color_profile_slot(palNum, 0, 153, 107, 232); //electro
set_color_profile_slot(palNum, 1, 84, 41, 194); //hair
set_color_profile_slot(palNum, 2, 242, 184, 148); //skin
set_color_profile_slot(palNum, 3, 152, 80, 230); //white-blue
set_color_profile_slot(palNum, 4, 195, 147, 207); //dark purple
set_color_profile_slot(palNum, 5, 242, 176, 61); //gold
set_color_profile_slot(palNum, 6, 54, 54, 150); //purple-blue
set_color_profile_slot(palNum, 7, 32, 28, 66); //stocking

palNum ++; // 10 = vergil
set_color_profile_slot(palNum, 0, 106, 220, 255); //electro
set_color_profile_slot(palNum, 1, 193, 209, 219); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 38, 36, 59); //white-blue
set_color_profile_slot(palNum, 4, 38, 36, 59); //dark purple
set_color_profile_slot(palNum, 5, 92, 170, 240); //gold
set_color_profile_slot(palNum, 6, 57, 73, 129); //purple-blue
set_color_profile_slot(palNum, 7, 38, 36, 59); //stocking

palNum ++; // 11 = lyn
set_color_profile_slot(palNum, 0, 67, 244, 255); //electro
set_color_profile_slot(palNum, 1, 10, 149, 67); //hair
set_color_profile_slot(palNum, 2, 232, 190, 155); //skin
set_color_profile_slot(palNum, 3, 52, 123, 211); //white-blue
set_color_profile_slot(palNum, 4, 16, 33, 134); //dark purple
set_color_profile_slot(palNum, 5, 237, 184, 94); //gold
set_color_profile_slot(palNum, 6, 32, 28, 64); //purple-blue
set_color_profile_slot(palNum, 7, 67, 28, 23); //stocking

palNum ++; // 12 = sir percival (blaze)
set_color_profile_slot(palNum, 0, 237, 153, 83); //electro
set_color_profile_slot(palNum, 1, 168, 140, 204); //hair
set_color_profile_slot(palNum, 2, 230, 197, 172); //skin
set_color_profile_slot(palNum, 3, 145, 100, 204); //white-blue
set_color_profile_slot(palNum, 4, 158, 156, 202); //dark purple
set_color_profile_slot(palNum, 5, 222, 49, 49); //gold
set_color_profile_slot(palNum, 6, 175, 187, 194); //purple-blue
set_color_profile_slot(palNum, 7, 203, 201, 209); //stocking

palNum ++; // 13 = abyss
set_color_profile_slot(palNum, 0, 146, 74, 219); //electro
set_color_profile_slot(palNum, 1, 50, 47, 133); //hair
set_color_profile_slot(palNum, 2, 184, 97, 255); //skin
set_color_profile_slot(palNum, 3, 144, 140, 255); //white-blue
set_color_profile_slot(palNum, 4, 55, 34, 148); //dark purple
set_color_profile_slot(palNum, 5, 255, 181, 251); //gold
set_color_profile_slot(palNum, 6, 145, 127, 189); //purple-blue
set_color_profile_slot(palNum, 7, 184, 97, 255); //stocking

palNum ++; // 14 = early access
set_color_profile_slot(palNum, 0, 167, 186, 74); //electro
set_color_profile_slot(palNum, 1, 167, 186, 74); //hair
set_color_profile_slot(palNum, 2, 211, 226, 164); //skin
set_color_profile_slot(palNum, 3, 211, 226, 164); //white-blue
set_color_profile_slot(palNum, 4, 83, 122, 62); //dark purple
set_color_profile_slot(palNum, 5, 211, 226, 164); //gold
set_color_profile_slot(palNum, 6, 167, 186, 74); //purple-blue
set_color_profile_slot(palNum, 7, 83, 122, 62); //stocking

palNum ++; // 15 = milestone (lantern rite 2022 alternate outfit)
set_color_profile_slot(palNum, 0, 194, 116, 229); // electro
set_color_profile_slot(palNum, 1, 137, 105, 168); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); // skin
set_color_profile_slot(palNum, 3, 72, 103, 197); // white-blue
set_color_profile_slot(palNum, 4, 51, 46, 62); //dark purple
set_color_profile_slot(palNum, 5, 220, 182, 126); // gold
set_color_profile_slot(palNum, 6, 72, 103, 197); // purple-blue
set_color_profile_slot(palNum, 7, 96, 75, 70); // stocking
//the actual colors if i make a real alt based off it
//set_color_profile_slot(palNum, 3, 0, 0, 0); // white-blue (doesn't exist in the pallete)
//set_color_profile_slot(palNum, 4, 72, 103, 197); //dark purple
//set_color_profile_slot(palNum, 6, 51, 46, 62); // purple-blue

palNum ++; // 16 = seasonals
switch (get_match_setting(SET_SEASON))
{
    case 1: //v-day
        set_color_profile_slot(palNum, 0, 255, 128, 245); //electro
        set_color_profile_slot(palNum, 1, 202, 84, 69); //hair
        set_color_profile_slot(palNum, 2, 241, 198, 161); //skin
        set_color_profile_slot(palNum, 3, 226, 210, 211); //white-blue
        set_color_profile_slot(palNum, 4, 200, 69, 99); //dark purple
        set_color_profile_slot(palNum, 5, 237, 184, 94); //gold
        set_color_profile_slot(palNum, 6, 166, 45, 45); //purple-blue
        set_color_profile_slot(palNum, 7, 189, 166, 167); //stocking
        break;
    case 2: //summer
        set_color_profile_slot(palNum, 0, 255, 98, 0); //electro
        set_color_profile_slot(palNum, 1, 202, 133, 52); //hair
        set_color_profile_slot(palNum, 2, 223, 166, 140); //skin
        set_color_profile_slot(palNum, 3, 163, 199, 222); //white-blue
        set_color_profile_slot(palNum, 4, 202, 191, 108); //dark purple
        set_color_profile_slot(palNum, 5, 87, 181, 216); //gold
        set_color_profile_slot(palNum, 6, 205, 37, 56); //purple-blue
        set_color_profile_slot(palNum, 7, 223, 166, 104); //stocking
        break;
    case 3: //halloween - keqing with a qiqi hat
        set_color_profile_slot(palNum, 0, 186, 248, 255); //electro
        set_color_profile_slot(palNum, 1, 184, 173, 217); //hair
        set_color_profile_slot(palNum, 2, 237, 224, 194); //skin
        set_color_profile_slot(palNum, 3, 197, 130, 217); //white-blue
        set_color_profile_slot(palNum, 4, 104, 131, 214); //dark purple
        set_color_profile_slot(palNum, 5, 189, 159, 93); //gold
        set_color_profile_slot(palNum, 6, 55, 71, 168); //purple-blue
        set_color_profile_slot(palNum, 7, 183, 207, 224); //stocking
        break;
    case 4: //xmas
        set_color_profile_slot(palNum, 0, 186, 248, 255); //electro
        set_color_profile_slot(palNum, 1, 235, 213, 213); //hair //250, 232, 232
        set_color_profile_slot(palNum, 2, 223, 166, 140); //skin
        set_color_profile_slot(palNum, 3, 246, 225, 219); //white-blue
        set_color_profile_slot(palNum, 4, 191, 57, 33); //dark purple
        set_color_profile_slot(palNum, 5, 222, 181, 71); //gold
        set_color_profile_slot(palNum, 6, 88, 208, 106); //purple-blue
        set_color_profile_slot(palNum, 7, 14, 69, 33); //stocking
        break
}

palNum ++; // 17 = infamous
set_color_profile_slot(palNum, 0, 124, 169, 237); //electro
set_color_profile_slot(palNum, 1, 70, 184, 180); //hair
set_color_profile_slot(palNum, 2, 157, 200, 219); //skin
set_color_profile_slot(palNum, 3, 84, 201, 155); //white-blue
set_color_profile_slot(palNum, 4, 176, 84, 174); //dark purple
set_color_profile_slot(palNum, 5, 94, 64, 186); //gold
set_color_profile_slot(palNum, 6, 176, 242, 215); //purple-blue
set_color_profile_slot(palNum, 7, 77, 77, 148); //stocking

palNum ++; // 18 = gold
set_color_profile_slot(palNum, 0, 255, 219, 138); //electro
set_color_profile_slot(palNum, 1, 227, 186, 104); //hair
set_color_profile_slot(palNum, 2, 219, 171, 125); //skin
set_color_profile_slot(palNum, 3, 245, 233, 220); //white-blue
set_color_profile_slot(palNum, 4, 207, 167, 89); //dark purple
set_color_profile_slot(palNum, 5, 207, 110, 0); //gold
set_color_profile_slot(palNum, 6, 209, 207, 203); //purple-blue
set_color_profile_slot(palNum, 7, 75, 88, 107); //stocking

palNum ++; // 19 = mythra
set_color_profile_slot(palNum, 0, 89, 255, 116); //electro
set_color_profile_slot(palNum, 1, 236, 208, 107); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 246, 238, 219); //white-blue
set_color_profile_slot(palNum, 4, 211, 211, 211); //dark purple
set_color_profile_slot(palNum, 5, 57, 194, 58); //gold
set_color_profile_slot(palNum, 6, 36, 44, 34); //purple-blue
set_color_profile_slot(palNum, 7, 47, 39, 37); //stocking

palNum ++; // 20 = miku
set_color_profile_slot(palNum, 0, 228, 92, 152); //electro
set_color_profile_slot(palNum, 1, 49, 175, 163); //hair
set_color_profile_slot(palNum, 2, 224, 167, 148); //skin
set_color_profile_slot(palNum, 3, 182, 201, 198); //white-blue
set_color_profile_slot(palNum, 4, 87, 101, 110); //dark purple
set_color_profile_slot(palNum, 5, 210, 68, 152); //gold
set_color_profile_slot(palNum, 6, 113, 175, 197); //purple-blue
set_color_profile_slot(palNum, 7, 23, 29, 31); //stocking

palNum ++; // 21 = rin tohsaka
set_color_profile_slot(palNum, 0, 235, 77, 77); //electro
set_color_profile_slot(palNum, 1, 74, 51, 52); //hair
set_color_profile_slot(palNum, 2, 222, 167, 152); //skin
set_color_profile_slot(palNum, 3, 73, 73, 73); //white-blue
set_color_profile_slot(palNum, 4, 150, 15, 34); //dark purple
set_color_profile_slot(palNum, 5, 173, 179, 209); //gold
set_color_profile_slot(palNum, 6, 48, 41, 41); //purple-blue
set_color_profile_slot(palNum, 7, 31, 28, 26); //stocking

palNum ++; // 22 = sakuya
set_color_profile_slot(palNum, 0, 240, 52, 20); //electro
set_color_profile_slot(palNum, 1, 153, 172, 194); //hair
set_color_profile_slot(palNum, 2, 237, 203, 156); //skin
set_color_profile_slot(palNum, 3, 220, 249, 250); //white-blue
set_color_profile_slot(palNum, 4, 51, 95, 168); //dark purple
set_color_profile_slot(palNum, 5, 61, 204, 61); //gold
set_color_profile_slot(palNum, 6, 186, 222, 218); //purple-blue
set_color_profile_slot(palNum, 7, 54, 50, 47); //stocking

palNum ++; // 23 = bar reygard
set_color_profile_slot(palNum, 0, 134, 153, 235); //electro
set_color_profile_slot(palNum, 1, 184, 92, 45); //hair
set_color_profile_slot(palNum, 2, 240, 163, 132); //skin
set_color_profile_slot(palNum, 3, 89, 180, 214); //white-blue
set_color_profile_slot(palNum, 4, 52, 74, 171); //dark purple
set_color_profile_slot(palNum, 5, 114, 204, 224); //gold
set_color_profile_slot(palNum, 6, 228, 247, 243); //purple-blue
set_color_profile_slot(palNum, 7, 31, 34, 48); //stocking

palNum ++; // 24 = a fucking wind glider LOL
set_color_profile_slot(palNum, 0, 237, 162, 231); //electro
set_color_profile_slot(palNum, 1, 190, 126, 202); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 150, 78, 164); //white-blue
set_color_profile_slot(palNum, 4, 53, 43, 64); //dark purple
set_color_profile_slot(palNum, 5, 237, 184, 94); //gold
set_color_profile_slot(palNum, 6, 38, 33, 64); //purple-blue
set_color_profile_slot(palNum, 7, 68, 34, 75); //stocking

palNum ++; // 25 = hud color (uses default as a base)
set_color_profile_slot(palNum, 0, 194, 116, 229); //electro
set_color_profile_slot(palNum, 1, 137, 105, 168); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 219, 230, 246); //white-blue
set_color_profile_slot(palNum, 4, 70, 52, 139); //dark purple
set_color_profile_slot(palNum, 5, 237, 184, 94); //gold
set_color_profile_slot(palNum, 6, 136, 134, 242); //purple-blue
set_color_profile_slot(palNum, 7, 100, 48, 50); //stocking

set_num_palettes(palNum + 1);

/*
// actual default
set_color_profile_slot(palNum, 0, 194, 116, 229); //electro
set_color_profile_slot(palNum, 1, 137, 105, 168); //hair
set_color_profile_slot(palNum, 2, 229, 176, 145); //skin
set_color_profile_slot(palNum, 3, 219, 230, 246); //white-blue
set_color_profile_slot(palNum, 4, 70, 52, 139); //dark purple
set_color_profile_slot(palNum, 5, 237, 184, 94); //gold
set_color_profile_slot(palNum, 6, 136, 134, 242); //purple-blue
set_color_profile_slot(palNum, 7, 100, 48, 50); //stocking




//UNUSED ALTS

//orin
set_color_profile_slot(palNum, 0, 173, 243, 255); //electro
set_color_profile_slot(palNum, 1, 212, 64, 64); //hair
set_color_profile_slot(palNum, 2, 224, 173, 146); //skin
set_color_profile_slot(palNum, 3, 48, 117, 43); //white-blue
set_color_profile_slot(palNum, 4, 45, 54, 45); //dark purple
set_color_profile_slot(palNum, 5, 139, 207, 124); //gold
set_color_profile_slot(palNum, 6, 52, 87, 48); //purple-blue
set_color_profile_slot(palNum, 7, 224, 187, 168); //stocking

//orie from under night
set_color_profile_slot(palNum, 0, 255, 234, 138); //electro
set_color_profile_slot(palNum, 1, 59, 67, 156); //hair
set_color_profile_slot(palNum, 2, 230, 185, 143); //skin
set_color_profile_slot(palNum, 3, 188, 204, 219); //white-blue
set_color_profile_slot(palNum, 4, 39, 35, 94); //dark purple
set_color_profile_slot(palNum, 5, 247, 172, 86 ;  //gold
set_color_profile_slot(palNum, 6, 50, 44, 125); //purple-blue
set_color_profile_slot(palNum, 7, 184, 207, 203); /stocking

//yumeko
set_color_profile_slot(palNum, 0, 255, 48, 48); //electro
set_color_profile_slot(palNum, 1, 209, 175, 84);  //hair
set_color_profile_slot(palNum, 2, 237, 203, 156); //skin
set_color_profile_slot(palNum, 3, 220, 249, 250); //white-blue
set_color_profile_slot(palNum, 4, 186, 4, 22); //dark purple
set_color_profile_slot(palNum, 5, 224, 165, 130); //gold
set_color_profile_slot(palNum, 6, 220, 249, 250); //purple-blue
set_color_profile_slot(palNum, 7, 219, 198, 169); //stocking

//zeta vestia
set_color_profile_slot(palNum, 0, 145, 161, 222); //electro
set_color_profile_slot(palNum, 1, 151, 148, 164); //hair
set_color_profile_slot(palNum, 2, 254, 210, 191); //skin
set_color_profile_slot(palNum, 3, 142, 158, 222); //white-blue
set_color_profile_slot(palNum, 4, 189, 189, 188); //dark purple
set_color_profile_slot(palNum, 5, 62, 55, 64); //gold
set_color_profile_slot(palNum, 6, 179, 167, 147); //purple-blue
set_color_profile_slot(palNum, 7, 79, 57, 60); //stocking

//weiss
set_color_profile_slot(palNum, 0, 196, 249, 254); //electro
set_color_profile_slot(palNum, 1, 162, 168, 200); //hair
set_color_profile_slot(palNum, 2, 220, 187, 165); //skin
set_color_profile_slot(palNum, 3, 247, 247, 247); //white-blue
set_color_profile_slot(palNum, 4, 191, 200, 199); //dark purple
set_color_profile_slot(palNum, 5, 188, 0, 28); //gold
set_color_profile_slot(palNum, 6, 206, 231, 243); //purple-blue
set_color_profile_slot(palNum, 7, 212, 205, 213); //stocking