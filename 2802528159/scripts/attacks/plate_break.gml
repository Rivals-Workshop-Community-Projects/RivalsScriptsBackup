set_attack_value(AT_EXTRA_1, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("plate_break"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("plate_break"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));