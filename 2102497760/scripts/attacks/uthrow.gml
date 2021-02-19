set_attack_value(AT_UTHROW, AG_CATEGORY, 1);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("ou_utilt"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_orca_shake"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
