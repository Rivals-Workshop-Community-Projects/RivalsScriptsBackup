set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_DAIR,15);


//hitboxes 1

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1.5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 0.3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

//hitboxes 2

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);

//hitboxes 3

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 3);

//hitboxes 4

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 4);

//hitboxes 5

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 5);

//hitboxes 6

set_hitbox_value(AT_DAIR, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 7);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DAIR, 12, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 7);
set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, 6);

//hitboxes 7

set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 7);

//hitboxes 8

set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 9);
set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 9);
set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 7);

