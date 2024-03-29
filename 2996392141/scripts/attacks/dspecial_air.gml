set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL_AIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, DSPECIAL_STARTUP);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, DSPECIAL_ENDLAG);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_GOTO, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Melee Hit");
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Shock (Tension 1)");
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_shockair1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, sprite_get("fx_shockair1_hurt"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fx_shockair1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, 5/15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_MUNO_HITBOX_NAME, "Shock (Tension 2-3)");
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("fx_shockair2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, sprite_get("fx_shockair2_hurt"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fx_shockair2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, 5/15);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_MUNO_HITBOX_NAME, "Shock (Tension 4)");
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, sprite_get("fx_shockair3"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_MASK, sprite_get("fx_shockair3_hurt"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fx_shockair3"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_ANIM_SPEED, 5/20);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);