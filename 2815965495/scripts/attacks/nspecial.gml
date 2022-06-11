set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("Smokescreen"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .1);

//Endlag1
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
//MAX CHARGE
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("koffing"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .1);

//MAX RELEASE
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("Smokescreen"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .1);


set_num_hitboxes(AT_NSPECIAL, 6);

//NSPECIAL SMOKE
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 520);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_frog_jab"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_smoke"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .04);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

//LEVEL 1 EXPLOTION - NAIR
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DRIFT_MULTIPLIER , 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER,1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("Aim"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);

//LEVEL 2 EXPLOTION - FSPECIAL
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DRIFT_MULTIPLIER , 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER,1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("Aim"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 10);


//LEVEL 3 EXPLOTION - DSPECIAL
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DRIFT_MULTIPLIER , 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER,1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("Aim"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 10);







