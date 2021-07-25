set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_FSPECIAL_AIR, 0);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("acorn"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_FRICTION, 2);	
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 99);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);