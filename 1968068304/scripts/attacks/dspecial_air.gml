//dspecial_air.gml
set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 16);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 0); //manually cancels when touching ground
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 15);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

//1: startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.65);


//2: upward grab
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1); //play sound.
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_waveland_kra"));
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//3: begin to fall (did not grab player)
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//4: fall (did not grab player)
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 9); //loops until hitting the ground
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//5: hit surface while falling (did not grab player) -> transition
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//6: hit epinel-platform while falling
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 10); //11
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED, 0); //halt here
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_HSPEED, 0); //halt here
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.65);


//7: hit player with first rising grab
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//8: hit player on rising grab, begin to fall (grabbed player)
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 4); //extra frame
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//9: fall (grabbed player)
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_TYPE, 9); //loops until hitting the ground
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.65);


//10: hit surface while falling (grabbed player) -> transition
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.65);
set_hitbox_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_HITPAUSE_FRAME, 7); //

//11: hit player into epinel platform
set_window_value(AT_DSPECIAL_AIR, 11, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 11, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_AIR, 11, AG_WINDOW_CUSTOM_GRAVITY, 0.65);
set_hitbox_value(AT_DSPECIAL_AIR, 11, AG_WINDOW_HITPAUSE_FRAME, 7); //

//12: rebound after hitting player into epinel platform (then return to 8)
set_window_value(AT_DSPECIAL_AIR, 12, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 12, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 12, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_AIR, 12, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL_AIR, 12, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_hitbox_value(AT_DSPECIAL_AIR, 12, AG_WINDOW_HITPAUSE_FRAME, 7); //

//13: ground slam
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_HAS_SFX, 1); //play sound.
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL_AIR, 13, AG_WINDOW_CUSTOM_GRAVITY, 0.65);


//14: recovery after ground slam (transition to crouch)
set_window_value(AT_DSPECIAL_AIR, 14, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 14, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSPECIAL_AIR, 14, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 14, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL_AIR, 14, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL_AIR, 14, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//15: airborne move cancel 1
set_window_value(AT_DSPECIAL_AIR, 15, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 15, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 15, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DSPECIAL_AIR, 15, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL_AIR, 15, AG_WINDOW_CUSTOM_GRAVITY, 0.35);

//16: airborne move cancel 2
set_window_value(AT_DSPECIAL_AIR, 16, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 16, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 16, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 16, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_DSPECIAL_AIR, 16, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL_AIR, 16, AG_WINDOW_CUSTOM_GRAVITY, 0.35);



set_num_hitboxes(AT_DSPECIAL_AIR, 9);

//upward grab hit 1 of 3.
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -57);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 2); //rounded rectangle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6); //horizontal knockback sends away from the enemy player
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 0.8); //very small advantage if this move does not grab
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 5); //extra hitpause needed to grab
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_GROUNDEDNESS, 2); //the first hitbox is strictly an antiair grab
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTRA_CAMERA_SHAKE, 0);


//upward grab hit 2 of 3.
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 46);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 6); //horizontal knockback sends away from the enemy player
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 0.8); //very small advantage if this move does not grab
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 5); //extra hitpause needed to grab
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTRA_CAMERA_SHAKE, 0);



//falling grab hit.
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 6); 
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 4); //
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, 0.8); //very small advantage if this move does not grab
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EXTRA_HITPAUSE, 5); //extra hitpause needed to grab
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EXTRA_CAMERA_SHAKE, 0);


//floor hit - low priority.

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, 3);
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 6); //horizontally sends away from the enemy
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITSTUN_MULTIPLIER, 0.75); //should not be a safe move
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EXTRA_HITPAUSE, 1);
//effects
//set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 192 );
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EXTRA_CAMERA_SHAKE, 2);


//floor hit - sweetspot. always hits a grabbed player if hitbox 8 isn't stacked over it.
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 3); //higher priority than hitbox 4
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_GROUP, 3);
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 1.15); 
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 361);
//set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE_FLIPPER, 6); //horizontally sends away from the enemy
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITSTUN_MULTIPLIER, 0.9); //reduced stun
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_EXTRA_HITPAUSE, 1);
//effects
//set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 192 );
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, sound_get("smallexplosion"));


//holding player - platform hit
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_DAMAGE, 12);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_GROUP, -1); //always hits
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, 0.4); 
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_ANGLE_FLIPPER, 6); //horizontally sends away from the enemy
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_EXTRA_HITPAUSE, 2); //maintain grabbing the opponent
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_VISUAL_EFFECT, 192 );
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HIT_LOCKOUT, 8); //lockout 



//holding player - floor hit early - must be spawned by attack_update. duration = number of floor hits
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_LIFETIME, 1); 
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_DAMAGE, 4); 
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_GROUP, -1); //always hits
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 6); //varies?
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, 1); 
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_ANGLE_FLIPPER, 6); //horizontally sends away from the enemy
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_EXTRA_HITPAUSE, 1);
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_SDI_MULTIPLIER, 0.001 );//no SDI until final hit
//set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HIT_LOCKOUT, 1); //lockout 
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_VISUAL_EFFECT, 192 );
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_EXTRA_CAMERA_SHAKE, 3);




//holding player - floor hit final - must be spawned by attack_update
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_DAMAGE, 16); //varies?
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_GROUP, 3); 
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 4); //varies?
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, 1.15); 
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_ANGLE, 361);
//set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_ANGLE_FLIPPER, 6); //horizontally sends away from the enemy
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, 1.5); //extreme hitpause scaling
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_VISUAL_EFFECT, 155 );
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_EXTRA_CAMERA_SHAKE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HIT_LOCKOUT, 15); //lockout



//upward grab hit 3 of 3.
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_GROUP, 1);
//shape
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_Y, -66);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HEIGHT, 36);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_ANGLE_FLIPPER, 6); //horizontal knockback sends away from the enemy player
//stun
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITSTUN_MULTIPLIER, 0.8); //very small advantage if this move does not grab
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_EXTRA_HITPAUSE, 5); //extra hitpause needed to grab
//effects
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_EXTRA_CAMERA_SHAKE, 0);