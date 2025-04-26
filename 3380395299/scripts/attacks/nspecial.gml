set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));


set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //Begin move
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1); //Shoot
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_num_hitboxes(AT_NSPECIAL, 6);

//Pinball
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, .35);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .005);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, .005);

//Heart
set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 100);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 22);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, .05);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);

//Clawhammer
set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, -.05);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


//Bomb
set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 100);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 80);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 22);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj4"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, .45);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, .025);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj4_explosion"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false);


set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 15);