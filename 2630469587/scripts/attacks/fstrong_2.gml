set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 2);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("judgement"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 11);


set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 35);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("judgement"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_AIR_FRICTION, -0.2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 66);

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG_2, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("cut"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get(""));
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_AIR_FRICTION, -0.2);

set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_X, 140);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WIDTH, 55);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG_2, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_SPRITE, sprite_get("judgementweak"));
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PROJECTILE_AIR_FRICTION, -0.2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, 1);