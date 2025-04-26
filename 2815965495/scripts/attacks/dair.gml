set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);										
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6); //UPDATED	
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_steam_hit"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

//Up	Hitbox		
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 2);


//HITBOXES -- fall down
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 10.5);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);


//Land
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 0);

//Land
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);//TRANSFORM
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .75);





set_num_hitboxes(AT_DAIR,3);



//Falling Down Hitbox
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);						//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);						//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);						//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 52);							//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 28);						//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);						    //UPDATED
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);						//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);						//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .2);				//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);					//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .2);				//UPDATED
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);						    //UPDATED
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DAIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DAIR, 1, HG_THROWS_ROCK, 2);

//Landing Hitbox
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);						//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);						    //UPDATED
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -12);						//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);						//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 90);							//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 30);						//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);						    //UPDATED
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 80);						    //UPDATED
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);						//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .7);				//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 10);					//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .7);				//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);						//UPDATED
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DAIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DAIR, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);


//FIRST Hitbox
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -66);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 36);							//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 48);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 4);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .6);				//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);					//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .6);				//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);						//UPDATED
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


