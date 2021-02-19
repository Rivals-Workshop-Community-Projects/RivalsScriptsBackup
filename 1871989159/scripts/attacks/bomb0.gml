set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("tauntpet"));

set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_crouch_box"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 80);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_orca_roll"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 10);

set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_EXTRA_1, 9);

set_num_hitboxes(AT_EXTRA_2, 1);

//Normal hitboxes
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 104);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 104);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10.0);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -65);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 130);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 130);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_PARTICLE_NUM, 1);


//Flashbang hitbox
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, -60);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 30);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 15);
set_hitbox_value(AT_EXTRA_1, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_LOCKOUT, 3);
//set_hitbox_value(AT_EXTRA_1, 3, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, sound_get("mollo_ringing"));

set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

//Baseball hitbox
/*
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITSTUN_MULTIPLIER, 0.3);
*/

set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_PARTICLE_NUM, 1);

//Finisher hitbox
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_X, -70);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y, -70);
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 160);
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 160);
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 22);
set_hitbox_value(AT_EXTRA_1, 5, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 5, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));

set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_X, -100);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y, -100);
set_hitbox_value(AT_EXTRA_1, 6, HG_WIDTH, 200);
set_hitbox_value(AT_EXTRA_1, 6, HG_HEIGHT, 200);
set_hitbox_value(AT_EXTRA_1, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_EXTRA_1, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 6, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_PARTICLE_NUM, 1);

//Firecracker hitbox
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_X, -50);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 7, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 7, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));


set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_PARTICLE_NUM, 1);


//Firecracker finisher
set_hitbox_value(AT_EXTRA_1, 10, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_X, -50);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 10, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 10, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 10, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 10, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_EXTRA_1, 10, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));


set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_HIT_PARTICLE_NUM, 1);

//Up B
set_hitbox_value(AT_EXTRA_1, 11, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_X, -50);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 11, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 11, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 11, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 11, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 11, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 11, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 11, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_EXTRA_1, 11, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_EXTRA_1, 11, HG_HIT_PARTICLE_NUM, 1);

//Bonk


set_hitbox_value(AT_EXTRA_1, 20, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 20, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 20, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 20, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 20, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 20, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 20, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 20, HG_ANGLE, 20);
set_hitbox_value(AT_EXTRA_1, 20, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 20, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 20, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 20, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_1, 20, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 20, HG_FORCE_FLINCH, 1);


set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_MASK, sprite_get("bombmaskH"));
set_hitbox_value(AT_EXTRA_1, 20, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 20, HG_PROJECTILE_PARRY_STUN, 0);


//Strong bonk
set_hitbox_value(AT_EXTRA_1, 21, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 21, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 21, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 21, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 21, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 21, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 21, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 21, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 21, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 21, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 21, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 21, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_1, 21, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 21, HG_THROWS_ROCK, 2);


set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_MASK, sprite_get("bombmaskH"));
set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 21, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);


//Flaregun hitbox
set_hitbox_value(AT_EXTRA_1, 8, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_X, -60);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_Y, -60);
set_hitbox_value(AT_EXTRA_1, 8, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_1, 8, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_1, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 8, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_EXTRA_1, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));


set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, -80);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 160);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 160);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_LOCKOUT, 3);



set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_EXTRA_1, 9, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_X, -60);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_Y, -60);
set_hitbox_value(AT_EXTRA_1, 9, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_1, 9, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_1, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 9, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_ANGLE, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_EFFECT, 9);
set_hitbox_value(AT_EXTRA_1, 9, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_EXTRA_1, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITPAUSE_SCALING, 15);
set_hitbox_value(AT_EXTRA_1, 9, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_HIT_LOCKOUT, 3);
//set_hitbox_value(AT_EXTRA_1, 9, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_EXTRA_1, 9, HG_HIT_SFX, sound_get("mollo_ringing"));

set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
