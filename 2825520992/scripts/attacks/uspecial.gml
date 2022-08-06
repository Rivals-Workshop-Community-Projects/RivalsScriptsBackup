set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

// Starts to take flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_spear_swing_1"));

// Copter Flight
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 48);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));

// Copter Ending
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);

// Copter End
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_GOTO, 8);

// Pratfall
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

//Landing Lag
//set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 10);
//set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 29);

set_num_hitboxes(AT_USPECIAL, 8);





set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 36);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 42);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 8);