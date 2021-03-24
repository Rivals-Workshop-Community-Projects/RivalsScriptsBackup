set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0); //don't fall off the ledge

//startup
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_gus_dirt"));//("sfx_ice_nspecial_hit_ground"));//("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, 0);

//meteor hit
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//startup 2
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part1"));//("sfx_ice_nspecial_hit_ground"));//("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 4);

//rising hit
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);


//recovery
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//recovery final frame
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_DTILT, 3);



//grounded hitbox - has priority
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
//priority/grouping
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -26);
//shape
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90); //launcher.
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 9);
//stun
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 6);

//set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 1); //forces flinch.
set_hitbox_value(AT_DTILT, 1, HG_GROUNDEDNESS, 1); //only hits grounded targets
set_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 2); //through platforms

//effects
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);


//aerial hitbox - low angle, low priority
set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
//priority/grouping
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -26);
//shape
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.6); 
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 275); //meteor
//stun
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, -6); //delays the player when used as a meteor
//set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 2, HG_GROUNDEDNESS, 2); //only hits airborne targets

//effects
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));




//final hitbox
set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 3);

//position
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 31);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -0);
//shape
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 100);
//stun
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 3, HG_HITSTUN_MULTIPLIER, 0.9);

set_hitbox_value(AT_DTILT, 3, HG_GROUNDEDNESS, 1); //only hits grounded targets
//set_hitbox_value(AT_DTILT, 3, HG_EFFECT, 9); //'polite' effect - could be bugged?
//effects
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 3, HG_EXTRA_CAMERA_SHAKE, -1);