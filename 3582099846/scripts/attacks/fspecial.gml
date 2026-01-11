set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 12);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//Kah

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

//Active
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//End Lag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 31);

    //Rah

//Startup
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);


//Active
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);


//End Lag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 31);

    //Tay

//Startup
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_oly_fspecial_dash"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 10);

//Active (Strong Kick)
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED,  -5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);

//Active (Weak Kick)
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);

// set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
// set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

// set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_GOTO, 31);

//Return to aerial idle state
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 11);

//Hit Impact
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 12);

//Post Hit
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 27);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_FSPECIAL, 3);

//Kah
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2)
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 111);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 77);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Rah
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2)
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 133);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Tay (Early/Strong Hit)
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


// //Tay (Late/Weak Hit)
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 9);
// set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 16);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 18);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -30);
// set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 72);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 48);
// set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
// set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
// set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 7);
// set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 98);
// set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
// set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);

// set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, -4);

// set_hitbox_value(AT_FSPECIAL, 4, HG_EFFECT, 304);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));