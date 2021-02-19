//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 45, 83, 128); //Jacket
set_color_profile_slot(0, 1, 185, 188, 197); //Jacket fur
set_color_profile_slot(0, 2, 162, 111, 140); //Slippers
set_color_profile_slot(0, 3, 255, 255, 255); //Skeleton
set_color_profile_slot(0, 4, 132, 255, 242); //Blue Bone

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 2, 2, 28);
set_color_profile_slot_range(1, 1, 1, 28);
set_color_profile_slot_range(2, 1, 1, 36);
set_color_profile_slot_range(3, 96, 20, 12);
set_color_profile_slot_range(4, 43, 8, 6);

set_num_palettes(12);

//Papyrus
set_color_profile_slot(1, 0, 162, 45, 11);
set_color_profile_slot(1, 1, 250, 224, 101);
set_color_profile_slot(1, 2, 162, 45, 11);
set_color_profile_slot(1, 3, 255, 255, 255);
set_color_profile_slot(1, 4, 132, 255, 242);

//Toriel
set_color_profile_slot(2, 0, 60, 53, 93);
set_color_profile_slot(2, 1, 84, 84, 207);
set_color_profile_slot(2, 2, 55, 55, 134);
set_color_profile_slot(2, 3, 255, 255, 255);
set_color_profile_slot(2, 4, 132, 255, 242);

//Alphys
set_color_profile_slot(3, 0, 180, 180, 180);
set_color_profile_slot(3, 1, 250, 250, 250);
set_color_profile_slot(3, 2, 162, 136, 30);
set_color_profile_slot(3, 3, 255, 255, 255);
set_color_profile_slot(3, 3, 255, 255, 255);
set_color_profile_slot(3, 4, 132, 255, 242);

//Undyne
set_color_profile_slot(4, 0, 41, 41, 41);
set_color_profile_slot(4, 1, 201, 71, 61);
set_color_profile_slot(4, 2, 128, 45, 38);
set_color_profile_slot(4, 3, 255, 255, 255);
set_color_profile_slot(4, 4, 132, 255, 242);

//Mettaton EX
set_color_profile_slot(5, 0, 196, 7, 102);
set_color_profile_slot(5, 1, 218, 239, 234);
set_color_profile_slot(5, 2, 196, 7, 102);
set_color_profile_slot(5, 3, 255, 255, 255);
set_color_profile_slot(5, 4, 132, 255, 242);

//Asgore
set_color_profile_slot(6, 0, 60, 53, 93);
set_color_profile_slot(6, 1, 228, 205, 0);
set_color_profile_slot(6, 2, 181, 181, 181);
set_color_profile_slot(6, 3, 255, 255, 255);
set_color_profile_slot(6, 4, 132, 255, 242);

//Frisk
set_color_profile_slot(7, 0, 77, 122, 167);
set_color_profile_slot(7, 1, 230, 7, 248);
set_color_profile_slot(7, 2, 60, 14, 13);
set_color_profile_slot(7, 3, 255, 255, 255);
set_color_profile_slot(7, 4, 132, 255, 242);

//"Chara"
set_color_profile_slot(8, 0, 46, 184, 46);
set_color_profile_slot(8, 1, 255, 233, 176);
set_color_profile_slot(8, 2, 60, 14, 13);
set_color_profile_slot(8, 3, 255, 255, 255);
set_color_profile_slot(8, 4, 132, 255, 242);

switch (get_match_setting(SET_SEASON)) { //Seasonal Colors (thank you based supersonicnk)
    case 1: // valentines
        set_color_profile_slot(9, 0, 227, 32, 32);
        set_color_profile_slot(9, 1, 250, 171, 216);
        set_color_profile_slot(9, 2, 227, 32, 100);
        set_color_profile_slot(9, 3, 255, 255, 255);
        set_color_profile_slot(9, 4, 132, 255, 242);
    break;
    case 2: // summer
        set_color_profile_slot(9, 0, 186, 119, 28);
        set_color_profile_slot(9, 1, 255, 246, 140);
        set_color_profile_slot(9, 2, 89, 204, 233);
        set_color_profile_slot(9, 3, 255, 255, 255);
        set_color_profile_slot(9, 4, 132, 255, 242);
    break;
    case 3: // halloween
        set_color_profile_slot(9, 0, 180, 88, 0);
        set_color_profile_slot(9, 1, 33, 152, 0);
        set_color_profile_slot(9, 2, 168, 168, 168);
        set_color_profile_slot(9, 3, 255, 255, 255);
        set_color_profile_slot(9, 4, 132, 255, 242);
    break;
    case 4: // christmas
        set_color_profile_slot(9, 0, 148, 24, 24);
        set_color_profile_slot(9, 1, 255, 255, 255);
        set_color_profile_slot(9, 2, 50, 50, 50);
        set_color_profile_slot(9, 3, 255, 255, 255);
        set_color_profile_slot(9, 4, 132, 255, 242);
    break;
}

// i was peer pressured into adding this alt back
// you'll never know what it's actually based on
set_color_profile_slot(10, 0, 125, 36, 128);
set_color_profile_slot(10, 1, 173, 255, 244);
set_color_profile_slot(10, 2, 173, 255, 244);
set_color_profile_slot(10, 3, 255, 255, 255);
set_color_profile_slot(10, 4, 132, 255, 242);

//In-Game Battle
set_color_profile_slot(11, 0, 19, 19, 19);
set_color_profile_slot(11, 1, 250, 250, 250);
set_color_profile_slot(11, 2, 255, 255, 255);
set_color_profile_slot(11, 3, 255, 255, 255);
set_color_profile_slot(11, 4, 132, 255, 242);

/*
// fingers
set_color_profile_slot(10, 0, 53, 71, 46);
set_color_profile_slot(10, 1, 156, 11, 9);
set_color_profile_slot(10, 2, 145, 97, 80);
set_color_profile_slot(10, 3, 255, 255, 255);
set_color_profile_slot(10, 4, 132, 255, 242);