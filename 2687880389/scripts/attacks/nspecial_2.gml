set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_alt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_alt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

// Windup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Swing
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 0); // 4
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, air_friction);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 9);

// Release
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Hold
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 16); // 20 16 10
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);

// Return to neutral
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 5); // 4
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED, 0);

/*
// Hold
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Butterfingers
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_HSPEED, 0);
*/

// Penalty Zone
set_window_value(AT_NSPECIAL_2, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);


set_num_hitboxes(AT_NSPECIAL_2, 1);

// Boomerang
/*
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, boomerang_lifetime);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 34); // 35
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -39); // -41
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 68); // 74
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 48); // 66
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 3.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 1); // no visual effect
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 0);
*/

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, boomerang_lifetime);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 90);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.3);

//set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, emoji_splat);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, emoji_splat);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_bubblepop"));

//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 80);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -60);
var fthrow_neutral_angle = 0;
/*
var fthrow_hsp = lengthdir_x(intial_boomerang_throw_speed, fthrow_neutral_angle);
var fthrow_vsp = lengthdir_y(intial_boomerang_throw_speed, fthrow_neutral_angle);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, intial_boomerang_throw_speed)
*/
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("projectile"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("projectile_hitbox"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty"));
