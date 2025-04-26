set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("fspecial_startup"));

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1); //Flying forward attack
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 45);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("fspecial_ground"));

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1); //Missed
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 0.1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_GOTO, 10);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1); //Punches
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, sound_get("fspecial_rapidswipes"));
//set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 2);

set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1); //Demon Raged
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 29);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_SFX, sound_get("final_hit"));
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_GOTO, 10);

set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1); //Buffer window
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
//set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_SFX, sound_get("fspecial_ground2"));

set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_TYPE, 1); //Flying forward move
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_SFX, sound_get("fspecial_ground2"));

set_num_hitboxes(AT_FSPECIAL_AIR, 8);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1); //Grabbed into Raging Demon
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 259);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Sousai_Kidan"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1); //Punch 1
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1); //Punch 2
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1); //Punch 3
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1); //Punch 4
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1); //Punch 5
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1); //Punch 6
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1); //Punch Final 7
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_DAMAGE, 29);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITSTUN_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Hit_Large-A"));
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_GROUP, -1);

/*
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1); //Teleport hit
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 138);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1); //Follow up knee
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP,-1);

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1); //Follow up down overhead
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 48);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 2); //Follow up timer
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WIDTH, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PROJECTILE_SPRITE, sprite_get("bar"));
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PROJECTILE_ANIM_SPEED, 1.3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_GROUP, 1);