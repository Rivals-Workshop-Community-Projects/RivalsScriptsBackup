set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, hurtbox_spr);

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_retract"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 16);