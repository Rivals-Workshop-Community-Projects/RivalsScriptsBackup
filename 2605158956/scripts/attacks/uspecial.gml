set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_start"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -9);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.25);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.75);


set_num_hitboxes(AT_USPECIAL, 11);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 65);
//set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 65);
//set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -24);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 56);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -42);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 24);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -24);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 56);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -42);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 24);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -24);

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 56);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -42);

set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, 58);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 10, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 10, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 11, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 11, HG_HEIGHT, 28);
set_hitbox_value(AT_USPECIAL, 11, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 11, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_weak2"));