set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_USES_CUSTOM_GRAVITY, 1);

// pre-charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

// post-charge
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

//in air
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

//zazazap startup
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

//zazazapppp
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_CUSTOM_GRAVITY, .1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.2);

//zap endlag
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USTRONG, 6, AG_WINDOW_CUSTOM_GRAVITY, .2);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

set_num_hitboxes(AT_USTRONG, 8);

//spinhit1
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 10);

//spinhit2
set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 6, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 6, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 2);

//spinhit3
set_hitbox_value(AT_USTRONG, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USTRONG, 7, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 7, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 2);

//spinhit4
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 48);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 8, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 8, HG_SDI_MULTIPLIER, 0.01);

//elec multihit1
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90); 
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 2); // goes through plats
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, thunder_small);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("zap"));
set_hitbox_value(AT_USTRONG, 2, HG_TWENNY_ELECTRIC, 1);

//elec multihit2
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 3, HG_TWENNY_ELECTRIC, 1);

//elec multihit3
set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -50);

//elec multihit final
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 8);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 112);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 112);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90); 
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, thunder_big);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("shothurt"));
set_hitbox_value(AT_USTRONG, 5, HG_TWENNY_ELECTRIC, 1);