set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("secret_taunt"));
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2)
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("carol_hurtbox_standing"));
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 150);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 20);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("motorbike_start"))