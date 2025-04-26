set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);

//prehit1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 1);

//hit1
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//posthit1
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

//prehit2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//hit2
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 3);

//posthit2
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 5);

//prehit3
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 1);

//hit3
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 42);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 21);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);


//prehit4
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 41);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED, 3);

//hit4
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 43);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 4 endlag
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 44);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 4);

// set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
//grab
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, grabDuration);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0);

// //grab
// set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
// set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
// set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 0.1);
// set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
// set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, grabDuration);

// set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 10);
// set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
// set_hitbox_value(AT_JAB, 2, HG_WIDTH, 35);
// set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 20);
// set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
// set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
// set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
// set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0);

//down hit
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, -60);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 5);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -51);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//finisher
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 6.5);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 4, HG_SDI_MULTIPLIER, 0.5);

//rapidjab
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 25);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_JAB, 5, HG_EXTRA_HITPAUSE, 5);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 53);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 5, HG_SDI_MULTIPLIER, 0.69);
set_hitbox_value(AT_JAB, 5, HG_TECHABLE, 1);
