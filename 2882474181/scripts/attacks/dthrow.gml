set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("lampnetbashingitsheadontotheground"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("lampnetbashingitsheadontotheground_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DTHROW, 3);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, sound_get("hit_punch2"));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW, 7777771);
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, 14);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_X, 61);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTHROW, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_SPRITE, sprite_get("glass"));
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_UNBASHABLE, 1);