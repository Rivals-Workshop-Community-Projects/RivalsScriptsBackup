set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 180);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 62);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 25);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, ghost_hfx_weak);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fspecial_proj_collbox"))
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, ghost_hfx_weak);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 25)
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 94);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, ghost_hfx_weak);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);

//--------------------------------------------------------------------//

set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_num_hitboxes(AT_FSPECIAL_AIR, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 35)
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 94);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, ghost_hfx_weak);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_PARTICLE_NUM, 1);
