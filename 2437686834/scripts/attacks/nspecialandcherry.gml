set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 47*3);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 47);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 48);




//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);


//charging window. The length of this window = the maximum charge time.
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 45*4); 
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 44);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);


//charge release window. This window should be at least 2 frames long.
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 40);
set_window_value( AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 47 );
set_window_value( AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3 );
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);








set_num_hitboxes(AT_NSPECIAL, 9);
//Cherry
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("Cherry"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 5);



//Apple
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 222);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 58);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("Apple"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 5);



//Banana
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 300);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 23);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 23);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("Banana"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 5);

//MiniPAC
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 74);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);




//Bell
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 105);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("Bell"));
//set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0.45);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);



//Sweet
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 100);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("Sweet"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
//set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 5);


//Coffee
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 107);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_HITPAUSE, 70);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("Bell"));
//set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0.47);
// set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);