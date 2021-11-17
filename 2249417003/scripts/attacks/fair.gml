set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));



set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);//sfx_charge_blade_swing
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("fesliyan_burst"));//asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);

//shoot
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -0.25);

//pause after shooting
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//final recovery
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);



//set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
//set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 0);

//3 melee hitboxes, 3 shots
set_num_hitboxes(AT_FAIR, 6);


//first hitbox
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2); //high priority
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305 ); //"basic sweetspot"
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//second hit
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 20);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 31);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1); 
set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.5);







// projectile
set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 1);

set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 24);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -20);
//shape
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 12);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 8);

//knockback
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.85); 
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 60);
//stun
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, 1); 
//effects
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FAIR, 4, HG_EFFECT, 12); //can be crouch armored

set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("fair_bullet"));
//set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small



set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); //stop on walls
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); //stop on ground
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FAIR, 4, HG_PROJECTILE_VSPEED, 5);

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -20);

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -20);
