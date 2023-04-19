set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 8);

set_num_hitboxes(AT_DAIR, 9);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 310);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 3, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5)
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 4, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 5, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 6, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DAIR, 6, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 7, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 8, HG_TECHABLE, 3);
set_hitbox_value(AT_DAIR, 8, HG_SDI_MULTIPLIER, 2);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 9, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 9, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 9, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 9, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 9, HG_SDI_MULTIPLIER, 2);