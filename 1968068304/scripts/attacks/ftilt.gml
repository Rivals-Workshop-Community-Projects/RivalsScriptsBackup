set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0); //don't fall off the ledge

//startup
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_dust_knuckle"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);
//first hit (2 frames)

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_dust_knuckle"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_dust_knuckle"));
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 0);

//recovery
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 4); //4
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8); //8
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 3.5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 3);


//normal hit.

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
//priority/grouping
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
//shape
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 58);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 35);
//stun
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1);

//effects
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));//("sfx_ell_drill_stab"));

//sweetspot.

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 10);
//priority/grouping
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 5); //highest priority / 'inertia' sweetspot
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
//shape
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 7);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 7);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7.5); //6.4);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 32.5);
//stun
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 0);

set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 305 ); //"basic sweetspot"
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);







//late hit.


set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
//priority/grouping
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 43);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -30);
//shape
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.4); 
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 40);
//stun
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_FTILT, 3, HG_HITSTUN_MULTIPLIER, 1);

//effects
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));//("sfx_ell_drill_stab"));

