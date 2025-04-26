//after everything is done change shirt shadow to be the 0th color slot and change its color in the actual sprites to grey so particles are colored right

set_num_palettes(14);

set_color_profile_slot( 0, 0, 117, 117, 117 );		//shirt
set_color_profile_slot_range( 0, 1, 1, 1 );
set_color_profile_slot( 0, 1, 200, 168, 17 );		//shirt shadow
set_color_profile_slot_range( 1, 1, 1, 1 );
set_color_profile_slot( 0, 2, 160, 56, 0 );			//skin shadow
set_color_profile_slot_range( 2, 1, 1, 1 );
set_color_profile_slot( 0, 3, 255, 170, 131 );		//skin
set_color_profile_slot_range( 3, 1, 1, 1 );
set_color_profile_slot( 0, 4, 26, 26, 26 );			//pants
set_color_profile_slot_range( 4, 1, 1, 1 );
set_color_profile_slot( 0, 5, 232, 80, 152 );		//brain
set_color_profile_slot_range( 5, 1, 1, 1 );
set_color_profile_slot( 0, 6, 152, 80, 248 );		//phone
set_color_profile_slot_range( 6, 1, 1, 1 );
set_color_profile_slot( 0, 7, 80, 0, 184 );			//phone shadow (remove this if more slots are needed)
set_color_profile_slot_range( 7, 1, 1, 1 );

//classic cook

//woag
set_color_profile_slot( 1, 0, 248, 224, 128 );
set_color_profile_slot( 1, 1, 219, 167, 97 );
set_color_profile_slot( 1, 2, 160, 56, 0 );
set_color_profile_slot( 1, 3, 255, 170, 131 );
set_color_profile_slot( 1, 4, 216, 136, 24 );
set_color_profile_slot( 1, 5, 255, 0, 0 );
set_color_profile_slot( 1, 6, 248, 224, 128 );
set_color_profile_slot( 1, 7, 216, 136, 24 );

//sage
set_color_profile_slot( 2, 0, 48, 168, 248 );
set_color_profile_slot( 2, 1, 24, 83, 122 );
set_color_profile_slot( 2, 2, 160, 56, 0 );
set_color_profile_slot( 2, 3, 255, 170, 131 );
set_color_profile_slot( 2, 4, 26, 26, 26 );
set_color_profile_slot( 2, 5, 232, 80, 152 );
set_color_profile_slot( 2, 6, 152, 80, 248 );
set_color_profile_slot( 2, 7, 80, 0, 184 );

//perfect clone
set_color_profile_slot( 3, 0, 152, 80, 248 );
set_color_profile_slot( 3, 1, 80, 0, 184 );
set_color_profile_slot( 3, 2, 160, 56, 0 );
set_color_profile_slot( 3, 3, 255, 170, 131 );
set_color_profile_slot( 3, 4, 26, 26, 26 );
set_color_profile_slot( 3, 5, 232, 80, 152 );
set_color_profile_slot( 3, 6, 152, 80, 248 );
set_color_profile_slot( 3, 7, 80, 0, 184 );

//black
set_color_profile_slot( 4, 0, 26, 26, 26 );
set_color_profile_slot( 4, 1, 15, 15, 15 );
set_color_profile_slot( 4, 2, 160, 56, 0 );
set_color_profile_slot( 4, 3, 255, 170, 131 );
set_color_profile_slot( 4, 4, 0, 0, 0 );
set_color_profile_slot( 4, 5, 232, 80, 152 );
set_color_profile_slot( 4, 6, 152, 80, 248 );
set_color_profile_slot( 4, 7, 80, 0, 184 );

//peddito
set_color_profile_slot( 5, 0, 255, 57, 198 );
set_color_profile_slot( 5, 1, 161, 38, 156 );
set_color_profile_slot( 5, 2, 160, 56, 0 );
set_color_profile_slot( 5, 3, 255, 170, 131 );
set_color_profile_slot( 5, 4, 255, 0, 0 );
set_color_profile_slot( 5, 5, 0, 0, 255 );
set_color_profile_slot( 5, 6, 0, 0, 255 );
set_color_profile_slot( 5, 7, 0, 0, 113 );

//RED Spy
set_color_profile_slot( 6, 0, 153, 101, 93 );
set_color_profile_slot( 6, 1, 138, 66, 66 );
set_color_profile_slot( 6, 2, 160, 56, 0 );
set_color_profile_slot( 6, 3, 255, 170, 131 );
set_color_profile_slot( 6, 4, 138, 66, 66 );
set_color_profile_slot( 6, 5, 255, 170, 131 );
set_color_profile_slot( 6, 6, 158, 154, 155 );
set_color_profile_slot( 6, 7, 88, 83, 89 );

//BLU Spy
set_color_profile_slot( 7, 0, 80, 112, 152 );
set_color_profile_slot( 7, 1, 60, 86, 138 );
set_color_profile_slot( 7, 2, 160, 56, 0 );
set_color_profile_slot( 7, 3, 255, 170, 131 );
set_color_profile_slot( 7, 4, 60, 86, 138 );
set_color_profile_slot( 7, 5, 255, 170, 131 );
set_color_profile_slot( 7, 6, 158, 154, 155 );
set_color_profile_slot( 7, 7, 88, 83, 89 );

//happy hour
set_color_profile_slot( 8, 0, 170, 255, 0 );
set_color_profile_slot( 8, 1, 51, 153, 0 );
set_color_profile_slot( 8, 2, 153, 0, 0 );
set_color_profile_slot( 8, 3, 255, 0, 0 );
set_color_profile_slot( 8, 4, 30, 26, 51 );
set_color_profile_slot( 8, 5, 255, 170, 131 );
set_color_profile_slot( 8, 6, 255, 217, 0 );
set_color_profile_slot( 8, 7, 255, 160, 0 );

//happier hour
set_color_profile_slot( 9, 0, 255, 0, 0 );
set_color_profile_slot( 9, 1, 153, 0, 0 );
set_color_profile_slot( 9, 2, 51, 153, 0 );
set_color_profile_slot( 9, 3, 170, 255, 0 );
set_color_profile_slot( 9, 4, 30, 26, 51 );
set_color_profile_slot( 9, 5, 255, 170, 131 );
set_color_profile_slot( 9, 6, 255, 217, 0 );
set_color_profile_slot( 9, 7, 255, 160, 0 );

//Wario time never ends
set_color_profile_slot( 10, 0, 255, 255, 0 );
set_color_profile_slot( 10, 1, 200, 168, 17 );
set_color_profile_slot( 10, 2, 160, 56, 0 );
set_color_profile_slot( 10, 3, 255, 170, 131 );
set_color_profile_slot( 10, 4, 128, 0, 224 );
set_color_profile_slot( 10, 5, 248, 0, 112 );
set_color_profile_slot( 10, 6, 216, 16, 240 );
set_color_profile_slot( 10, 7, 128, 0, 224 );

//boy with game
set_color_profile_slot( 11, 0, 211, 226, 154 );
set_color_profile_slot( 11, 1, 167, 186, 74 );
set_color_profile_slot( 11, 2, 83, 122, 62 );
set_color_profile_slot( 11, 3, 167, 186, 74 );
set_color_profile_slot( 11, 4, 35, 67, 49 );
set_color_profile_slot( 11, 5, 35, 67, 49 );
set_color_profile_slot( 11, 6, 83, 122, 62 );
set_color_profile_slot( 11, 7, 35, 67, 49 );

//abyss
set_color_profile_slot( 12, 0, 79, 61, 94 );
set_color_profile_slot( 12, 1, 51, 35, 67 );
set_color_profile_slot( 12, 2, 111, 127, 188 );
set_color_profile_slot( 12, 3, 167, 182, 217 );
set_color_profile_slot( 12, 4, 21, 15, 27 );
set_color_profile_slot( 12, 5, 220, 113, 255 );
set_color_profile_slot( 12, 6, 255, 255, 255 );
set_color_profile_slot( 12, 7, 79, 61, 94 );

//black and white
set_color_profile_slot( 13, 0, 255, 255, 255 );
set_color_profile_slot( 13, 1, 255, 255, 255 );
set_color_profile_slot( 13, 2, 255, 255, 255 );
set_color_profile_slot( 13, 3, 255, 255, 255 );
set_color_profile_slot( 13, 4, 0, 0, 0 );
set_color_profile_slot( 13, 5, 0, 0, 0 );
set_color_profile_slot( 13, 6, 255, 255, 255 );
set_color_profile_slot( 13, 7, 0, 0, 0 );
