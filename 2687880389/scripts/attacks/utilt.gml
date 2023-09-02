set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
//set_attack_value(AT_UTILT, AG_HAS_LANDING_LAG, 1);
//set_attack_value(AT_UTILT, AG_LANDING_LAG, 4);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// Windup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4); // 4 5
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
//set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, laser_charge_sound);
//set_window_value(AT_UTILT, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_UTILT, 1, AG_WINDOW_VSPEED_TYPE, 2);

// Hold
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4); // 4 5
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);

// Pre-kick
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5); // 9 12 14 15 9
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, laser_blast_sound);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 4);

// Shoryu-kick! (It's just Flash Kick)
var kick_duration = 3;//hi_jump_kick ? 6 : 4;
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, kick_duration);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED, hi_jump_kick ? -17 : -8.5); // -11
set_window_value(AT_UTILT, 4, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_UTILT, 4, AG_WINDOW_HSPEED, 2);
//set_window_value(AT_UTILT, 4, AG_WINDOW_HSPEED_TYPE, 2);

// recoil
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 8); // 10 8
//set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);

// return to jump pose
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 8); // 10 3
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);

// Penalty Zone
set_window_value(AT_UTILT, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);
set_window_value(AT_UTILT, penalty_window, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, penalty_window, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);


set_num_hitboxes(AT_UTILT, 2);

// side
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 52);
//set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -75);
//set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 87);
//set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 36); // 54
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -54); // -52 -46 -66 -75
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 76); // 76
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 106); //112 119 134
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.6); // 0.8
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.6); // 0.8
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
//set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, blast_hit_effect);
//set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// top
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 22);
//set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -108);
//set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 150);
//set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 108);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 13); // 17
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -72); // -92 -105
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 115); // 131
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 84); // 84
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6); // 0.8
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.6); // 0.8
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 0.8);
//set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, blast_hit_effect);
//set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


/*
// bottom edge
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, kick_duration);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 21); // 21
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -10); // -10
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 70); // 70
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 38); // 47
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.6); // 0.8
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.6); // 0.8
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
*/

/*
// upper knuckle part
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 61);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
*/

/*
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 180);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
*/