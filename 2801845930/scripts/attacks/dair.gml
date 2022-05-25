set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// Startup

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

// Rapid Hits

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

// Final Hit

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

// Endlag

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_DAIR, 5);

// Swing Hit 1

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 2);

// Swing Hit 2

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 2);

// Swing Hit 3

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 2);

// Swing Hit 4

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 85);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 2);

// Final Hit

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 85);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
