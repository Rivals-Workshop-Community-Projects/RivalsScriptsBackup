set_attack_value(AT_NTHROW, AG_CATEGORY, 0);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 42);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_crunch"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 11);