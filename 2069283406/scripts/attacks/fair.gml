set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6)
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8)
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);




set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 280);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.7);