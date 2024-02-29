set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_staff"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_staff_hurt"));

set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6)

//charging window
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("GartishLauncher_Charging"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);

//full charge
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("GartishLauncher_FullCharge"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);

//full charge hold
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//release
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 5);

//active
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//endlag
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_DSPECIAL_2, 2);

//staff
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 2);