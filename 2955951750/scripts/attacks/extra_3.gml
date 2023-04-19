set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("shieldbroken"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("shieldbroken"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("oxob_hurtbox"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1); // initial stun
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_dizzy"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9); // loop
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1); //endlag
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_EXTRA_3, 0);
