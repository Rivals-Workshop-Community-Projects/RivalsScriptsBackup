set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR, 10);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2 );
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
//set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 1.2);
//set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 25);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 10); // was 3
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4); // was 6
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 2 );
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .2);
//set_hitbox_value(AT_NAIR, 5, HG_DRIFT_MULTIPLIER, 1.5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);//20
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 5);

//Polite hitboxes. These are larger but only hitstun the enemy if they are already
//hitstunned. They have lower priority from the standard hitboxes
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 74);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 44);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 25);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 10); // was 3
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_NAIR, 6, HG_SDI_MULTIPLIER, 1.1);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
//set_hitbox_value(AT_NAIR, 6, HG_EFFECT, 9 );
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 6, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_NAIR, 7, HG_EFFECT, 9 );

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 3);
//set_hitbox_value(AT_NAIR, 8, HG_EFFECT, 9 );

set_hitbox_value(AT_NAIR, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 4);
//set_hitbox_value(AT_NAIR, 9, HG_EFFECT, 9 );

set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 10, HG_WIDTH, 74);
set_hitbox_value(AT_NAIR, 10, HG_HEIGHT, 44);
set_hitbox_value(AT_NAIR, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 10, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NAIR, 10, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_NAIR, 10, HG_SDI_MULTIPLIER, 2);
//set_hitbox_value(AT_NAIR, 10, HG_DRIFT_MULTIPLIER, 1.5);
set_hitbox_value(AT_NAIR, 10, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 10, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT_X_OFFSET, 0);//20
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 10, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 5);
//set_hitbox_value(AT_NAIR, 10, HG_EFFECT, 9 );

//ABYSS PROJECTILES

set_hitbox_value(AT_NAIR, 11, HG_PARENT_HITBOX, 11);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 16);
set_hitbox_value(AT_NAIR, 11, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 11, HG_HEIGHT, 35);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 11, HG_SHAPE, 0 );
set_hitbox_value(AT_NAIR, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 11, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 11, HG_ANGLE, 120);
set_hitbox_value(AT_NAIR, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 11, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NAIR, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 11, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NAIR, 11, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_NAIR, 11, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_NAIR, 11, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_NAIR, 11, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_NAIR, 11, HG_TECHABLE, 0 );
set_hitbox_value(AT_NAIR, 11, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_NAIR, 11, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_NAIR, 11, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_NAIR, 11, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_NAIR, 11, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_NAIR, 11, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_NAIR, 11, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile


set_hitbox_value(AT_NAIR, 12, HG_PARENT_HITBOX, 12);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 16);
set_hitbox_value(AT_NAIR, 12, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 12, HG_HEIGHT, 35);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 12, HG_SHAPE, 0 );
set_hitbox_value(AT_NAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 12, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 12, HG_ANGLE, 120);
set_hitbox_value(AT_NAIR, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 12, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NAIR, 12, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 12, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NAIR, 12, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_NAIR, 12, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_NAIR, 12, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_NAIR, 12, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_NAIR, 12, HG_TECHABLE, 0 );
set_hitbox_value(AT_NAIR, 12, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_NAIR, 12, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_NAIR, 12, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_NAIR, 12, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_NAIR, 12, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_HSPEED, -13);
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_NAIR, 12, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_NAIR, 12, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile

/*
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_NAIR,10, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 74);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_NAIR,10, HG_SDI_MULTIPLIER, 2);
//set_hitbox_value(AT_NAIR,10, HG_DRIFT_MULTIPLIER, 1.5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_NAIR2 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR,  2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2 );
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .2);
//set_hitbox_value(AT_NAIR2 5, HG_DRIFT_MULTIPLIER, 1.5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 5);
*/


