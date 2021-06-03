set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "the funny yell (taunt)");

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("bruh"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 29);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("mfx_confirm"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "im scared

- trummel");