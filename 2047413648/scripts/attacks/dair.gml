set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);	

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_DAIR, 9);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 87);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -22);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 77);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 4, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -25);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 0);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 160);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 69);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 0);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 169);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 22);
set_hitbox_value(AT_DAIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DAIR, 8, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DAIR, 8, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 8, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, -25);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 9, HG_WIDTH, 65);
set_hitbox_value(AT_DAIR, 9, HG_HEIGHT, 22);
set_hitbox_value(AT_DAIR, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 9, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DAIR, 9, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 9, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 9, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DAIR, 9, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 9, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DAIR, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 9, HG_TECHABLE, 2);
set_hitbox_value(AT_DAIR, 9, HG_HITSTUN_MULTIPLIER, 1);
