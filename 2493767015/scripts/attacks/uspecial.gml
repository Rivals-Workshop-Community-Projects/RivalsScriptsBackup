set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial")); 
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("uspecial_rise"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USPECIAL, 6);

set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Rising Hit");

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -74);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_NAME, "Multihit 4");

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -74);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 6, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -8);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);