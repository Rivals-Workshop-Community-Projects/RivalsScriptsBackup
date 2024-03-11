set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 5);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

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
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, has_rune("L")?4:8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, has_rune("L")?-36:-18);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 7);

//Dash Diagonally Upward
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, has_rune("L")?4:8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, has_rune("L")? 30:15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, has_rune("L")?-30:-15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 7);

//Dash Horizontally
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, has_rune("L")?4:8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, has_rune("L")?36:18);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 7);

//Dash Diagonally Downward
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, has_rune("L")?4:8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, has_rune("L")?30:15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, has_rune("L")?30:15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_GOTO, 7);

//Dash Downward
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, has_rune("L")?4:8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, has_rune("L")?36:18);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 7);

//Endlag Air
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 22);

//Endlag Ground
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_FSPECIAL, 5);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, has_rune("L")? 3:6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
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
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, has_rune("L")? 3:6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -34);
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
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, has_rune("L")? 3:6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -36);
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
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, has_rune("L")? 3:6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -22);
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
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, has_rune("L")? 3:6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("HitLight2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);