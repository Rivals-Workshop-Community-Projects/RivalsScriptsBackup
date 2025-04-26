set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 99);
set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);

set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_buzzsaw_throw"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);

//land
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 25);

set_num_hitboxes(AT_NSPECIAL_AIR, 9);

//i apologize
//upper hitbox
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, vfx_m);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);

//lower hitbox
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, vfx_m);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 30);

set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, 45);

set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_Y, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_X, 30);

set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_Y, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_X, 45);


set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_Y, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_TECHABLE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_Y, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_X, 45);


set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HEIGHT, 85);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_TECHABLE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


