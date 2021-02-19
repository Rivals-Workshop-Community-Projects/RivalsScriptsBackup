set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 14);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

//Startup

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//Grabbed

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 4);

//Up Throw

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 19);

//Down Throw

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);

//Back Throw

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 30);

//Forward Throw

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 24);

//Endlag

set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 24);

//Hitboxes

set_num_hitboxes(AT_FSPECIAL, 5);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 111);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_soul_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_soul_break"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 150);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("sfx_soul_break"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("sfx_soul_break"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("sfx_soul_break"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
