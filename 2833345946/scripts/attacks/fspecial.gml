set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);

//windup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_retract"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);

//ready
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("gun_shoot"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 11);

//shoot
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, -5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);

//explosion
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);