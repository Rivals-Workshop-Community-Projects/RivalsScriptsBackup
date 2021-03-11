set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_sprite_star_edit"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_sprite_star_edit_hurt"));

//startup 1
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -0.25);
//set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);

//hit 1, stab 
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -0.25); //slight boost to make up for its tiny range

//recovery for hit 1 - move ends at this window if throw is not buffered
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12); //this recovery time + whifflag is set manually in attack_update, to fix animations
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//startup 2 - section 1 - move skips here if throw is buffered
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED, -4.5);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);


//startup 2 - section 2
set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED, 1.2);
set_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_HSPEED, -3);
set_window_value(AT_BAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);

//hit 2, throw
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED, -6);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED_TYPE, 2);



//recovery (no whifflag)
set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 19);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 14);

//final frame
set_window_value(AT_BAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 8, AG_WINDOW_LENGTH, 0);
set_window_value(AT_BAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 8, AG_WINDOW_ANIM_FRAME_START, 18);


//startup 5

set_num_hitboxes(AT_BAIR, 4);

//main hit.
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -31);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 59);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 1); //extra hitpause for the grab.
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 303 ); //"basic small directional"
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);



//sweetspot. 
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -11); //-10
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -34); //-30
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 14);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 12);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 1); //extra hitpause for the grab.
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 305 ); //"basic sweetspot"
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_BAIR, 2, HG_SDI_MULTIPLIER, 2); //make this move's followups a little more escapable.
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 1.05); //stun longer, so that it can still KO even with the inertia effect

//throw hit.
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -43);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 92);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 72);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 302 ); //"basic small with spin effect in center"
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITSTUN_MULTIPLIER, 0.9); //this move has very low end-lag
set_hitbox_value(AT_BAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_BAIR, 3, HG_SDI_MULTIPLIER, 0.1); //make this move's followups less escapable.
set_hitbox_value(AT_BAIR, 3, HG_DRIFT_MULTIPLIER, 1);



//late hit.
set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -31);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 59);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_BAIR, 4, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 4, HG_EXTRA_HITPAUSE, 1); //extra hitpause for the grab.
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 303 ); //"basic small directional"
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 6);

