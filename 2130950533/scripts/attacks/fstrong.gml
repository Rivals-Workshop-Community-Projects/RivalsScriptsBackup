set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

// Windup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

// Lowered
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

// Blur
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// Fully extended
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

// Hold
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);

// Return
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

// Start thumbs-up section - not activated unless player presses strong attack again
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 10);



set_num_hitboxes(AT_FSTRONG, 4);

// Motion
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 86);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 244);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// Knuckle
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 167);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);

set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

// Flip into thumb
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
/*
// fits largest fist size
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 160);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 83);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 97);
*/
// fits only slightly tilted fist size
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 160);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 83);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// Thumb
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
/*
// Matches thumb shape
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 156);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -106);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 67);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 60);
*/
// Extends slightly into palm
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 156);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -94);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 67);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 84);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 1);

set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 85);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));