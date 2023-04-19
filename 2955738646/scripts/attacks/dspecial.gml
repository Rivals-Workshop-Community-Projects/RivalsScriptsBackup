set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_ground"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_ground_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1); //Start up flying back
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, -1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("ARC_BTL_OSM_Drive_Dash"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //Diving
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //Done / missed
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 8);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //Kicking them in
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, -16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 5);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); //Done with them
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -6);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); //In the wall
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 90);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 0);

//-----FOLLOW UP-----//

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1); //Flying ''dumbass'' kick follow up
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 21);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, sound_get("dumbass"));
//set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 14);

set_num_hitboxes(AT_DSPECIAL, 6);

//set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1); //Diving hit
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 210);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1); //Letting go kick off
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 125);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 125);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -13);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("ARC_BG_LandBreak_01"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("ARC_BG_LandBreak_01"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("ARC_BG_LandBreak_01"));
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1); //Rapid little hits while holding them
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 0.5);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 0.5);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 200);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);