set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("pogofirespin"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("pogofirespin_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, sound_get("firedrill"));

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED, -3);

set_window_value(AT_UTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 23);

set_window_value(AT_UTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_UTHROW, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 6, AG_WINDOW_VSPEED, -8);

set_num_hitboxes(AT_UTHROW, 9);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 130);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, sound_get("hit_fire_weak"));
set_hitbox_value(AT_UTHROW, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, .5);

set_hitbox_value(AT_UTHROW, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, -2);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, -3);
set_hitbox_value(AT_UTHROW, 3, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_GROUP, -4);
set_hitbox_value(AT_UTHROW, 4, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_GROUP, -5);
set_hitbox_value(AT_UTHROW, 5, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_GROUP, -6);
set_hitbox_value(AT_UTHROW, 6, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 7, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 7, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_GROUP, -7);
set_hitbox_value(AT_UTHROW, 7, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 8, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 8, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_UTHROW, 8, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 8, HG_HITBOX_GROUP, -8);
set_hitbox_value(AT_UTHROW, 8, HG_ANGLE_FLIPPER, 2);

set_hitbox_value(AT_UTHROW, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 9, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 9, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTHROW, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 9, HG_HITBOX_GROUP, -9);
set_hitbox_value(AT_UTHROW, 9, HG_ANGLE_FLIPPER, 2);