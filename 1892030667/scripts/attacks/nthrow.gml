set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("intro"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("empty_sprite"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 2);


set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 9);
// set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("mfx_confirm"));
// set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 6);