set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_start"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 9);

//Release
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_laser_fire"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

//Active
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//Active 2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//Endlag
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 2);

//Beam Hitbox
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

//explosion hbox
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 28);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 92);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 253);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_AIR_FRICTION, .03);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);