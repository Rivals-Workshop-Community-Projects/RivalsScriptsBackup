set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));


//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 10);

// Punch 1
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("sfx_at_punch_01"));
//set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 6);

// Punch 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("sfx_at_punch_02"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 6);

// Kick
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("sfx_at_kick_01"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 18); //18
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, sound_get("sfx_footstep_run_l"));
set_window_value(AT_JAB, 9, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 12); //12
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_SFX, sound_get("sfx_footstep_walk_r"));
set_window_value(AT_JAB, 10, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_WHIFFLAG, 1);



//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_JAB, 3);


// Punch 1

//set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60); //46
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50); //26
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("sfx_hit_punch"));
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1.2); // Edit this
//set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 8); // Edit this
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6); //0
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);


// Punch 2

//set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2); //2
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 39); //34
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -36); //-33
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60); //46
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 50); //26
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("sfx_hit_punch"));
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1.7); // Edit this
//set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 10); // Edit this
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

// Kick

//set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
//set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4); //2
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 38); //34
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -39); //-33
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 56); //26
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.7);
//set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("sfx_hit_punch_ko"));
//set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 2); // Edit this
//set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 10); // Edit this
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

