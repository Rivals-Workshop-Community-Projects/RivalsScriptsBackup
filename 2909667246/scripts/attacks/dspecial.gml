set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);

//plant seed
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//water
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, -3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);

//axe
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
//charge release
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 32);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 35);
//hit tree
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 40);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 43);

set_num_hitboxes(AT_DSPECIAL, 10);

//seed
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1200);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("lighthit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_seed"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_seed_collision"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//water
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
//set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("dspecial_water"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GRAVITY, .3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, -1);

//tree
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 9999);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_tree_collision"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

//tree hit collision
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 9999);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 95);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_IGNORES_PROJECTILES, true);

//tree sweetspot
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 30);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL, 5, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 5);

//tree sourspot
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 30);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL, 6, HG_IGNORES_PROJECTILES, true);

//tree falling
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 9999);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree_falling"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_tree_falling_collision"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0.05);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);

//tree stump
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("dspecial_tree"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_tree_collision"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);

//axe
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, sound_get("sword_hit_big"));
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304);


//trip sapling hitbox
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 10, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_IGNORES_PROJECTILES, true);

//tree counter
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 30);
set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 11, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 11, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 11, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_IGNORES_PROJECTILES, true);