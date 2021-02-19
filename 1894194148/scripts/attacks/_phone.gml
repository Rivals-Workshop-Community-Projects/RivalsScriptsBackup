set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("ar_phone"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, sprite_get("_pho_empty"));
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 1);

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 1);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 1);