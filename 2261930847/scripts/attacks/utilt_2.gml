set_attack_value(AT_UTILT_2, AG_SPRITE, sprite_get("utilt_mud"));
set_attack_value(AT_UTILT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT_2, AG_HURTBOX_SPRITE, sprite_get("utilt_mud_hurt"));

set_window_value(AT_UTILT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT_2, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTILT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT_2, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT_2, 6);

//quag hit
set_hitbox_value(AT_UTILT_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_2, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT_2, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_UTILT_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT_2, 1, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT_2, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_UTILT_2, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//1st water hit

set_hitbox_value(AT_UTILT_2, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT_2, 6, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT_2, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT_2, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT_2, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT_2, 6, HG_HITBOX_Y, -8);
set_hitbox_value(AT_UTILT_2, 6, HG_WIDTH, 35);
set_hitbox_value(AT_UTILT_2, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT_2, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_2, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT_2, 6, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT_2, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT_2, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT_2, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT_2, 6, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

//2nd water hit

set_hitbox_value(AT_UTILT_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT_2, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT_2, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT_2, 2, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

//3rd water hit
set_hitbox_value(AT_UTILT_2, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT_2, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT_2, 3, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT_2, 3, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT_2, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_2, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT_2, 3, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT_2, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT_2, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT_2, 3, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

//4th water hit
set_hitbox_value(AT_UTILT_2, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_2, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT_2, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT_2, 4, HG_HITBOX_X, -18);
set_hitbox_value(AT_UTILT_2, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT_2, 4, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT_2, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_UTILT_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_2, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT_2, 4, HG_ANGLE, 105);
set_hitbox_value(AT_UTILT_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT_2, 4, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_UTILT_2, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT_2, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT_2, 4, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

//5th water hit
set_hitbox_value(AT_UTILT_2, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT_2, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT_2, 5, HG_HITBOX_X, -35);
set_hitbox_value(AT_UTILT_2, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT_2, 5, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT_2, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT_2, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT_2, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT_2, 5, HG_ANGLE, 105);
set_hitbox_value(AT_UTILT_2, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT_2, 5, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_UTILT_2, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT_2, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT_2, 5, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));