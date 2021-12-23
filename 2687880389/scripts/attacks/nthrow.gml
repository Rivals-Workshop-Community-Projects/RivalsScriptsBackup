set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));
set_attack_value(AT_NTHROW, AG_USES_CUSTOM_GRAVITY, 1);

// windup/turn
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, codename_mischeif_active ? sound_get("marina_yah") : asset_get("sfx_swipe_weak1"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 14);

// YEET
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4)
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);

// recovery
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_NTHROW, 1);

// Create a hitbox where the opponent will be released
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 118);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6.8);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6.8);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 1.1);
//set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 0);
//set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_NTHROW, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);

/*
// Windup
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Swing
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Gotcha
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Grab whiff
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Hold
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Butterfingers
set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_NTHROW, 1, HG_IGNORES_PROJECTILES, 0);

*/

/*
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("NTHROW_proj"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_MASK, sprite_get("NTHROW_proj"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_HSPEED, 18);



set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_MISC_ADD, "Cancel into self starting on frame " + string(get_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH) + get_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH) + 1) + ".");
*/