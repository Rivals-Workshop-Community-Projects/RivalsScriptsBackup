set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_WINDOW_HAS_CUSTOM_FRICTION, 3);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_hitbox_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.5);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 10);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0); // succ deleted
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 0); //2
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 10);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0); // not deleted
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 2); // 12
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 48); // 25
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
//set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 1); // succ delet
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -60);

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 1); // succ delet
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -60);

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 1); // succ delet
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -60);

set_hitbox_value(AT_FAIR, 7, HG_PARENT_HITBOX, 1); // succ delet
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 0);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -60);

set_hitbox_value(AT_FAIR, 8, HG_PARENT_HITBOX, 1); // succ delet
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 0);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 7);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -60);

set_hitbox_value(AT_FAIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW, 3);
//set_hitbox_value(AT_FAIR, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FAIR, 9, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 9, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 9, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 9, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FAIR, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 9, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 9, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_FAIR, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_X, 16);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FAIR, 10, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 10, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 10, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 10, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 10, HG_ANGLE, 314); // pi!
set_hitbox_value(AT_FAIR, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 10, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 10, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 10, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT, paw_effect);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 10, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 10, HG_TECHABLE, 1);