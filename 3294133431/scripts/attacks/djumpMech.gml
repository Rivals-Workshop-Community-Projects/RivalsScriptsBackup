set_attack_value(AT_EXTRA_1, AG_SPRITE, asset_get("mech_hover"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("mech_hover"));
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);

//start
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);

//up
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//up pre-end
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//end
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 19);
//set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_EXTRA_1, 0);