set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9); //charge 1
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 9); //charge 2
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 50);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 39);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_gem_collect"));

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 9); //charge 3
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 21);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1); //shoot 1
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 29);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1); //shoot 2
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, -1);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1); //shoot 3
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, -3);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1); //end
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_send"));

set_num_hitboxes(AT_NSPECIAL, 6);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 72);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, burst_effect);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, burst_effect);

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 6);
//set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 108);
//set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
//set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 6);
//set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, burst_effect);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
//set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, burst_effect);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 39);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
//set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 26);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 30);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 72);
//set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 0);
//set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, burst_effect);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, burst_effect);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 23);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 23);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 132);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 132);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 132);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL, 6, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1.5);