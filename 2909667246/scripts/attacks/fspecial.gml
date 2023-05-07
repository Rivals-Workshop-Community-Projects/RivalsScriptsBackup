set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);

//ride
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .1);

//jump off
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_num_hitboxes(AT_FSPECIAL, 4);

//lloid rocket
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_lloid"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fspecial_lloid_collision"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);

//lloid rocket hit collision
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 11);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, true);

//explosion
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, true);

//explosion, stronger
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 110);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);