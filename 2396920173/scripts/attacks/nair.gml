set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("Knair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("Knair_hurt"));

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 2);

//small
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_GOTO, 5);

//medium
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_GOTO, 5);

//large
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_GOTO, 5);

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 24);

//small
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 45);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 45);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 4);

//medium
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 45);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 45);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NAIR, 9, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 11, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 9, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 12, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 10, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 13, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 9, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 14, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 10, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 15, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 9, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 15, HG_WIDTH, 52);
set_hitbox_value(AT_NAIR, 15, HG_HEIGHT, 52);
set_hitbox_value(AT_NAIR, 15, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 15, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 15, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 15, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 15, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 15, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 15, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 15, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 15, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 15, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 15, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 16, HG_PARENT_HITBOX, 15);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 16, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 10, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_GROUP, 4);

//large
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 17, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 17, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 17, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_X, 25);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 17, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 17, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 17, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 17, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 17, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 17, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NAIR, 17, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 17, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 17, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 17, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 17, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 17, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 17, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 18, HG_PARENT_HITBOX, 17);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 18, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 18, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 18, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_X, -25);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 19, HG_PARENT_HITBOX, 17);
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 19, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 19, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 19, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 17, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 17, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 20, HG_PARENT_HITBOX, 17);
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 20, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 20, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 20, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 18, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 18, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 21, HG_PARENT_HITBOX, 17);
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 21, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 21, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 21, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 17, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 17, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 22, HG_PARENT_HITBOX, 17);
set_hitbox_value(AT_NAIR, 22, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 22, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 22, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 22, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 22, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 18, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 22, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 18, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 22, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 23, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 23, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 23, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 23, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 23, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 17, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 23, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 17, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 23, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 23, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 23, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 23, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 23, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 23, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 23, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 23, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 23, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 23, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 23, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 23, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 23, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 23, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 24, HG_PARENT_HITBOX, 23);
set_hitbox_value(AT_NAIR, 24, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 24, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 24, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 24, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 24, HG_HITBOX_X, get_hitbox_value(AT_NAIR, 18, HG_HITBOX_X));
set_hitbox_value(AT_NAIR, 24, HG_HITBOX_Y, get_hitbox_value(AT_NAIR, 18, HG_HITBOX_Y));
set_hitbox_value(AT_NAIR, 24, HG_HITBOX_GROUP, 4);