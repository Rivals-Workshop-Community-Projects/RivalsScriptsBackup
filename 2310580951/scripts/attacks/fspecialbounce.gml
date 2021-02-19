//The rebound when hitting a wall out of a Dive
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("hurt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 6);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);