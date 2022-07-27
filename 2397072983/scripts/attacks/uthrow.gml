set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("parry"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_parry_use"));



