set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .5);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("se_game_hold"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_blow_medium2"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_coin_capture"));

set_num_hitboxes(AT_DSPECIAL, 7);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("weltris"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tetrinos1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("tetrinos1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("weltris"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tetrinos2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("tetrinos2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("weltris"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("tetrinos3"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("tetrinos3"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("se_pacman_smash_H01"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("tetrinos4"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("tetrinos4"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("se_pacman_smash_H01"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("tetrinos5"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("tetrinos5"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 75);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, sound_get("se_pacman_smash_L01"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("tetrinos7"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("tetrinos7"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 50);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, sound_get("se_pacman_smash_L01"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("tetrinos6"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("tetrinos6"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, .4);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTRA_HITPAUSE, 35);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true)
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("tetrinos_line_up"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("tetrinos_line_up"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);