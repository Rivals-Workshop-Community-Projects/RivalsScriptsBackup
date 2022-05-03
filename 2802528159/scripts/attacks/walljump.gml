set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("0_walljump"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("walljump_hurt"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 10);