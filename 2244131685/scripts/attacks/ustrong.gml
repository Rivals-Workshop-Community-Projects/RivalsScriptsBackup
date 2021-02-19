set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Charge Window
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

// Startup
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 9);

// Active Frames
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// Endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 1);

// Poke
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 20);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// Spear 1
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 20);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 106);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1);

// Spear 2
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 15);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 20);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 106);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 1);

// Spear 3
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 15);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 4, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_PARTICLE_NUM, 1);

// Spear 4
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 15);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 5, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_PARTICLE_NUM, 1);