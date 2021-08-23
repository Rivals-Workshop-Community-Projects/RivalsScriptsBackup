set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//Taunt A
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_icehit_weak1"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 55);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("mfx_flashy_shing"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_GOTO, 7);

//Taunt B
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 19);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 25);