set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//jab 1 startup
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//jab 1 active frames
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//jab 1 endlag
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 0); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 7);

//jab 2 startup
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//jab 2 active frames
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//jab 2 endlag
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 0); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 7);

//rapid startup
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//rapid active frames
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 11);

//final hit startup
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED, 4);


//final hit active frames
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 16);

//final hit endlag
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 21);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag


set_num_hitboxes(AT_JAB, 7);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 1.0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1.0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

var rapidJabHitpause = 2;
var rapidJabBKB = 3;
var rapidJabSDI = 1.15;

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, rapidJabBKB);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, rapidJabHitpause);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, rapidJabSDI);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, rapidJabBKB);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, rapidJabHitpause);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 4, HG_SDI_MULTIPLIER, rapidJabSDI);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, rapidJabBKB);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, rapidJabHitpause);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 5, HG_SDI_MULTIPLIER, rapidJabSDI);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 46);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, rapidJabBKB);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, rapidJabHitpause);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 6, HG_SDI_MULTIPLIER, rapidJabSDI);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 46);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 68);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 7);