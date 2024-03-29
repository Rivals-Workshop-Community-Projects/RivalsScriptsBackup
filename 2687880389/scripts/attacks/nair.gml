set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// Windup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 5);

// First hit
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Hold
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// Twist
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 1);

// Second hit
var nair_kick_duration = 10; // 14 18
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);

// Hold
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, nair_kick_duration);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);

// Return to your original position
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 7); // 4
set_window_value(AT_NAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NAIR, 2);

// First hit
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0); // -1
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -49); // -49
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 136); // 150
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 42); // 65
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2); // 0
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// Second hit
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0); // -1
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -49); // -49
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 142); // 150
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 46); // 65
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2); // 0
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7); //6.7 
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6.7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

/*
// Lingering front
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, nair_kick_duration);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 36); // -1
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -49); // -49
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 44); // 56 136 150
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 34); // 38 56 65
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2); // 0
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6.0);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6.0);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// Lingering rear
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, nair_kick_duration);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -36); // -1
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -49); // -49
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 44); // 56 136 150
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 34); // 38 56 65
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2); // 0
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6.0);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 6.0);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
*/

// Lingering rectangle (currently excluded)
/*
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, nair_kick_duration);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -49);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 76);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6.0);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6.0);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
*/


/*
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,3);

set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
*/