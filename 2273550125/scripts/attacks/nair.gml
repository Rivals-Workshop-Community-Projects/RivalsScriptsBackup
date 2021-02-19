set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 1);

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_NAIR, 11);

//pre-spin hitbox 1
set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 10, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 10, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 10, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 10, HG_PRIORITY, 10);
set_hitbox_value(AT_NAIR, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE, 5);
set_hitbox_value(AT_NAIR, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 10, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 10, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 10, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, -1);

//pre-spin hitbox 2
// set_hitbox_value(AT_NAIR, 11, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 1);
// set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 10);
// set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 1);
// set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, -0);
// set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, -16);
// set_hitbox_value(AT_NAIR, 11, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 11, HG_WIDTH, 48);
// set_hitbox_value(AT_NAIR, 11, HG_HEIGHT, 48);
// set_hitbox_value(AT_NAIR, 11, HG_PRIORITY, 10);
// set_hitbox_value(AT_NAIR, 11, HG_DAMAGE, 0);
// set_hitbox_value(AT_NAIR, 11, HG_ANGLE, 5);
// set_hitbox_value(AT_NAIR, 11, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 11, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_NAIR, 11, HG_HITPAUSE_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 11, HG_KNOCKBACK_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 11, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_NAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_NAIR, 11, HG_ANGLE_FLIPPER, 9);
// set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, -1);

//first spin hitbox
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

//second spin hitbox
// set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
// set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -0);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -16);
// set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 48);
// set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 48);
// set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 10);
// set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 0);
// set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 5);
// set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

//third spin hitbox
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

//fourth spin hitbox
// set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 8);
// set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
// set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -0);
// set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -16);
// set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 48);
// set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 48);
// set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 10);
// set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 0);
// set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 5);
// set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 9);
// set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);

//fifth spin hitbox
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);

//sixth spin hitbox
// set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 12);
// set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 1);
// set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -0);
// set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -16);
// set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 48);
// set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 48);
// set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 10);
// set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 0);
// set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 5);
// set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 9);
// set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);

//seventh spin hitbox
set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 5);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, -1);

//eigth spin hitbox
// set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 16);
// set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 1);
// set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -0);
// set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -16);
// set_hitbox_value(AT_NAIR, 8, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 48);
// set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 48);
// set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 10);
// set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 0);
// set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 5);
// set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, 0.01);
// set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, 9);
// set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, -1);

//final strike hitbox
set_hitbox_value(AT_NAIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NAIR, 9, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 64);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 10);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, -1);