set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 10);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//startup
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

//active
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
// set_window_value(AT_JAB, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//endlag
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 7);
// set_window_value(AT_JAB, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//startup
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 4);

//active
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
// set_window_value(AT_JAB, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//endlag
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 8);
// set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//startup
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 6);
// set_window_value(AT_JAB, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//active
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
// set_window_value(AT_JAB, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//active loop
set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 10);
// set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_absa_orb_miss"));
// set_window_value(AT_JAB, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//endlag
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 13);
// set_window_value(AT_JAB, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_JAB, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 60);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 4, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);