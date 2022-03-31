set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 28);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_DAIR, 7);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 25);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 78);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 93);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT, 10);
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));