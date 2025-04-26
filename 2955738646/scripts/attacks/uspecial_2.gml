//Ground laser scanner follow-up
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_ground4"));
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_ground4"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 3);
//set_attack_value(AT_USPECIAL_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_ground4_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground4_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1); //Scanning
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("scouter_locating"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1); //No scan
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 55);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, sound_get("scouter_nofind"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_GOTO, 8);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1); //Target locked
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, sound_get("ScouterFound"));
//set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX_FRAME, );

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1); //Tartgeting Grounded Opponent (mini missiles)
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX, sound_get("uspecial_loadgun"));
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_GOTO, 7);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 1); //Targeting Aerial Opponent (rawcket lawnchair)
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 50);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX, sound_get("scouter_located"));
//set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_GOTO, 10);

set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_TYPE, 1); //Grounded opponent endlag
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_SFX, sound_get("uspecial_missilefire"));
//set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_GOTO, 10);

set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);

set_num_hitboxes(AT_USPECIAL_2, 13);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1); //Scanner for air
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 158);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -206);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 224);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 200);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0); 
set_hitbox_value(AT_USPECIAL_2, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 25);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("ScouterFound"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1); //Scanner for ground
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 158);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -206);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 224);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 200);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0); 
set_hitbox_value(AT_USPECIAL_2, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 25);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, sound_get("ScouterFound"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_LOCKOUT, 2);

//ye

set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 2); //First Air missile
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_VSPEED, -19);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, Explosive);

set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 2); //Second Air missile
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 0.9); 
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_VSPEED, -19);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, Explosive);

set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 2); //Third Air missile
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 26);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.9); 
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_HSPEED, 19);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, Explosive);

set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 2); //Fourth Air missile
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL_2, 6, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_VSPEED, -19);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_DESTROY_EFFECT, Explosive);

//ye

set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 2); //First Ground missile
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 7, HG_EXTRA_HITPAUSE, 5); 
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 7, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj2"));
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_VSPEED, -14);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_DESTROY_EFFECT, Explosive);

set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_TYPE, 2); //Second Ground missile
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_2, 8, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 8, HG_EXTRA_HITPAUSE, 5); 
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL_2, 8, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj2"));
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_VSPEED, -17);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PROJECTILE_DESTROY_EFFECT, Explosive);