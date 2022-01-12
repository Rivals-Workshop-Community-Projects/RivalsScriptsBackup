set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2.5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_land_light"));
//set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .01);

//grab hit 1
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .02);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//grab hit 2
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .02);

//whiff cooldown 1
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .75);

//whiff cooldown 2
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//rotate (not implemented)
set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 9);

//throw startup 1
set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_SFX, 1);

//throw startup 2
set_window_value(AT_DATTACK, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 8, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

//throw hit
set_window_value(AT_DATTACK, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAME_START, 13);
//set_window_value(AT_DATTACK, 9, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DATTACK, 9, AG_WINDOW_SFX, asset_get("sfx_kragg_spike"));
set_window_value(AT_DATTACK, 9, AG_WINDOW_SFX_FRAME, 0);

//recovery
set_window_value(AT_DATTACK, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 10, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 10, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 10, AG_WINDOW_ANIM_FRAME_START, 14);


//parry stun window
set_window_value(AT_DATTACK, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 11, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DATTACK, 6);


//grab hit 1.
set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 2); //extra hitpause for the grab
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 194);
//set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303 ); //"basic small directional"
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1); //can't tech
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_CAMERA_SHAKE, -1);

//grab hit 2.
set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 2); //extra hitpause for the grab
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 194);
//set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 303 ); //"basic small directional"
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 1); //can't tech
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, -1);

//throw hit - grounded
//set_hitbox_value(AT_DATTACK, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, -66);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 66);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 192 ); //"rock large"
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 1); 
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_DATTACK, 3, HG_DRIFT_MULTIPLIER, 1); 


//throw hit - airborne
//set_hitbox_value(AT_DATTACK, 4, HG_GROUNDEDNESS, 2); //air only
set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 20);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, -66);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 66);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 165); //meteor
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 192 ); //"rock large"
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_swipe_heavy2"));
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DRIFT_MULTIPLIER, 1); 

//re-angle hitbox 1
set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW,     12);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, -8);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -39);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 82);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 82);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 90); //upward knockback
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 5, HG_EXTRA_HITPAUSE, 2); //extra hitpause for the grab
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 1 ); //"no visual effect"
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 5, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DATTACK, 5, HG_EXTRA_CAMERA_SHAKE, 0); 




//platform hit
set_hitbox_value(AT_DATTACK, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW,     10);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME,  999);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, -66);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 66);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 5); //inertia
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 7); //extra damage
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 270); //meteor
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 7); //9.5
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .65); //.75
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 10); //low hitpause
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 6, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_DATTACK, 6, HG_EXTRA_CAMERA_SHAKE, 1); 
set_hitbox_value(AT_DATTACK, 6, HG_TECHABLE, 2); //through platforms 
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, sound_get("smallexplosion"));
set_hitbox_value(AT_DATTACK, 6, HG_HIT_LOCKOUT, 8);



