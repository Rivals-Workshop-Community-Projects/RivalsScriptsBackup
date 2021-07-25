set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_NSPECIAL_AIR, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, -4.5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, 0.15);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_FRICTION, 2);	
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("zap2"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 30);