set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT, 2)

// Kick
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 19);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 67);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Water Shot
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 31);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_FTILT, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

// Wave Multi
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 49);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 30);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_FTILT, 3, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 3, HG_THROWS_ROCK, 0);

// Wave Final
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 53);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_FTILT, 4, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FTILT, 4, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_PLASMA_SAFE, true);
//set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 4, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);