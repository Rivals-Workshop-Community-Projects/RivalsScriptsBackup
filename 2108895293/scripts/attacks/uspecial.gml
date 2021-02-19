set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

//usps1 usps2 usph  uspac uspe  uspr
//0-0:1 1-2:2 3-3:1 4-5:2 6-7:2 8-8:1

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);