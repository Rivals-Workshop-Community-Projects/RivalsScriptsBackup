set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("f3527_009_swish_k_l"));
//set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("ARC_BTL_CMN_ChargeGod_Bishi"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 1);
//set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, -4);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED, 5);
//set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, -5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("f3527_013_swish_p_s"));
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_FRAME, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("f3527_011_swish_k_xl"));
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_FRAME, 18);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("ARC_BTL_CMN_ChargeGod_Bishi"));
//set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("f3527_009_swish_k_l"));
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 8);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, -0.1);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1); //First leg step
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 270);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Guard_Small-A"));
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3); //Second elbow hit
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 10);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -14);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Guard_Midle"));
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 2, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1); //Third hard punch down
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 10);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Guard_Large"));
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1); //Foruth, final kick away
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 42);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
set_hitbox_value(AT_JAB, 4, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_JAB, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
