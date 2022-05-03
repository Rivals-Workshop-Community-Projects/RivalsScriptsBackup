set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 7);

// Kick 1
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_CANCEL_FRAME, 6);

// Kick 2
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("sfx_at_kick_01"));
//set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 3.5); //Move 19 upscaled pixels forward. (28 in-game)
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 5);
//set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTILT, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 28); // Stop immediately.

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3); // Stop immediately.

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_FTILT, 2);


// Kick 1

//set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.2); // Edit this
//set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 1); // Edit this
//set_hitbox_value(AT_FTILT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 0); //0
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);

// Kick 2

//set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 6);
//set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2); //2
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 5); //34
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -36); //-33
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 67); //26
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.4); //0.05
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10); //6 default, if you don't want the "slowmo"
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 1.00);
//set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_hit_punch_ko"));
//set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 2); // Edit this
//set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 10); // Edit this
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);