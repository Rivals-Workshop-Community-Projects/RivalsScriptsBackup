//Platinum Eraser

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1); //beam startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1); //beam startup 2
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1); //beam fire
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_big"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1); //beam endlag
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("beamstart"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("beamstart"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 24);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("beam"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, sprite_get("beam"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 20);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 300);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 24);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));