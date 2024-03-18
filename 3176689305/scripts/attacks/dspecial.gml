set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//jump (if grounded)
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup (air)
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("hero_quake_prepare"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//start to dive
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("hero_quake_dash"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);


//dive
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 13);

//land
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 26);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("hero_quake_impact"));
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

//SHADE jump (if grounded)
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

//SHADE startup (air)
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, sound_get("hero_quake_prepare"));
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

//SHADE start to dive
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, sound_get("hero_quake_dash"));
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX_FRAME, 2);

//SHADE diving dark
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED, 16);

//SHADE land
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, sound_get("hero_land_hard"));
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX_FRAME, 3);

//SHADE shockwave
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX, sound_get("hero_shade_quake_impact"));
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX_FRAME, 1);

//SHADE endlag
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 31);

set_num_hitboxes(AT_DSPECIAL, 10);

//base dash dive
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0.8);

//base dash stomp
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 2);

//dark dash dive
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_FORCE_FLINCH, 1);

//dark shockwave 1
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 3);

//dark shockwave 2 1/2
set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -96);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 4);
//dark shockwave 2 2/2
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 4);

//dark shockwave 3 1/2
set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -80);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 5);
//dark shockwave 3 2/2
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 96);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, 5);

//dark shockwave 4
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -72);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 9, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, 6);

//dark shockwave 5
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -72);
set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT, fx_shadeb_big);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_GROUP, 7);
