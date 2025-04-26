set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("sfx_cape_swipe_soft1"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 5);

//Active
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_fatal_ray_fire"));

//Active 2
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//Endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_USTRONG, 3);

//Rising Hitbox
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj1"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, sprite_get("ustrong_proj1"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_fatal_ray_big);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -30);
set_hitbox_value(AT_USTRONG, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);

//Falling Hitboxes
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj2"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, sprite_get("ustrong_proj2"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fx_fatal_ray_big);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GRAVITY, 15);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);

//Landing Hitbox
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("ustrong_proj2_impact"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, sprite_get("ustrong_proj2_impact"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_fatal_ray_big);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);