set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));

// startup
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);

// charge loop
set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));

// post-charge
set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));

// endlag
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
/*
set_num_hitboxes(AT_NTHROW, 0);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 999999999999);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("ptooie"));
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NTHROW, 1, HG_EFFECT, 6);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));*/