//Tipper Thrust
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_FTILT, AG_AIR_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

//Attack
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("swing2"));

//Endlag
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("ftilt"));

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 19);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_COLOR, hb_color[1]);