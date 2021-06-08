set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);



set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED, -3);


set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 19);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR,9);

// First hit hitboxes

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 25);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.8);


set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 0.8);

set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -40);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITSTUN_MULTIPLIER, 0.8);

// Hit 2
set_hitbox_value(AT_UAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 23);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 6);


set_hitbox_value(AT_UAIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, -5);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, -10);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 85);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, -45);
set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 25);
set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE_FLIPPER, 6);
