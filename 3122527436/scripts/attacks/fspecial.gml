set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_landinglag"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

//Lunge
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);

//Whiff Endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 9);

//Whiff Landing Lag
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_land"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

//Grab Start
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_landinglag"));
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 8);

//Smack Em!
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_landinglag"));
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 8);

//Prepare to die
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_landinglag"));
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 8);

//SLAPP!!!
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_landinglag"));
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 12);

//Whiff Pratfall
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_FSPECIAL, 8);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_landinglag"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, -1);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT,80);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_pom_slap1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_SDI_MULTIPLIER, -1);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_pom_slap2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_pom_slap1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_pom_slap2"));
set_hitbox_value(AT_FSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 7, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_pom_slap1"));
set_hitbox_value(AT_FSPECIAL, 7, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 8, HG_HIT_SFX, sound_get("small_slap"));
set_hitbox_value(AT_FSPECIAL, 8, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);