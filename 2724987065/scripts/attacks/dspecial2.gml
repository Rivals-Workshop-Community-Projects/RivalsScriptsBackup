set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

// jumpsquat
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("jump"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 6);

// flying up
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, -88);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("stardiver1"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 1);

// in the air
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// falling
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED, 58);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("drg_jump"));
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 6);

// finisher
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);

// recovery
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_DSPECIAL_2, 6);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8); // 10
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 16); // 3
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 0);

set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 1); // 10
set_hitbox_value(AT_DSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 3); // 3
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, 2);
