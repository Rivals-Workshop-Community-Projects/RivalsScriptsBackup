set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 8);
//set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 0);
//set_attack_value(AT_USTRONG_2, AG_LANDING_LAG, 4);
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 0);
//set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 9);
set_attack_value(AT_USTRONG_2, AG_MUNO_ATTACK_NAME, "UStrong");
set_attack_value(AT_USTRONG_2, AG_MUNO_ATTACK_LANDING_LAG, "6 (10)");

/*
// Windup
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 5); // 4 5
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, laser_charge_sound);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED_TYPE, 2);

// Hold
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 5); // 4 5
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
*/

// Pre-kick
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 2); // 3 14 15 9
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, laser_blast_sound);
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Go up
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED, -4); // -7
//set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED, 2);
//set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Turn
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3); // 8
//set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Pose
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 5); // 8
//set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// final hit
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 3); // 8
//set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// hold
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_LENGTH, 2); // 8
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// start descending
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_LENGTH, 10); // 10 8
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(AT_USTRONG_2, 7, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USTRONG_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed / 1.25);

// Return to neutral
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_LENGTH, 10); // 8
//set_window_value(AT_USTRONG_2, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_ANIM_FRAME_START, 13);
//set_window_value(AT_USTRONG_2, 8, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USTRONG_2, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

/*
// end in pratfall
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_LENGTH, 10); // 3
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
*/

// Penalty Zone
set_window_value(AT_USTRONG_2, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);


set_num_hitboxes(AT_USTRONG_2, 2);

// Sum up lengths of all ustrong windows, account for repeated windows
var ustrong_startup = get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH);
var ustrong_main = ustrong_rising_duration + get_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH);
var ustrong_endlag = get_window_value(AT_USTRONG_2, 6, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG_2, 7, AG_WINDOW_LENGTH) + get_window_value(AT_USTRONG_2, 8, AG_WINDOW_LENGTH);
var ustrong_whifflag = ceil(get_window_value(AT_USTRONG_2, 6, AG_WINDOW_LENGTH) * 1.5) + ceil(get_window_value(AT_USTRONG_2, 7, AG_WINDOW_LENGTH) * 1.5) + get_window_value(AT_USTRONG_2, 8, AG_WINDOW_LENGTH);
set_attack_value(AT_USTRONG_2, AG_MUNO_ATTACK_FAF, string(ustrong_startup + ustrong_main + ustrong_endlag) + " (" + string(ustrong_startup + ustrong_main + ustrong_whifflag) + ")");

// rising
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 0);
//set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, ustrong_rising_duration);
//set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, get_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, ustrong_rising_hitbox_duration);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 0.1); // 10
//set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
//set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 100); // 9 10
//set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
//set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG_2, 1, HG_TECHABLE, 1); // Cannot tech intermediate hits
set_hitbox_value(AT_USTRONG_2, 1, HG_MUNO_HITBOX_MISC_ADD, "Hits " + string(ustrong_num_rising_hits) + " times on the way up");
set_hitbox_value(AT_USTRONG_2, 1, HG_MUNO_HITBOX_ACTIVE, string(ustrong_startup) + "-" + string(ustrong_startup + ustrong_rising_duration));

// Last hit
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 50); // 60
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 8); // 9 10
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1); // 1.0 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 8); // 9 10
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

/*
// side
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 52);
//set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -75);
//set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 87);
//set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 36); // 54
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -66); // -75
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 76); // 76
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 119); // 134
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90); // 80
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 9); // 10
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// top
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 22);
//set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -108);
//set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 150);
//set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 108);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 13); // 17
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -92); // -105
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 115); // 131
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 84); // 84
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90); // 80
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 9); // 10
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// bottom edge
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, kick_duration);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, 21); // 21
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, -10); // -10
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 70); // 70
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 38); // 47
set_hitbox_value(AT_USTRONG_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE, 90); // 80
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 9); // 9.8 10
set_hitbox_value(AT_USTRONG_2, 3, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 9); // 9.8 10
set_hitbox_value(AT_USTRONG_2, 3, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
*/

/*
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2,1);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 180);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
*/