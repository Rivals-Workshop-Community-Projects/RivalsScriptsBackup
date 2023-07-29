//set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "the funny yell (taunt)");

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("taunt_hurt"));

// Stand up
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

// Pose gripping
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 11);

// Remove
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Pose holding
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, asset_get("sfx_troupple_fin_flap"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 15);

// Flick
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

// Stand
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// Return
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 38);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_glasses"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); // ignore enemies
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// Penalty Zone
set_window_value(AT_TAUNT, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);


/*
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
*/


/*set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "im scared

- trummel");*/