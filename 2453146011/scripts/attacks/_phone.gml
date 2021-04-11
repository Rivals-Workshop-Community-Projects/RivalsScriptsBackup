set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, sprite_get("_pho_empty"));
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 6);

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 10);