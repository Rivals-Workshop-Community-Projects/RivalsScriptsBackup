set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_2_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_hit_strong"));

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FSTRONG_2,1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj2"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("fstrong_proj2"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 23);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));