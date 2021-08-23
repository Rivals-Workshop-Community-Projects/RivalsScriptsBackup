set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_throw"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_throw_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

//Getting ready to launch state
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 17);

//Holding opponent and aiming
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_GOTO, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);

//Throwing opponent
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//Endlag
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH,9);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);


set_num_hitboxes(AT_NSPECIAL_2, 6);

//Throwing Forward (45°)
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Throwing Forward (50°)
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Throwing Forward-Upward (60°)
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Throwing Forward-Upward (70°)
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Throwing Forward-Upward (80°)
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Throwing Upward (90°)
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
