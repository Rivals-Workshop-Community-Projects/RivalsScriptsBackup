//set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_NAME, "the funny yell (taunt)");

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_change"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 10);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt_change_hurt"));

// Change
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 3);

// POOF
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Dust settles
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// Mandatory hold
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

// Optional Hold
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// POOF AGAIN (Can still see the thing)
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear"));
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_SFX_FRAME, 1);

// Totally obscured
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 11);

// Dust settles again
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAME_START, 12);

// Hold
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_ANIM_FRAME_START, 15);

// Return to neutral
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_ANIM_FRAME_START, 16);

// Penalty Zone
set_window_value(AT_TAUNT_2, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);



/*
// Stand up
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);

// Pose gripping
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 11);

// Remove
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Pose holding
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("sfx_troupple_fin_flap"));
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 15);

// Flick
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);

// Stand
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// Return
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 38);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_glasses"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, sprite_get("taunt_glasses"));
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); // ignore enemies
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

*/