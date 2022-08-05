set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nspecial3"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial3_hurt"));

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("sfx_dedede_spit"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, -5);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_FTHROW, 0);
set_hitbox_value(AT_FTHROW, 1, HG_MUNO_HITBOX_NAME, "Star (Collateral)");
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 32);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("star"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_FTHROW, 2, HG_MUNO_HITBOX_NAME, "Star (Grabbed)");
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 32);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FTHROW, 2, HG_EFFECT, 9);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_PLASMA_SAFE, 1);


set_hitbox_value(AT_FTHROW, 3, HG_MUNO_HITBOX_NAME, "Star (From Projectile)");
set_hitbox_value(AT_FTHROW, 3, HG_MUNO_HITBOX_MISC_ADD, "Damage equal to 1.5x original projectile damage.");
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 18);
set_hitbox_value(AT_FTHROW, 3, HG_WIDTH, 32);
set_hitbox_value(AT_FTHROW, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FTHROW, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 3, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_SPRITE, sprite_get("star"));
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PLASMA_SAFE, 1);