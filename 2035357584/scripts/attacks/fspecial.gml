set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 13);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

/*===========grounded===========*/
//pull up cover
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("coverclink"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//behind cover loop
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 155);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 29);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//toss grenade
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//stand to cancel
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 44);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//stand to vault
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("armour"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//vault
//due to uneven speed of vaulting over the piece of cover,
//each animation frame has a correlating offset, declared in
//init.gml. this means the window length must be a multiple of
//the number of animation frames.
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 53);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//charge
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 44);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 61);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//stop
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 81);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

/*===========aerial===========*/
//anticipate
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 89);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1)
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7)
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX, sound_get("anticipation"));

//charge up
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 92);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.05);

//dash
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 94);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_CUSTOM_GRAVITY, 0.35);

//gunshots
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 97);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 0.35);

//recover
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 106);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 13);

//grenade
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 52);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("grenade_spin"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);

/*//parry box
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT,50);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);*/

//projectile destroyer
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 99999);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 28);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 69);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);

//vault kick
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -69);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 97);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 35);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 1);

//vault land
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 77);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 49);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 35);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 1);


//headbutt
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 58);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 25);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 6, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 6, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, 2);


//pistol1
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 83);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 25);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 7, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 7, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, 2);

//pistol2
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 83);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 8, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 8, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, 2);

//pistol3
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 83);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 9, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 9, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 9, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, 2);

//aerial bodyslam
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 7);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 59);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 62);
set_hitbox_value(AT_FSPECIAL, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, 3);

//aerial pistol1
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 71);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FSPECIAL, 11, HG_WIDTH, 111);
set_hitbox_value(AT_FSPECIAL, 11, HG_HEIGHT, 61);
set_hitbox_value(AT_FSPECIAL, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 11, HG_ANGLE, 35);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 11, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_GROUP, 4);

//aerial pistol2
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_X, 71);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FSPECIAL, 12, HG_WIDTH, 111);
set_hitbox_value(AT_FSPECIAL, 12, HG_HEIGHT, 61);
set_hitbox_value(AT_FSPECIAL, 12, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 12, HG_ANGLE, 35);
set_hitbox_value(AT_FSPECIAL, 12, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 12, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL, 12, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 12, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_GROUP, 5);

//aerial pistol3
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_X, 71);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FSPECIAL, 13, HG_WIDTH, 111);
set_hitbox_value(AT_FSPECIAL, 13, HG_HEIGHT, 61);
set_hitbox_value(AT_FSPECIAL, 13, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 13, HG_ANGLE, 35);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 13, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 13, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 13, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_GROUP, 6);