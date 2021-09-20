set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_NAME, "Camera");
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sfx_botw_camera_shutter);

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 16);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 16	);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 150);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, sound_get("ssbu_home_run"));