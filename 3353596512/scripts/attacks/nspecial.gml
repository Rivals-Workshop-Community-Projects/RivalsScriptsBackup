set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
//set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//open terminal
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//window open
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 64);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//type right
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 2);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//type left
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_GOTO, 2);
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//cancel
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 18);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_num_hitboxes(AT_NSPECIAL, 1);
