set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dthrow_hurt"));
set_attack_value(AT_DTHROW, AG_USES_CUSTOM_GRAVITY, 1);

var fast_gravity = 1.8;

// Crouch
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, codename_mischeif_active ? sound_get("marina_hooah") : asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 11);

// Going up
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, -15);
set_window_value(AT_DTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, fast_gravity);

// Reach for the apex
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, fast_gravity);

// Hold until contact
set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, fast_gravity);

// Slam
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_DTHROW, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DTHROW, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
//set_window_value(AT_DTHROW, 5, AG_WINDOW_SFX_FRAME, 0);

// reset
set_window_value(AT_DTHROW, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_DTHROW, 1);

// Create a hitbox where the opponent will be released
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 56);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 108);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, -100);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_DTHROW, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
/*
// windup/turn
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 14);

// YEET
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4)
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);

// recovery
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_DTHROW, 1);

// Create a hitbox where the opponent will be released
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 118);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 6.8);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 6.8);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 1.1);
//set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 0);
//set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_DTHROW, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);
*/