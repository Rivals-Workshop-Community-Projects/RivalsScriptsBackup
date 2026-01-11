set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//Startup (Ground)
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

//Startup (Air)
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Active
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .8);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

//Prep Final Hit
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .5);

//Spatula Leaves
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .3);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);

//FALL
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);



set_num_hitboxes(AT_USPECIAL, 9);

//Startup Hit
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 58);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 97);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 1);

//Startup Hit
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 58);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 97);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

//Multi-Hits
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -98);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);

//Finishing Hit
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);

//Projectile
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 999);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -122);
// set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 69);
// set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 59);
// set_hitbox_value(AT_USPECIAL, 9, HG_SHAPE, 2);
// set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 1);
// set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 90);
// set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, 0.2);
// set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("hydrodynamic_Spatula"));
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_VSPEED, -5); 
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_HSPEED, 3); 
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_UNBASHABLE, 1);
// set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, -1);