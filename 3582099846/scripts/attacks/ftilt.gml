set_attack_value(AT_FTILT, AG_CATEGORY, 0);
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 9);

//Active
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 4);

//End Lag
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 7);

//Front hit

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);
// set_hitbox_value(AT_FTILT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

//Back hit

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, -10);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 3);
// set_hitbox_value(AT_FTILT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);

//Second Hitbox - Front
set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);

//Second Hitbox - Back
set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, -35);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 2);

//Third Hitbox - Front
set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 3);

//Third Hitbox - Back
set_hitbox_value(AT_FTILT, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, -35);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, 3);

//Launcher Hit

set_hitbox_value(AT_FTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 7, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FTILT, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 7, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 7, HG_WIDTH, 120);
set_hitbox_value(AT_FTILT, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 7, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 7, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 7, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));