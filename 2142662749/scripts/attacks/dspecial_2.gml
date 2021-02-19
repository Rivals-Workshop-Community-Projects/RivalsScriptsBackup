set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_active"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

//teleporting
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

//reappearing
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_hit_strong"));
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 1);

//endlag
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DSPECIAL_2, 0);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
