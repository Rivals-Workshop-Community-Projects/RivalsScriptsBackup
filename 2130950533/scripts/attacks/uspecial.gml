set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

var flight_duration = 10;


// Windup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);

// Windup (aerial)
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 6);

// Uppercut
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -8.5);

// Go to hover
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 9);

// Hover
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, flight_duration);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, 1.5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, flight_duration - 1);

// Cancelled mid flight
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 16);

// Touched the ground
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_USPECIAL, 6);

// Spinning hat during descent
set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, flight_duration / 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -89);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, flight_duration / 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, flight_duration / 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -89);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

// Rising strong early hit
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

// Rising (weak hit)
set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 1);