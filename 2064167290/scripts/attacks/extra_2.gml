// DTILT BOUNCE
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dtiltbounce"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("dtiltbounce_hurt"));
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 11);

set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2)


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("bounce"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED, -11);