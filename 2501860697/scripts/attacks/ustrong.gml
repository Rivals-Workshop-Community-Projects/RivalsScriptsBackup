set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_absa_uair"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 6);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -85);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -85);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -94);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 77);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 69);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1.15);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 0);

/*set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 62);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 0); */
