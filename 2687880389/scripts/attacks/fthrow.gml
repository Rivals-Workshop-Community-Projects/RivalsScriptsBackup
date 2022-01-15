set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));

// Up
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 4); // 6
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, 0);

// Over
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 2); // 4
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 0);

// Rest
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 4); // 6
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED, 0);

// Ready
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 3); // 4
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX_FRAME, 2);

// Hi, I'm a Chuckster
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);

// Recoil
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 5); // 7
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTHROW, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);


// Return
set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 5); // 7
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTHROW, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FTHROW, 6, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTHROW, 6, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_FTHROW, 1);

// Create a hitbox where the opponent will be released
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 106);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 94); // 88
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6); // 6
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.85); // 1.2
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6); // 6
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.85); // 1.2
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTHROW, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);
//set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));