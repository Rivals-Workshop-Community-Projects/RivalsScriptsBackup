set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "Dummy Says Bad Words (Taunt)");

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_bleep_start"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("sfx_bleep"));



set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "Rivals is a game for good little boys and girls");