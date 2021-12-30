set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 2);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ell_small_missile_fire"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_flare_razer"));

set_num_hitboxes(AT_USTRONG, 7);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1); //First twirl
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 55*2);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 55*2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1); //Second twirl
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 1); //Third twirl
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1); //Fourth twirl that pulls them in more
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 55*2);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 55*2);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 99);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 4, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1); //Spike
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 9);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 40*2);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 48*2);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 300);
//set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 5, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 252);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_superjump_sein"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_LOCKOUT, 9);

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1); //Flame away
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 9);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 61);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -49);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 56*2);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 50*2);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 253);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_LOCKOUT, 60);