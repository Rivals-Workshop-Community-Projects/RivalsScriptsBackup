//I am literally using this attack index because I don't have any others left lol.

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("exit_bike"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("exit_bike_hurt"));
set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_EXCLUDE, 1);


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("motorbike_throw2"));
