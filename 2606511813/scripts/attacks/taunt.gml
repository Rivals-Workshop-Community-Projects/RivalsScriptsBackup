set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox_spr"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 12);