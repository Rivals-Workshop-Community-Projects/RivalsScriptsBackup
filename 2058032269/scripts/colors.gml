//main color
set_color_profile_slot(0, 0, 237, 28, 36); //red
set_color_profile_slot(0, 1, 140, 101, 49); //boots
set_color_profile_slot(0, 2, 248, 203, 61); //gloves (victory screen)
set_color_profile_slot(0, 3, 45, 45, 45); //shirt????
set_color_profile_slot(0, 4, 255, 0, 93); //tongue
set_color_profile_slot(0, 5, 224, 224, 224); //cup + eyes

//color ranges
set_color_profile_slot_range(0, 2, 1, 44);
set_color_profile_slot_range(1, 1, 1, 23);
set_color_profile_slot_range(2, 7, 11, 26);
set_color_profile_slot_range(3, 1, 1, 6);
set_color_profile_slot_range(4, 1, 1, 32);
set_color_profile_slot_range(5, 137, 20, 21);


// ALTERNATE COLORS
set_num_palettes(11);

//Mugman
set_color_profile_slot(1, 0, 1, 166, 255);
set_color_profile_slot(1, 1, 140, 101, 49);
set_color_profile_slot(1, 2, 248, 203, 61);
set_color_profile_slot(1, 3, 45, 45, 45);
set_color_profile_slot(1, 4, 255, 0, 93);
set_color_profile_slot(1, 5, 224, 224, 224);

//Parry
set_color_profile_slot(2, 0, 255, 0, 179);
set_color_profile_slot(2, 1, 255, 0, 179);
set_color_profile_slot(2, 2, 255, 143, 249);
set_color_profile_slot(2, 3, 59, 26, 42);
set_color_profile_slot(2, 4, 255, 0, 93);
set_color_profile_slot(2, 5, 224, 224, 224);

//Soundtrack Art
set_color_profile_slot(3, 0, 255, 238, 0);
set_color_profile_slot(3, 1, 255, 238, 0);
set_color_profile_slot(3, 2, 255, 255, 255);
set_color_profile_slot(3, 3, 45, 45, 45);
set_color_profile_slot(3, 4, 255, 238, 0);
set_color_profile_slot(3, 5, 224, 224, 224);

//Black and White
set_color_profile_slot(4, 0, 191, 191, 191);
set_color_profile_slot(4, 1, 92, 92, 92);
set_color_profile_slot(4, 2, 255, 255, 255);
set_color_profile_slot(4, 3, 45, 45, 45);
set_color_profile_slot(4, 4, 140, 140, 140);
set_color_profile_slot(4, 5, 224, 224, 224);

//Bad Ending
set_color_profile_slot(5, 0, 208, 0, 255);
set_color_profile_slot(5, 1, 140, 101, 49);
set_color_profile_slot(5, 2, 248, 203, 61);
set_color_profile_slot(5, 3, 45, 45, 45);
set_color_profile_slot(5, 4, 255, 0, 93);
set_color_profile_slot(5, 5, 224, 224, 224);

//Djimmi the Great
set_color_profile_slot(6, 0, 0, 207, 169);
set_color_profile_slot(6, 1, 237, 28, 36);
set_color_profile_slot(6, 2, 248, 203, 61);
set_color_profile_slot(6, 3, 237, 28, 36);
set_color_profile_slot(6, 4, 255, 0, 93);
set_color_profile_slot(6, 5, 224, 224, 224);

//Abyss
set_color_profile_slot(9, 0, 144, 59, 204);
set_color_profile_slot(9, 1, 63, 0, 112);
set_color_profile_slot(9, 2, 144, 136, 204);
set_color_profile_slot(9, 3, 35, 27, 48);
set_color_profile_slot(9, 4, 153, 97, 171);
set_color_profile_slot(9, 5, 224, 224, 224);

//Early-Access
set_color_profile_slot(10, 0, 83, 122, 62);
set_color_profile_slot(10, 1, 35, 67, 49);
set_color_profile_slot(10, 2, 215, 226, 174);
set_color_profile_slot(10, 3, 35, 67, 49);
set_color_profile_slot(10, 4, 83, 122, 62);
set_color_profile_slot(10, 5, 215, 226, 174);

//Special Alts

//Bendy the Dancing Demon
set_color_profile_slot(7, 0, 20, 20, 20);
set_color_profile_slot(7, 1, 20, 20, 20);
set_color_profile_slot(7, 2, 255, 255, 255);
set_color_profile_slot(7, 3, 20, 20, 20);
set_color_profile_slot(7, 4, 140, 140, 140);
set_color_profile_slot(7, 5, 224, 224, 224);

switch (get_match_setting(SET_SEASON)) { //Seasonal Colors (thank you based supersonicnk)
    case 1: // valentines
        set_color_profile_slot(8, 0, 255, 0, 140);
        set_color_profile_slot(8, 1, 120, 23, 23);
        set_color_profile_slot(8, 2, 255, 181, 181);
        set_color_profile_slot(8, 3, 31, 6, 6);
        set_color_profile_slot(8, 4, 255, 0, 93);
        set_color_profile_slot(8, 5, 224, 224, 224);
    break;
    case 2: // summer
        set_color_profile_slot(8, 0, 255, 166, 40);
        set_color_profile_slot(8, 1, 89, 204, 233);
        set_color_profile_slot(8, 2, 255, 246, 140);
        set_color_profile_slot(8, 3, 120, 0, 0);
        set_color_profile_slot(8, 4, 255, 0, 93);
        set_color_profile_slot(8, 5, 224, 224, 224);
    break;
    case 3: // halloween
        set_color_profile_slot(8, 0, 255, 148, 34);
        set_color_profile_slot(8, 1, 93, 138, 78);
        set_color_profile_slot(8, 2, 173, 255, 145);
        set_color_profile_slot(8, 3, 11, 46, 9);
        set_color_profile_slot(8, 4, 255, 0, 93);
        set_color_profile_slot(8, 5, 224, 224, 224);
    break;
    case 4: // christmas
        set_color_profile_slot(8, 0, 12, 176, 74);
        set_color_profile_slot(8, 1, 237, 28, 36);
        set_color_profile_slot(8, 2, 248, 203, 61);
        set_color_profile_slot(8, 3, 45, 45, 45);
        set_color_profile_slot(8, 4, 255, 0, 93);
        set_color_profile_slot(8, 5, 224, 224, 224);
    break;
}