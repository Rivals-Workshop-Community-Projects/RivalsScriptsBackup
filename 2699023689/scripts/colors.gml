set_num_palettes(6);

//DEFAULT COLOR (R,G,B)

set_color_profile_slot(0, 0, 243, 235, 253); //Body 1
set_color_profile_slot(0, 1, 253, 238, 253); //Body 2
set_color_profile_slot(0, 2, 69, 255, 64); //Eyes
set_color_profile_slot(0, 3, 93, 203, 241); //Sein
set_color_profile_slot(0, 4, 255, 200, 33); //Energy
set_color_profile_slot(0, 5, 255, 0, 0); //CSS Highlight

//ORIGINAL COLOR (When on palette 0, it will use this palette instead. This palette can't be reached manually.)
set_color_profile_slot(19, 0, 248, 245, 252); //Body 1
set_color_profile_slot(19, 1, 248, 245, 252); //Body 2
set_color_profile_slot(19, 2, 0, 0, 0); //Eyes
set_color_profile_slot(19, 3, 93, 203, 241); //Sein
set_color_profile_slot(19, 4, 255, 200, 33); //Energy
set_color_profile_slot(1, 5, 36, 208, 255); //CSS Highlight (every palette will use this slot.)

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 4, 40, 40); //Body 1
set_color_profile_slot_range(1, 4, 40, 40); //Body 2
set_color_profile_slot_range(2, 54, 40, 10); //Eyes
set_color_profile_slot_range(3, 54, 40, 60); //Sein
set_color_profile_slot_range(4, 54, 40, 40); //Energy
set_color_profile_slot_range(5, 0, 0, 0); //CSS Highlight

//Blue
set_color_profile_slot(1, 0, 196, 234, 249); //Body 1
set_color_profile_slot(1, 1, 196, 234, 249); //Body 2
set_color_profile_slot(1, 2, 0, 0, 0); //Eyes
set_color_profile_slot(1, 3, 157, 82, 213); //Sein
set_color_profile_slot(1, 4, 93, 125, 197); //Energy

//Red
set_color_profile_slot(2, 0, 240, 202, 202); //Body 1
set_color_profile_slot(2, 1, 202, 202, 202); //Body 2
set_color_profile_slot(2, 2, 0, 0, 0); //Eyes
set_color_profile_slot(2, 3, 255, 220, 114); //Sein
set_color_profile_slot(2, 4, 248, 125, 125); //Energy

//Green
set_color_profile_slot(3, 0, 218, 250, 226); //Body 1
set_color_profile_slot(3, 1, 218, 250, 226); //Body 2
set_color_profile_slot(3, 2, 0, 0, 0); //Eyes
set_color_profile_slot(3, 3, 248, 148, 134); //Sein
set_color_profile_slot(3, 4, 74, 115, 92); //Energy

//Black
set_color_profile_slot(4, 0, 67, 85, 133); //Body 1
set_color_profile_slot(4, 1, 67, 85, 133); //Body 2
set_color_profile_slot(4, 2, 200, 255, 53); //Eyes
set_color_profile_slot(4, 3, 200, 255, 53); //Sein
set_color_profile_slot(4, 4, 221, 227, 245); //Energy

//Purple
set_color_profile_slot(5, 0, 242, 198, 244); //Body 1
set_color_profile_slot(5, 1, 250, 247, 252); //Body 2
set_color_profile_slot(5, 2, 0, 0, 0); //Eyes
set_color_profile_slot(5, 3, 222, 170, 255); //Sein
set_color_profile_slot(5, 4, 92, 255, 192); //Energy