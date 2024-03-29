set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1); //Readying to throw rat
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sfx_rat_throw"));

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1); //Throws rat
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 900);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 25);
//set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, nothing);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("propeller_rat"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_AIR_FRICTION, 0.1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_FRICTION, 0.01);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 25);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2); //The little propeller
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("propeller"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GRAVITY, -0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2); //The little rat
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("rat"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1); //When you hit someone, spawn this
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 9000);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -9000);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, nothing);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_LOCKOUT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1); //Rat moving forward
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_X, 9000);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -9000);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 2);
//set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 50);
//set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT, nothing);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_LOCKOUT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_GROUP, -1);