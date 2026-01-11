set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//Startup
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

//Active
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 20);

//End Lag
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 5);

//Starting Hit - bottom

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 112);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

//Starting Hit - top

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

//Multi-Hit 1

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 84);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 84);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 125);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);

//Multi-hit 2
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);

//Launcher
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 96);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);