set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 17);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//invincible frame
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0.5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 1); //invincible

//hit 1 startup
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 0.5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_rag_axe_swing"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 10);

//active
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

//hit 1 transition
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CANCEL_FRAME, 3);

//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 2 startup
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 3);

//hit 2 active
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);

//hit 2 transition
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CANCEL_FRAME, 3);
//set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);



//hit 3 startup
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 5);

//hit 3 active
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED, 30);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//hit 3 cooldown
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 21);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED, 1);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_NSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 3 recovery
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 3 recovery end
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 25);

//hit 1 recovery
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 1 recovery end
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 7);

//hit 2 recovery
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 2 recovery end
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 15);

//final frame - in case of parry
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_LENGTH, 0);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 25);

/*
//sweetspot finisher startup
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_SFX_FRAME, 7);




//sweetspot finisher active
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 17, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED, 30);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//sweetspot finisher cooldown
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NSPECIAL, 18, AG_WINDOW_HSPEED_TYPE, 2);

*/



//1N Startup
//1N Sweetspot
//1N Attack + Recovery
//1N Cooldown

//2N Startup
//2N Attack + Recovery
//2N Cooldown

//3N Startup
//3N Attack + Recovery
//3N Cooldown

set_num_hitboxes(AT_NSPECIAL, 6);

//1-Neutral - Sweetspot 
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0); //near instant startup.
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1); 
//position
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -28);
//shape
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 14);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70); //50
//stun
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 8);

//effects
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 3); //can't tech or bounce after the sweetspot.
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 0.001 );//no SDI until the last hit.
set_hitbox_value(AT_NSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0.001 ); //no DI on first hit.
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1 ); //cannot break projectiles. 


set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 194  );
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));//("sfx_ell_drill_stab"));



//1-Neutral - Normal box 1 
set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1); 
//position
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -41);
//shape
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 47);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70); //50
//stun
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 6);

//effects
set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 3); //can't tech or bounce before the last hit.
set_hitbox_value(AT_NSPECIAL, 2, HG_SDI_MULTIPLIER, 0.001 );//no SDI on first hit.
set_hitbox_value(AT_NSPECIAL, 2, HG_DRIFT_MULTIPLIER, 0.001 ); //no DI on first hit.

set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));//("sfx_ell_drill_stab"));


//1-Neutral - Normal box 2
set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 1); 
//position
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -20);
//shape
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 36);
//knockback
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 50);
//stun
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 6);
//effects
set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 3); //can't tech or bounce before the last hit.
set_hitbox_value(AT_NSPECIAL, 3, HG_SDI_MULTIPLIER, 0.001 );//no SDI before the last hit.
set_hitbox_value(AT_NSPECIAL, 3, HG_DRIFT_MULTIPLIER, 0.001 ); //no DI on first hit.

set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));//("sfx_ell_drill_stab"));


//2-Neutral - Normal box 1 
set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 2); 
//position
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 26);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -33);
//shape
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 68);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 30);
//stun
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 8);

//effects
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 3); //can't tech or bounce before the last hit.
set_hitbox_value(AT_NSPECIAL, 4, HG_SDI_MULTIPLIER, 0.001 );//no SDI before the last hit.
set_hitbox_value(AT_NSPECIAL, 4, HG_DRIFT_MULTIPLIER, 0.65 ); //reduced drift DI on second hit.

set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));//("sfx_ell_drill_stab"));


//2-Neutral - Normal box 2
set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 6);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 2); 
//position
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -48);
//shape
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 35);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 27);

//knockback
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 30);
//stun
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE, 8);
//effects
set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 3); //can't tech or bounce before the last hit.
set_hitbox_value(AT_NSPECIAL, 5, HG_SDI_MULTIPLIER, 0.001 );//no SDI before the last hit.

set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));//("sfx_ell_drill_stab"));


//3-Neutral - Normal box
set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 6);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 3); 
//position
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 25);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -30);
//shape
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 8); //5
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5); //0.7
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 40);
//stun
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); //("sfx_ell_drill_stab"));





