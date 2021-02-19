set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));


//startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -0.5);
//set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.22);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.22);

//shoot
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.20);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.20);

//set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 5);
//set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

//recovery 1
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.20);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.20);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


//recovery 2
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.18);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.18);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);


//projectile
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 20);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 3);

set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
//priority/grouping
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -4);
//shape
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 14);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 24);

//knockback
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.1); 
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 0.65); 
//effects
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("cs_machinegun_destroy2"));
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_bullet"));
//set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small



set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0 ); //stop on walls
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0 ); //stop on ground
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_VSPEED, 16);


