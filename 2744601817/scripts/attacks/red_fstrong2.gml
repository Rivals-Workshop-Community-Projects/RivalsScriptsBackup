set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("rfstrong"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("rfstrong_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 6);

//Startup 1
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 6);

//Flip
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//Slam
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//Spin
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 11);

//Throw
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 13);

//Recovery
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_FTHROW, 2);

//Throw
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 17*2);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -26*2);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 40*2);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 23*2);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Slam
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, -22*2);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -8*2);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 40*2);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 23*2);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));