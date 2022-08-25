//Stores hitbox for detached N-Special.
//Should never be called on its own.

set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 150);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));