set_attack_value(AT_FAIR, AG_CATEGORY, 2);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
//set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
//set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

// Startup

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Rapid Hits

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ell_drill_loop"));

// Final Hit

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

// Endlag

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_FAIR, 3);

// Swing Hit 1

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1.5);
//set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);

// Swing Hit 2

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 1.5);
//set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 3);

// Final Hit

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_birdclap"));

// Land Hit

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 100);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 65);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_birdclap"));
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("spam_empty"));
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_PARRY_STUN, true);