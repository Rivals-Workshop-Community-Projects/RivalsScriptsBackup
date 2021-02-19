set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_USPECIAL, 13);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 105);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 18);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 18);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 13);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 13);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 13);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 9, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 10, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, 13);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 11, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 12, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 12, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_X, 13);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 13, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_Y, -59);
set_hitbox_value(AT_USPECIAL, 13, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 13, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 13, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 13, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 13, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 13, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 13, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 13, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 13, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 13, HG_VISUAL_EFFECT, 198);
set_hitbox_value(AT_USPECIAL, 13, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_GROUP, -1);