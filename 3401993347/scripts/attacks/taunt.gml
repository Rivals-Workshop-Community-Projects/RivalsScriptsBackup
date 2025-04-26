set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 32*3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 32);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("laugh"));
