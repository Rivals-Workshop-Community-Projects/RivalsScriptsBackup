set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

//Startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_active"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

//Active
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Active
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, blob2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1)
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
