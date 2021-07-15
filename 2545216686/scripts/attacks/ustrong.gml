set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup + charge window
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

//release charge
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sfx_ustrong);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//active hitbox
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//endlag lol
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);//Normal
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 116);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);//Sweetspot
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -92);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 16);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);//Funny Spike Hitbox
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_GROUNDEDNESS, 2);