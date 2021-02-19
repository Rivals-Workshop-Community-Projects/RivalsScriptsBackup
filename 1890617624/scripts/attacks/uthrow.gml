// Ronald Magic

set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("lazer"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("lazer"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("lazer_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_SFX, sound_get("magic"));
set_window_value(AT_UTHROW, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_UTHROW, 0);

// Lazer
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 2000);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 30);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, 0.5);