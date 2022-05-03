// CQC Hold and Throws

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));


//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 29);

// Grab Antic
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("sfx_at_punch_02"));


// Grab
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

// Hold - Start
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, sound_get("sfx_at_grab"));

// Hold - Idle
//set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 9); // 9 - Loop
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 8);

// Drag - Start
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HSPEED, -1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);

// Drag - Move
set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NTHROW, 6, AG_WINDOW_HSPEED, -2);
set_window_value(AT_NTHROW, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

// Turn
set_window_value(AT_NTHROW, 7, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 14);


// Interrogate - Start
set_window_value(AT_NTHROW, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_NTHROW, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_SFX, sound_get("sfx_w_knife_draw"));

// Interrogate - Idle
set_window_value(AT_NTHROW, 9, AG_WINDOW_TYPE, 9); // 9 - Loop
set_window_value(AT_NTHROW, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAME_START, 21);

// Interrogate - End
set_window_value(AT_NTHROW, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 10, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_NTHROW, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 10, AG_WINDOW_SFX, sound_get("sfx_w_knife_sheath"));


// Chokehold - Start
set_window_value(AT_NTHROW, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 11, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_NTHROW, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 11, AG_WINDOW_SFX, sound_get("sfx_at_grab_choke"));

// Chokehold - Idle
//set_window_value(AT_NTHROW, 12, AG_WINDOW_TYPE, 9); // 9 - Loop
set_window_value(AT_NTHROW, 12, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 12, AG_WINDOW_ANIM_FRAME_START, 25);

// Chokehold - Pummel
set_window_value(AT_NTHROW, 13, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 13, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_NTHROW, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 13, AG_WINDOW_SFX, sound_get("sfx_at_grab_choke_pummel"));

// Chokehold - End
set_window_value(AT_NTHROW, 14, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 14, AG_WINDOW_ANIM_FRAME_START, 24);


// FThrow - Turn
set_window_value(AT_NTHROW, 15, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 15, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NTHROW, 15, AG_WINDOW_INVINCIBILITY, 1);

// FThrow - Antic
set_window_value(AT_NTHROW, 16, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 16, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_NTHROW, 16, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 16, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NTHROW, 16, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
set_window_value(AT_NTHROW, 16, AG_WINDOW_INVINCIBILITY, 1);

// FThrow - Move
set_window_value(AT_NTHROW, 17, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 17, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 17, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_NTHROW, 17, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 17, AG_WINDOW_HSPEED, 1);
set_window_value(AT_NTHROW, 17, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 17, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NTHROW, 17, AG_WINDOW_SFX, sound_get("sfx_hit_cqc_ko"));
set_window_value(AT_NTHROW, 17, AG_WINDOW_INVINCIBILITY, 1);

// FThrow - End
set_window_value(AT_NTHROW, 18, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 18, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 18, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_NTHROW, 18, AG_WINDOW_INVINCIBILITY, 1);


// BThrow - Antic
set_window_value(AT_NTHROW, 19, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 19, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 19, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_NTHROW, 19, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 19, AG_WINDOW_SFX, sound_get("sfx_at_cqc"));
set_window_value(AT_NTHROW, 19, AG_WINDOW_INVINCIBILITY, 1);

// BThrow - Move
set_window_value(AT_NTHROW, 20, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 20, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 20, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_NTHROW, 20, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 20, AG_WINDOW_HSPEED, 1);
set_window_value(AT_NTHROW, 20, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 20, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NTHROW, 20, AG_WINDOW_SFX, sound_get("sfx_hit_cqc_ko"));
set_window_value(AT_NTHROW, 20, AG_WINDOW_INVINCIBILITY, 1);

// BThrow - End
set_window_value(AT_NTHROW, 21, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 21, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 21, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_NTHROW, 21, AG_WINDOW_INVINCIBILITY, 1);


// UThrow - Turn
set_window_value(AT_NTHROW, 22, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 22, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 22, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NTHROW, 22, AG_WINDOW_INVINCIBILITY, 1);

// UThrow - Antic
set_window_value(AT_NTHROW, 23, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 23, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 23, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_NTHROW, 23, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 23, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NTHROW, 23, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
set_window_value(AT_NTHROW, 23, AG_WINDOW_INVINCIBILITY, 1);

// UThrow - Move
set_window_value(AT_NTHROW, 24, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 24, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 24, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_NTHROW, 24, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 24, AG_WINDOW_HSPEED, 1);
set_window_value(AT_NTHROW, 24, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 24, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NTHROW, 24, AG_WINDOW_SFX, sound_get("sfx_hit_cqc_ko"));
set_window_value(AT_NTHROW, 24, AG_WINDOW_INVINCIBILITY, 1);

// UThrow - End
set_window_value(AT_NTHROW, 25, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 25, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 25, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_NTHROW, 25, AG_WINDOW_INVINCIBILITY, 1);


// DThrow - Antic
set_window_value(AT_NTHROW, 26, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 26, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 26, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_NTHROW, 26, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 26, AG_WINDOW_SFX, sound_get("sfx_at_cqc"));
set_window_value(AT_NTHROW, 26, AG_WINDOW_INVINCIBILITY, 1);

// DThrow - Move
set_window_value(AT_NTHROW, 27, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 27, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 27, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_NTHROW, 27, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 27, AG_WINDOW_HSPEED, 1);
set_window_value(AT_NTHROW, 27, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 27, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NTHROW, 27, AG_WINDOW_SFX, sound_get("sfx_hit_cqc_ko"));
set_window_value(AT_NTHROW, 27, AG_WINDOW_INVINCIBILITY, 1);

// DThrow - End
set_window_value(AT_NTHROW, 28, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 28, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 28, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_NTHROW, 28, AG_WINDOW_INVINCIBILITY, 1);


// Release
set_window_value(AT_NTHROW, 29, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 29, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 29, AG_WINDOW_ANIM_FRAME_START, 38);

//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_NTHROW, 5);

// Grab Hitbox
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 68);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 1); // 1 = No Visual Effect
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, noone);
set_hitbox_value(AT_NTHROW, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_NTHROW, 1, HG_FORCE_FLINCH, 1);

// FThrow
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_SHAPE, 1); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 17);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 68);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, 304); // 1 = No Visual Effect
//set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, sound_get("sfx_hit_cqc_ko"));
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, noone);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, -1);

//set_hitbox_value(AT_NTHROW, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NTHROW, 2, HG_SDI_MULTIPLIER, 0);

// BThrow
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_SHAPE, 1); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 20);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 34);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 68);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT, 304); // 1 = No Visual Effect
//set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, sound_get("sfx_hit_cqc_ko"));
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, noone);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_GROUP, -1);

//set_hitbox_value(AT_NTHROW, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NTHROW, 3, HG_SDI_MULTIPLIER, 0);

// UThrow
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 4, HG_SHAPE, 1); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW, 24);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NTHROW, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_X, 34);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NTHROW, 4, HG_WIDTH, 68);
set_hitbox_value(AT_NTHROW, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_NTHROW, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NTHROW, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 4, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_NTHROW, 4, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_NTHROW, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NTHROW, 4, HG_VISUAL_EFFECT, 304); // 1 = No Visual Effect
//set_hitbox_value(AT_NTHROW, 4, HG_HIT_SFX, sound_get("sfx_hit_cqc_ko"));
set_hitbox_value(AT_NTHROW, 4, HG_HIT_SFX, noone);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_GROUP, -1);

//set_hitbox_value(AT_NTHROW, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NTHROW, 4, HG_SDI_MULTIPLIER, 0);

// DThrow
set_hitbox_value(AT_NTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 5, HG_SHAPE, 1); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NTHROW, 5, HG_WINDOW, 27);
set_hitbox_value(AT_NTHROW, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NTHROW, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 5, HG_HITBOX_X, 34);
set_hitbox_value(AT_NTHROW, 5, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NTHROW, 5, HG_WIDTH, 68);
set_hitbox_value(AT_NTHROW, 5, HG_HEIGHT, 24);
set_hitbox_value(AT_NTHROW, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_NTHROW, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, 5, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NTHROW, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 5, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NTHROW, 5, HG_VISUAL_EFFECT, 304); // 1 = No Visual Effect
//set_hitbox_value(AT_NTHROW, 5, HG_HIT_SFX, sound_get("sfx_hit_cqc_ko"));
set_hitbox_value(AT_NTHROW, 5, HG_HIT_SFX, noone);
set_hitbox_value(AT_NTHROW, 5, HG_HITBOX_GROUP, -1);

//set_hitbox_value(AT_NTHROW, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, 5, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NTHROW, 5, HG_SDI_MULTIPLIER, 0);


