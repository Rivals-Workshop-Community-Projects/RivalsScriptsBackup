set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .65);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 8, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_DAIR,7);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 34);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 2);
//set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -2);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -2);

//set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 39);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 67);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 80);//90?80?
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1.2);
//set_hitbox_value(AT_DAIR, 4, HG_DRIFT_MULTIPLIER, 1.2);
//set_hitbox_value(AT_DAIR, 4, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_DAIR, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
//set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH,34);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_EFFECT, 9);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -9000);
set_hitbox_value(AT_DAIR, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 5);
//set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -2);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 7);
//set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -2);
