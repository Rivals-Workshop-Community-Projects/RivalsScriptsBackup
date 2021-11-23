//DEFAULT COLOR (R,G,B)

//RGB - HSV
//150:150:150 -   0:  0: 58
// 96: 96: 96 -   0:  0: 37 - Main color
// 72: 72: 72 -   0:  0: 28
// 32: 32: 32 -   0:  0: 12
set_color_profile_slot(0, 0,  96,  96,  96); //Body
set_color_profile_slot_range(0,  1,  1, 26);

//RGB - HSV
//250:250:250 -   0:  0: 98 - Main color
//227:227:227 -   0:  0: 89
set_color_profile_slot(0, 1, 250, 250, 250); //"Sclera"
set_color_profile_slot_range(1,  1,  1, 12);

//RGB - HSV
// 13:  0: 31 - 265:100: 12 - Main color
set_color_profile_slot(0, 2,  13,   0,  31); //Eye
set_color_profile_slot_range(2,  1,  1,  1);
//==============================================================

set_num_palettes(6);

// Shiny
set_color_profile_slot(1, 0,  68, 113, 189); //Body
set_color_profile_slot(1, 1, 235, 255, 248); //Sclera
set_color_profile_slot(1, 2,  14,   0, 143); //Eye

// Voltorb
set_color_profile_slot(2, 0, 186,  33,  58); //Body
set_color_profile_slot(2, 1, 245, 245, 245); //Sclera
set_color_profile_slot(2, 2,  42,  40,  40); //Eye

// Green
set_color_profile_slot(3, 0, 186,  33,  58); //Body
set_color_profile_slot(3, 1, 245, 245, 245); //Sclera
set_color_profile_slot(3, 2,  42,  40,  40); //Eye

// Black
set_color_profile_slot(4, 0,  50,  50,  50); //Body
set_color_profile_slot(4, 1, 250, 250, 250); //Sclera
set_color_profile_slot(4, 2,  13,   0,  40); //Eye

// White
set_color_profile_slot(5, 0, 186,  33,  58); //Body
set_color_profile_slot(5, 1, 245, 245, 245); //Sclera
set_color_profile_slot(5, 2,  42,  40,  40); //Eye

// Purple
set_color_profile_slot(6, 0, 186,  33,  58); //Body
set_color_profile_slot(6, 1, 245, 245, 245); //Sclera
set_color_profile_slot(6, 2,  42,  40,  40); //Eye