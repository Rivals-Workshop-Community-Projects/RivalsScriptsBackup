set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspec"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);