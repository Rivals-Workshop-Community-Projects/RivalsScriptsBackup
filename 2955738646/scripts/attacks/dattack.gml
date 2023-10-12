set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, -0.5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1); //Knee out
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_WHIFFLAG, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("f3527_014_swish_p_xl"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1); //Done skid
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1); //Empty window
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_GOTO, 10);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1); //Teleport out
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, sound_get("f3527_025_throw"));
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1); //Teleport in
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DATTACK, 6, AG_WINDOW_SFX, sound_get("f3527_025_throw"));
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DATTACK, 7, AG_WINDOW_TYPE, 1); //Extra kick
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1); //Knee
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Guard_Large"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1); //Follow upper kick
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 7);
//set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 109);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_DRIFT_MULTIPLIER, 0.001);
set_hitbox_value(AT_DATTACK, 2, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, -18);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Hit_XLarge"));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);