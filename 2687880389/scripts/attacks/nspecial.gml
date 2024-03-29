set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// Windup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8); // 10
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

// Swing
var nspecial_grab_charge_duration = 8;
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, nspecial_grab_charge_duration);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);

// Gotcha
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Grab whiff
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16); // 20 16 10
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);

// Return to neutral
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 5); // 4
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);

// Hold
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Butterfingers
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, 0);

// Penalty Zone
set_window_value(AT_NSPECIAL, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);


set_num_hitboxes(AT_NSPECIAL, 1);

// Early, low grab
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, nspecial_grab_charge_duration / 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 34); // 35
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -39); // -41
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 68); // 74
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 48); // 66
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0.1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);

/*
// Late, higher grab
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, nspecial_grab_charge_duration / 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 39); // 35
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -58); // -41
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 58); // 74
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 43); // 66
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0.1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
*/


// Munophone notes
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD,
"On a successful grab you have " + string(get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH)) + " frames to decide where to throw.
Otherwise you fumble and take an extra " + string(get_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH)) + " frames to recover.");
var nspecial_hitbox_start = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) + 4;
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_ACTIVE, string(nspecial_hitbox_start + 1) + "-" + string(nspecial_hitbox_start + nspecial_grab_charge_duration));

/*
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);



set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Cancel into self starting on frame " + string(get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) + 1) + ".");
*/