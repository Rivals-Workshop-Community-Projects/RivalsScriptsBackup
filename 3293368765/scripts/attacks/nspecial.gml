set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("ns_startup"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
// Charge 0
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("ns_stage0"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
// Charge 1
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("ns_stage1"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
// Charge 2
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("ns_stage2"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
// Release 0
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("tee_hit_light"));

// Release 1
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, sound_get("tee_hit_light"));

// Release 2
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 40);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, sound_get("tee_hit_heavy"));


set_num_hitboxes(AT_NSPECIAL, 4);

// No Charge 
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, fx_burst);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("tee_punch_light"));

// 1 Charge
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, fx_burst);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("tee_hit_med"));

//2 Charges
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, fx_burst);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.35);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, fx_special);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("tee_hit_XL"));