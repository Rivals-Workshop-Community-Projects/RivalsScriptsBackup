set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate) + "28"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("climb2_hurt"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 0);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 10);