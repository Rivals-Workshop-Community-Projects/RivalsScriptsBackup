set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Windup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);// 5
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, laser_charge_sound);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USTRONG, 1, AG_WINDOW_VSPEED_TYPE, 2);

// Hold
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4); // 5
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);

// Pre-kick
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 14); // 15 // 9
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, sliding_friction);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
//set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, laser_blast_sound);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 8);


// Shoryu-kick! (It's just Flash Kick)
var kick_duration = hi_jump_kick ? 6 : 4;
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, kick_duration);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, hi_jump_kick ? -17 : -11);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);

// recoil
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);

// return to jump pose
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_USTRONG, 2);

// side
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, kick_duration);
//set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 52);
//set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -75);
//set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 87);
//set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 76);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 124);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
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
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -105);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 131);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

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