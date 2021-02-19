set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
//set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup / charge
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("dr_select"));
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

//after charge startup
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("dr_swing"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 8);

//active 1
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//active 2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//recovery 1
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 9); //6
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);




//recovery 2
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 26); //18
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_land_light"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX_FRAME, 3);


set_num_hitboxes(AT_FSTRONG,4);





//main hitbox 1 (sweet)
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 104);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("dr_bigcut"));


//late hitbox 1
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -48);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3); 
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 130);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
//set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);

set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 8);





//late hitbox 2
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -28);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -7);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 38);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 26);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3); 
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 130);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
//set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);

set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 8);


//red buster

// projectile
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);

set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 80);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 19);
//priority/grouping
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 9); 
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1); 
//position
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -30);
//shape
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);

//knockback
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.2); 
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
//stun
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1); 
//effects
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("dr_criticalswing"));
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("fstrong_buster"));
//set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small


set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); 
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); 
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_VSPEED, 0);