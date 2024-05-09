set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Active Grab
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_DSPECIAL, 2, AG_ACTIVE_WINDOW, 1);

//Whiff grab
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 9);

//Grab Success
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

//Grab Window Transition
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

//Final Judgement (Spear Pull out)
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 55);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_GOTO, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_dust_knuckle"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

//Throw Opponent
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_GOTO, 9);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

//Final Judgement Endlag
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL, 3);

//Grab Hitbox
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

//Final Judgement
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 127);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 98);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_hit2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, hfx_torment_large);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.7);
//set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 3);

//Throw
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -62);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 116);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_kragg_throw"));