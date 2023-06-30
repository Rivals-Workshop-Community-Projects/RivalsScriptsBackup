set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 14);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);

//Dash Upward
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -18);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 8);

//Dash Diagonally Upward
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 8);

//Dash Horizontally
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 18);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 8);

//Dash Diagonally Downward
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_GOTO, 8);

//Dash Downward
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 18);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 8);

//Second Startup
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 14);

//Dash Upward
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED, -18);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_GOTO, 14);

//Dash Diagonally Upward
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED, -15);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_GOTO, 14);

//Dash Horizontally
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED, 18);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_GOTO, 14);

//Dash Diagonally Downward
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HSPEED, 15);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_VSPEED, 15);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_GOTO, 14);

//Dash Downward
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_VSPEED, 18);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_GOTO, 14);

//Endlag
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 7);

set_num_hitboxes(AT_FSPECIAL, 10);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("HitLight2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("HitLight"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("HitLight2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("HitLight"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("HitLight2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, sound_get("HitLight"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, sound_get("HitLight2"));
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HIT_SFX, sound_get("HitLight"));
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_HIT_SFX, sound_get("HitLight2"));
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 13);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 10, HG_HIT_SFX, sound_get("HitLight"));
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, 2);