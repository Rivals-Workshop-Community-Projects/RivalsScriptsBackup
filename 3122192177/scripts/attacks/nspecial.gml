set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

// charge loop
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// attack startup
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

// attack (weak)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);

// attack startup
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);

// attack (strong)
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);

// endlag (strong)
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 23);

set_num_hitboxes(AT_NSPECIAL, 0);

//holy small
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5); 
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, holy_impact);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("holy"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, holy_impact);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);

//holy big
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9); 
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, holy_big_impact);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("holy_big"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.35);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, holy_big_impact);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

//death small
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5); 
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, death_impact);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("death"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, death_impact);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 17);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);

//death big
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 24);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3); 
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, death_big_impact);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("death_big"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 1.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, death_big_impact);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 17);
set_hitbox_value(AT_NSPECIAL, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);

//death linker
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1); 
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, death_impact);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, death_impact);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_PARTICLE_NUM, 1); 
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, true);

//explode
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 4); 
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, death_big_impact);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, death_big_impact);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_PARTICLE_NUM, 1); 
set_hitbox_value(AT_NSPECIAL, 6, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DRIFT_MULTIPLIER, 1);

//gravity small
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 104);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 25);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 6); 
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, gravity_impact);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("gravity"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("gravity"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, gravity_impact);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.95);
set_hitbox_value(AT_NSPECIAL, 7, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_HITPAUSE, 10);

//gravity big
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 96);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 35);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 35);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 12); 
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, gravity_big_impact);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("gravity_big"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, sprite_get("gravity_big"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, gravity_big_impact);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.95);
set_hitbox_value(AT_NSPECIAL, 8, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_AIR_FRICTION, 0.075);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
