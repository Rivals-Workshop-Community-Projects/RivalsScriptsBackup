set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
//set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 0);
//set_attack_value(AT_USTRONG, AG_LANDING_LAG, 4);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_EXCLUDE, 1);

// Windup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8); // 8 4 5
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, laser_charge_sound);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_VSPEED_TYPE, 2);

// Hold
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5); // 5 4 5
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);

// Pre-kick
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2); // 3 14 15 9
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
//set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, laser_blast_sound);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 8);

// Penalty Zone
set_window_value(AT_USTRONG, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);
set_window_value(AT_USTRONG, penalty_window, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, penalty_window, AG_WINDOW_CUSTOM_AIR_FRICTION, sliding_friction);
set_window_value(AT_USTRONG, penalty_window, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);

/*
// Go up
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -4); // -7
//set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED, 2);
//set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);

// Turn
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8); // 8
//set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);

// final hit
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3); // 8
//set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);

// hold
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 12); // 8
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED_TYPE, 1);

// Return to neutral
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 10); // 8
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HSPEED_TYPE, 1);
*/

/*
// end in pratfall
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 10); // 3
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
*/


set_num_hitboxes(AT_USTRONG, 0);
/*
set_num_hitboxes(AT_USTRONG, 2);

// rising
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, ustrong_rising_duration);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 33);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9); // 10
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// rising
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 51);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9); // 10
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
*/

/*
// side
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 52);
//set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -75);
//set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 87);
//set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 36); // 54
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -66); // -75
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 76); // 76
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 119); // 134
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90); // 80
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9); // 10
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// top
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 22);
//set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -108);
//set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 150);
//set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 108);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 13); // 17
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -92); // -105
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 115); // 131
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 84); // 84
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90); // 80
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9); // 10
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// bottom edge
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, kick_duration);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 21); // 21
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -10); // -10
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 70); // 70
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 38); // 47
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90); // 80
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9); // 9.8 10
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9); // 9.8 10
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1); // 0.9 0.8
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
*/

/*
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 180);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
*/