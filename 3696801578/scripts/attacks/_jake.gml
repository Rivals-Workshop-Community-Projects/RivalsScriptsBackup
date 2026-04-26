set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 8);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));


set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_EXTRA_1, 0);

// Horizontal fist
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0.8);

//Grab
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 66);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 135);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTRA_HITPAUSE, 20)
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 0.8);

//Ground neutral attack
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 140);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, 0.8);

//They see me rolling
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 4, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 4, HG_HITSTUN_MULTIPLIER, 0.8);

//"FUCK YOU" -Nspecial punch, probably
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_X, 62);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y, -5);
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 5, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE, -50);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 5, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_EXTRA_1, 5, HG_VISUAL_EFFECT, HFX_GEN_BIG)

//"FUCK YOU AS WELL" -Nspecial2 clap, probably
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW, -1);
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y, -54);
set_hitbox_value(AT_EXTRA_1, 6, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 6, HG_HEIGHT, 140);
set_hitbox_value(AT_EXTRA_1, 6, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1)
set_hitbox_value(AT_EXTRA_1, 6, HG_VISUAL_EFFECT, HFX_GEN_BIG)
set_hitbox_value(AT_EXTRA_1, 6, HG_HITSTUN_MULTIPLIER, 0.5);