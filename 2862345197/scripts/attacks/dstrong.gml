set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_MUNO_ATTACK_MISC_ADD, "More spikes spawn when charging for longer. Spikes cannot appear in the air.");

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("spike_warn_1"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

var temp_num = 1;

set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DSTRONG, temp_num, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE, 280);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, temp_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE_FLIPPER, 8);
temp_num += 1;

set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Spikes");
set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_ACTIVE, "24-27");
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_LIFETIME, 999);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 48);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 48);
set_hitbox_value(AT_DSTRONG, temp_num, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PRIORITY, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSTRONG, temp_num, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_SPRITE, sprite_get("dstrong_indicator_spawn"));
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dstrong_spike_mask"));
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_DESTROY_EFFECT, emptyfx);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ZAP, 1);
temp_num += 1;

set_num_hitboxes(AT_DSTRONG, temp_num-1);