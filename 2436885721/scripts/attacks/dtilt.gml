set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 11);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//Leg coming down
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Swing
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 1.2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

//Stomp
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Pullback
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Start of drill
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));

//Drill
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAME_START, 12);


//Endlag
set_window_value(AT_DTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DTILT, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 11, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 11, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DTILT, 11, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT,5);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 51);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4.1);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3.5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3.5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0);
// set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 65);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTILT, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DTILT, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 8);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTILT, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DTILT, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 9);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 70);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 78);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, .3);
// set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, vfx_hit_med);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DTILT, 5, HG_HITSTUN_MULTIPLIER, 1.1);
