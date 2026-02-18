set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 23);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("snd_swing"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 19);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_FSPECIAL, 13);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -25);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8.5)
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .5)
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, 2);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, -25);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_FSPECIAL, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE, 64);
set_hitbox_value(AT_FSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_KNOCKBACK, 8)
set_hitbox_value(AT_FSPECIAL, 9, HG_KNOCKBACK_SCALING, .3)
set_hitbox_value(AT_FSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, -16);

set_hitbox_value(AT_FSPECIAL, 10, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, -5);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 29);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 11, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 11, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 11, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 35);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 12, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 12, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 12, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 37);
set_hitbox_value(AT_FSPECIAL, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 13, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL, 13, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 13, HG_HEIGHT, 22);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_GROUP, 1);