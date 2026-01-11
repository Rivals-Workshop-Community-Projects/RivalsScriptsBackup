set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 13);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 12);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
    //Tay

//Startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_oly_uspecial_twirl"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 12);

//Active (Strong Kick)
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);

//Post Hit
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 27);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_GOTO, 31);

//Startup
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HITPAUSE_FRAME, 11);

//Active
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 2);

//Startup
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 7);


//Active
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 8);

//Hit Impact
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_VSPEED, -9);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_VSPEED_TYPE, 2);

//Post Hit
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_FSPECIAL_2, 4);

//Kick
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

// multihit 1
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 111);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 77);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

// multihit 2
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 133);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 63);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

// launcher
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 133);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 83);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
