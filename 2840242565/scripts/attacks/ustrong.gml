set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//release
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//active 1
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//inbetween hitboxes 1 and 2
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_absa_orb_hit"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 2);

//active 2
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//inbetween hitboxes 2 and 3
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, sfx_krdl_spark_wave);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 2);

//active 3
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);

//endlag
set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 6);

//Weak, Launching Hitbox (Left Side)
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Weak, Launching Hitbox (Right Side)
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Weak, Launching Hitbox (Above, meant for aerial opponents)
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 46);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));


var multihitBKB = 3;
//Electric Hitbox 1
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 74);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, multihitBKB);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));

//Electric Hitbox 2
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 74);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, multihitBKB);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

//Electric Hitbox Final
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 96);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));