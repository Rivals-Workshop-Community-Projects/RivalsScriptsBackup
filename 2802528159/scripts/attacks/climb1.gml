set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get(string(plate) + "26"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("climb1_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 0);

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 10);