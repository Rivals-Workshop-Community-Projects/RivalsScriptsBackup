set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);

// Center
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -108);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sfx_fe_hit2);

// Back
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -48);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sfx_fe_hit1);

// Back2
//set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -34);
//set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -90);
//set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 34);
//set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 34);
//set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
//set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 75);
//set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sfx_fe_hit1);

// Front
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 44);
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -83);
//set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 40);
//set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 40);
//set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
//set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 75);
//set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sfx_fe_hit1);

// The Sirc Hitbox
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 116);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sfx_fe_hit1);

// Why are you looking here nothing to see
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -33);
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, 40);
//set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 4, HG_ANGLE, -90);
//set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sfx_fe_hit1);
//
//set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -83);
//set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, 40);
//set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 5, HG_ANGLE, -90);
//set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, sfx_fe_hit1);
//
//set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -103);
//set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, 40);
//set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 6, HG_ANGLE, -90);
//set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, sfx_fe_hit1);
//
//set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, -33);
//set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, 100);
//set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 7, HG_ANGLE, -90);
//set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, sfx_fe_hit1);
//
//set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -53);
//set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, 100);
//set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 8, HG_ANGLE, -90);
//set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, sfx_fe_hit1);
//
//set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, -83);
//set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, 100);
//set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 9, HG_ANGLE, -90);
//set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, sfx_fe_hit1);
//
//set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
//set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 3);
//set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, -93);
//set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, 120);
//set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 2);
//set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 2);
//set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 3);
//set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 7);
//set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 180);
//set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, sfx_fe_hit1);