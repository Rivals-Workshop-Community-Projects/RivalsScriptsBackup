set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);


//Startup window
set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
//set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Throw smoke bomb
set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

//End lag 
set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));

//Looping window for invis
set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_NTHROW, 4, AG_WINDOW_CANCEL_TYPE, 2);
//set_window_value(AT_NTHROW, 4, AG_WINDOW_CANCEL_FRAME, 1);

//Reappear window
set_window_value(AT_NTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_NTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));

//Cooldown penalty window
set_window_value(AT_NTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NTHROW, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_SFX, asset_get("mfx_tut_fail"));


//Hitboxes
set_num_hitboxes(AT_NTHROW, 0);

//Smoke hitboxe
set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, .6);
//set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
//set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NTHROW, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_SHAPE, 0 );
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 120);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 75);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NTHROW, 2, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_NTHROW, 2, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NTHROW, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));

//this hitbox actually didnt come out
// //Smoke hitboxe
// set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0 );
// set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 4);
// set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
// set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
// set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -10);
// set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 56);
// set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 50);
// set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
// set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 0);
// set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 1);
// //set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.5);
// set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_HITPAUSE, 10);
// set_hitbox_value(AT_NTHROW, 1, HG_TECHABLE, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
// set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
// //set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

