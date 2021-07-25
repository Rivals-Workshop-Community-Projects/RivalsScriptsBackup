set_attack_value(AT_SPECIALFAIL, AG_CATEGORY, 2);
set_attack_value(AT_SPECIALFAIL, AG_SPRITE, sprite_get("special_fail"));
set_attack_value(AT_SPECIALFAIL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_SPECIALFAIL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_SPECIALFAIL, AG_OFF_LEDGE, 1);
set_attack_value(AT_SPECIALFAIL, AG_AIR_SPRITE, sprite_get("special_fail"));
set_attack_value(AT_SPECIALFAIL, AG_HURTBOX_SPRITE, sprite_get("special_fail_hurt"));

set_window_value(AT_SPECIALFAIL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_SPECIALFAIL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_SPECIALFAIL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SPECIALFAIL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_SPECIALFAIL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_taunt"));
set_window_value(AT_SPECIALFAIL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_SPECIALFAIL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_SPECIALFAIL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_SPECIALFAIL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_SPECIALFAIL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_SPECIALFAIL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_SPECIALFAIL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_SPECIALFAIL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SPECIALFAIL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_SPECIALFAIL, 0);