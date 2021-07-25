set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 11);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 31);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 28);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 11, HG_WIDTH, 75);
set_hitbox_value(AT_FSPECIAL, 11, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 11, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 11, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_GROUP, -1);
