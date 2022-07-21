set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 96);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 24);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 29);

set_num_hitboxes(AT_DAIR, 16);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 7);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 11, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 48);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 12, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW_CREATION_FRAME, 56);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW_CREATION_FRAME, 64);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW_CREATION_FRAME, 72);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 15, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 15, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 15, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 15, HG_WINDOW_CREATION_FRAME, 80);
set_hitbox_value(AT_DAIR, 15, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 15, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 15, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 16, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 16, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 16, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 16, HG_WINDOW_CREATION_FRAME, 88);
set_hitbox_value(AT_DAIR, 16, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 16, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 16, HG_HITBOX_GROUP, -1);