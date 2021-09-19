set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//windup
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_troupple_fin_flap"));

//bless u
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("mfx_unstar"));

//endlag
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
