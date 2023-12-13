set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("air_nthrow"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("air_nthrow_hurt"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NTHROW, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Launch/get water
set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Monster up
set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Monster hover/munch4
set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NTHROW, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
// set_window_value(AT_NTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(AT_NTHROW, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NTHROW, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 4, AG_WINDOW_VSPEED, -4);
// set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_NTHROW, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

//monster down
set_window_value(AT_NTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_TYPE, 8);
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 5, AG_WINDOW_GOTO, 6);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NTHROW, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NTHROW, 5, AG_WINDOW_VSPEED, 4);
set_window_value(AT_NTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 2);
// set_window_value(AT_NTHROW, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_NTHROW, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.1);

//active
set_window_value(AT_NTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 5);
// set_window_value(AT_NTHROW, 6, AG_WINDOW_GOTO, 8);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NTHROW, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_VSPEED, 0);

//recovery
set_window_value(AT_NTHROW, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 7, AG_WINDOW_LENGTH, 32);
// set_window_value(AT_NTHROW, 7, AG_WINDOW_GOTO, 29);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 23);
// set_window_value(AT_NTHROW, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
// set_window_value(AT_NTHROW, 7, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_NTHROW, 7, AG_WINDOW_HSPEED, 0);
// set_window_value(AT_NTHROW, 7, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_NTHROW, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//aerial explosion
set_window_value(AT_NTHROW, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 27);
// set_window_value(AT_NTHROW, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 8, AG_WINDOW_HSPEED, -4);
set_window_value(AT_NTHROW, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);



set_num_hitboxes(AT_NTHROW, 3);

//Munch box
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -110);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 120);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"))

//throw hitbox
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, get_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH));
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 100);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NTHROW, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
// set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, nspecial_water_explosion_hfx);

//Alley oop, I dont use it anymore
// set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 5);
// set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, get_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH));
// set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 30);
// set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, -30);
// set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 3);
// set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 60);
// set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 50);
// set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 5);
// set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 85);
// set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 9);
// set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, 0.2);
// set_hitbox_value(AT_NTHROW, 3, HG_HITSTUN_MULTIPLIER, 0.6);
// set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 7);
// set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, 0.3);
// set_hitbox_value(AT_NTHROW, 3, HG_HIT_LOCKOUT, 10);
// set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, asset_get("sfx_swipe_weak1"))

//throw hitbox aerial
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 8);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NTHROW, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"))
// set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT, nspecial_water_miss_ground_hitfx_hfx)