set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 7);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 105);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 49);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("shadowguide"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_INVINCIBILITY, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 54);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("shadowerror"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.75);

set_num_hitboxes(AT_USPECIAL, 12);

set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 41);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 61);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 81);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 101);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 42);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 9, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 41);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 10, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW_CREATION_FRAME, 61);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 11, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW_CREATION_FRAME, 81);
set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, -28);

set_hitbox_value(AT_USPECIAL, 12, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW_CREATION_FRAME, 101);
set_hitbox_value(AT_USPECIAL, 12, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_Y, -28);