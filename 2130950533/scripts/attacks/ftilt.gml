set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

// Get into position
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

// Anticipation
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 7);

// Fall
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Acclimate
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

// Plank
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

// Ok, let's get ready
set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// Hold
set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX_FRAME, 11);

// WHOOP
set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 11);

// woah too far
set_window_value(AT_FTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 12);

// Now return to your original position
set_window_value(AT_FTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 10, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_FTILT, 5);

// Down swing
set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 98);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 73);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);

set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 69);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 81);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);

set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 110);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 27);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);

set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 3, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FTILT, 3, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Up swing
set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 8);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 131);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 74);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);

set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 65);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.4);

set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 8);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 67);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -39);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 52);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 66);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 1);

set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 65);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0.4);

set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));