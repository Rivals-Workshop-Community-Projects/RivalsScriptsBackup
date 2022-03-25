set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_UAIR,5);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_MASK, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_MASK, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 90);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_MASK, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 90);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_MASK, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 90);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_MASK, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

if !has_rune("H") exit;

set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 2);

set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 8);