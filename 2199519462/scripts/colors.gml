set_num_palettes(14);

//DEFAULT COLOR (R,G,B) (Cherry)

set_color_profile_slot(0, 0, 173, 5, 5); //FILLING
set_color_profile_slot(0, 1, 226, 187, 138); //CRUST
set_color_profile_slot(0, 2, 150, 90, 18); //TIPS
set_color_profile_slot(0, 3, 57, 127, 19); //LEAVES
set_color_profile_slot(0, 4, 68, 3, 3); //EYES
set_color_profile_slot(0, 5, 240, 200, 152); //BURNT TINT

set_color_profile_slot(0, 7, 255, 244, 232); //FLOUR
set_color_profile_slot(0, 8, 255, 218, 119); //BUTTER
set_color_profile_slot(0, 9, 191, 99, 45); //SUGAR

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 1, 20, 25); //FILLING
set_color_profile_slot_range(1, 4, 39, 19); //CRUST
set_color_profile_slot_range(2, 6, 6, 21); //TIPS
set_color_profile_slot_range(3, 3, 16, 21); //LEAVES
set_color_profile_slot_range(4, 1, 6, 13); //EYES
set_color_profile_slot_range(5, 0, 0, 0); //SANDBERT

//Blue Color (Blueberry)
set_color_profile_slot(1, 0, 65, 29, 127); //FILLING
set_color_profile_slot(1, 1, 242, 220, 193); //CRUST
set_color_profile_slot(1, 2, 173, 127, 71); //TIPS
set_color_profile_slot(1, 3, 57, 127, 19); //LEAVES
set_color_profile_slot(1, 4, 19, 9, 68); //EYES
set_color_profile_slot(1, 5, 127, 161, 255); //SANDBERT
set_color_profile_slot(1, 5, 255, 221, 181); //BURNT TINT
/*
set_color_profile_slot(1, 0, 70, 50, 158); //FILLING
set_color_profile_slot(1, 1, 242, 220, 193); //CRUST
set_color_profile_slot(1, 2, 173, 127, 71); //TIPS
set_color_profile_slot(1, 3, 57, 127, 19); //LEAVES
set_color_profile_slot(1, 4, 19, 9, 68); //EYES
set_color_profile_slot(1, 5, 127, 161, 255); //SANDBERT
set_color_profile_slot(1, 5, 255, 224, 232); //BURNT TINT
*/

//Red Color (Pumpkin)
set_color_profile_slot(2, 0, 186, 99, 0); //FILLING
set_color_profile_slot(2, 1, 214, 142, 69); //CRUST
set_color_profile_slot(2, 2, 135, 59, 16); //TIPS
set_color_profile_slot(2, 3, 226, 187, 138); //LEAVES
set_color_profile_slot(2, 4, 91, 33, 0); //EYES
set_color_profile_slot(2, 5, 255, 200, 181); //BURNT TINT

//Green Color (Key Lime)
set_color_profile_slot(3, 0, 230, 220, 112); //FILLING
set_color_profile_slot(3, 1, 265, 265, 255); //CRUST
set_color_profile_slot(3, 2, 150, 90, 18); //TIPS
set_color_profile_slot(3, 3, 178, 206, 101); //LEAVES
set_color_profile_slot(3, 4, 41, 76, 9); //EYES
set_color_profile_slot(3, 5, 242, 255, 173); //BURNT TINT

//Black Color (Chocolate)
set_color_profile_slot(4, 0, 158, 98, 58); //FILLING
set_color_profile_slot(4, 1, 73, 51, 36); //CRUST
set_color_profile_slot(4, 2, 242, 216, 198); //TIPS
set_color_profile_slot(4, 3, 204, 122, 75); //LEAVES
set_color_profile_slot(4, 4, 204, 166, 144); //EYES
set_color_profile_slot(4, 5, 142, 99, 74); //BURNT TINT

//Yellow Color (Banana Cream)
/*
set_color_profile_slot(5, 0, 255, 196, 89); //FILLING
set_color_profile_slot(5, 1, 255, 241, 229); //CRUST
set_color_profile_slot(5, 2, 211, 154, 84); //TIPS
set_color_profile_slot(5, 3, 226, 187, 138); //LEAVES
set_color_profile_slot(5, 4, 183, 139, 44); //EYES
*/

//Yellow Color (Lemon Meringue)
set_color_profile_slot(5, 0, 255, 199, 0); //FILLING
set_color_profile_slot(5, 1, 255, 250, 247); //CRUST
set_color_profile_slot(5, 2, 219, 172, 133); //TIPS
set_color_profile_slot(5, 3, 255, 208, 0); //LEAVES
set_color_profile_slot(5, 4, 142, 92, 0); //EYES
set_color_profile_slot(5, 5, 255, 255, 135); //SANDBERT
set_color_profile_slot(5, 5, 255, 233, 147); //BURNT TINT

//Pink Color (pinkie pie!!)
set_color_profile_slot(6, 0, 183, 73, 124); //FILLING
set_color_profile_slot(6, 1, 242, 179, 204); //CRUST
set_color_profile_slot(6, 2, 204, 69 /*nice*/, 123); //TIPS
set_color_profile_slot(6, 3, 233, 65, 136); //LEAVES
set_color_profile_slot(6, 4, 0, 78, 112); //EYES
set_color_profile_slot(6, 5, 255, 158, 183); //BURNT TINT

//Seasonal
set_color_profile_slot(7, 0, 255, 141, 2); //FILLING
set_color_profile_slot(7, 1, 242, 196, 128); //CRUST
set_color_profile_slot(7, 2, 216, 145, 97); //TIPS
set_color_profile_slot(7, 3, 255, 244, 244); //LEAVES
set_color_profile_slot(7, 4, 0, 78, 112); //EYES
set_color_profile_slot(7, 5, 255, 178, 239); //BURNT TINT
switch(get_match_setting(SET_SEASON)) {
case 2: //Summer
set_color_profile_slot(7, 0, 255, 141, 2); //FILLING
set_color_profile_slot(7, 1, 242, 196, 128); //CRUST
set_color_profile_slot(7, 2, 216, 145, 97); //TIPS
set_color_profile_slot(7, 3, 255, 244, 244); //LEAVES
set_color_profile_slot(7, 4, 0, 78, 112); //EYES
set_color_profile_slot(7, 5, 255, 178, 239); //BURNT TINT
break;
case 3: //Halloween
set_color_profile_slot(7, 0, 232, 228, 127); //FILLING
set_color_profile_slot(7, 1, 191, 114, 43); //CRUST
set_color_profile_slot(7, 2, 145, 67, 0); //TIPS
set_color_profile_slot(7, 3, 247, 136, 71); //LEAVES
set_color_profile_slot(7, 4, 24, 81, 0); //EYES
set_color_profile_slot(7, 5, 219, 168, 107); //BURNT TINT
break;
}

//Pizza Pie
set_color_profile_slot(8, 0, 211, 60, 14); //FILLING
set_color_profile_slot(8, 1, 255, 233, 196); //CRUST
set_color_profile_slot(8, 2, 234, 144, 53); //TIPS
set_color_profile_slot(8, 3, 68, 107, 37); //LEAVES
set_color_profile_slot(8, 4, 202, 62, 48); //EYES
set_color_profile_slot(8, 5, 255, 197, 127); //BURNT TINT

//Blackberry Pie
set_color_profile_slot(9, 0, 67, 0, 73); //FILLING
set_color_profile_slot(9, 1, 239, 223, 186); //CRUST
set_color_profile_slot(9, 2, 191, 146, 155); //TIPS
set_color_profile_slot(9, 3, 109, 181, 33); //LEAVES
set_color_profile_slot(9, 4, 8, 6, 9); //EYES
set_color_profile_slot(9, 5, 236, 169, 242); //BURNT TINT

//Butterscotch Cinnamon Pie
set_color_profile_slot(10, 0, 179, 119, 69); //FILLING
set_color_profile_slot(10, 1, 249, 205, 130); //CRUST
set_color_profile_slot(10, 2, 151, 65, 30); //TIPS
set_color_profile_slot(10, 3, 177, 119, 69); //LEAVES
set_color_profile_slot(10, 4, 88, 43, 20); //EYES
set_color_profile_slot(10, 5, 242, 200, 164); //BURNT TINT

//Possum Pie
set_color_profile_slot(11, 0, 96, 62, 38); //FILLING
set_color_profile_slot(11, 1, 255, 253, 252); //CRUST
set_color_profile_slot(11, 2, 150, 105, 82); //TIPS
set_color_profile_slot(11, 3, 150, 105, 82); //LEAVES
set_color_profile_slot(11, 4, 38, 22, 14); //EYES
set_color_profile_slot(11, 5, 234, 197, 164); //BURNT TINT

//Magpie
set_color_profile_slot(12, 0, 254, 254, 255); //FILLING
set_color_profile_slot(12, 1, 54, 63, 63); //CRUST
set_color_profile_slot(12, 2, 230, 230, 230); //TIPS
set_color_profile_slot(12, 3, 10, 95, 137); //LEAVES
set_color_profile_slot(12, 4, 255, 149, 104); //EYES
set_color_profile_slot(12, 5, 125, 165, 158); //BURNT TINT


//Grasshopper pie
set_color_profile_slot(13, 0, 201, 247, 165); //FILLING
set_color_profile_slot(13, 1, 212, 252, 215); //CRUST
set_color_profile_slot(13, 2, 85, 61, 57); //TIPS
set_color_profile_slot(13, 3, 123, 63, 50); //LEAVES
set_color_profile_slot(13, 4, 62, 43, 34); //EYES
set_color_profile_slot(13, 5, 191, 242, 150); //BURNT TINT

//Apple pie
set_color_profile_slot(14, 0, 216, 205, 89); //FILLING
set_color_profile_slot(14, 1, 209, 152, 91); //CRUST
set_color_profile_slot(14, 2, 190, 130, 80); //TIPS
set_color_profile_slot(14, 3, 99, 114, 59); //LEAVES
set_color_profile_slot(14, 4, 43, 66, 0); //EYES
set_color_profile_slot(14, 5, 255, 218, 124); //BURNT TINT