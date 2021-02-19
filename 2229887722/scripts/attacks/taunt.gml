set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
//set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
//set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox"));

//Pre jump
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Jump
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 2);

//Wave
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED_TYPE, 1);

//Fall
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 15);

//Fall Loop
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 8);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 16);

//Land
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 17);