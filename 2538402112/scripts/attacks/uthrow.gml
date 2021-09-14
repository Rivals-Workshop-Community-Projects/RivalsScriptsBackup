// NSpecial Geo Pebble
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));
set_attack_value(AT_UTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("uthrow_air_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 24);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 18);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("geopebble"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 3.25);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GRAVITY, 0.35);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0.015);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);