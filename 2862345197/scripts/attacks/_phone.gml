set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

// NOTE: It is not recommended to change the values for anything except for
// AG_WINDOW_ANIM_FRAMES and AG_WINDOW_ANIM_FRAME_START.

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_PHONE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_PHONE, 1, AG_WINDOW_SFX, sound_get("smw_spit"));

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_PHONE, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_PHONE, 3, AG_WINDOW_SFX, sound_get("smw_eat"));