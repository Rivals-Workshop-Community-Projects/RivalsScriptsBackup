set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 5);

//Startup
set_window_value(49, 1, AG_WINDOW_LENGTH, 24);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_finalstart2"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 12);

//Startup 2 (This has Anthem Plant spawn in the background)
set_window_value(49, 2, AG_WINDOW_TYPE, 9);
set_window_value(49, 2, AG_WINDOW_LOOP_TIMES, 10);
set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Startup 3
set_window_value(49, 3, AG_WINDOW_LENGTH, 15);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("sfx_anthem_final3b"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 12);

//Active
set_window_value(49, 4, AG_WINDOW_TYPE, 9);
set_window_value(49, 4, AG_WINDOW_LOOP_TIMES, 25);
set_window_value(49, 4, AG_WINDOW_LENGTH, 8);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag
set_window_value(49, 5, AG_WINDOW_LENGTH, 34);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

//Hitboxes
set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Projecile");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 200);
set_hitbox_value(49, 1, HG_HITBOX_X, 32);
set_hitbox_value(49, 1, HG_HITBOX_Y, -36);
set_hitbox_value(49, 1, HG_WIDTH, 96);
set_hitbox_value(49, 1, HG_HEIGHT, 96);
set_hitbox_value(49, 1, HG_PRIORITY, 8);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_final_smash_proj"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("fx_final_smash_proj"));
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(49, 1, HG_PROJECTILE_VSPEED, 2.5);
set_hitbox_value(49, 1, HG_PROJECTILE_GRAVITY, 0.8);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(49, 1, HG_FORCE_FLINCH, 2);

set_hitbox_value(49, 2, HG_MUNO_HITBOX_NAME, "Explosion (Grounded");
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 48);
set_hitbox_value(49, 2, HG_HITBOX_X, 32);
set_hitbox_value(49, 2, HG_HITBOX_Y, -36);
set_hitbox_value(49, 2, HG_WIDTH, 176);
set_hitbox_value(49, 2, HG_HEIGHT, 176);
set_hitbox_value(49, 2, HG_PRIORITY, 8);
set_hitbox_value(49, 2, HG_DAMAGE, 8);
set_hitbox_value(49, 2, HG_ANGLE, 40);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 2, HG_EFFECT, 19);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_ell_big_missile_ground"));
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3e"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, 12/48);
set_hitbox_value(49, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(49, 3, HG_MUNO_HITBOX_NAME, "Explosion (Air)");
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 48);
set_hitbox_value(49, 3, HG_HITBOX_X, 32);
set_hitbox_value(49, 3, HG_HITBOX_Y, -36);
set_hitbox_value(49, 3, HG_WIDTH, 176);
set_hitbox_value(49, 3, HG_HEIGHT, 176);
set_hitbox_value(49, 3, HG_PRIORITY, 8);
set_hitbox_value(49, 3, HG_DAMAGE, 8);
set_hitbox_value(49, 3, HG_ANGLE, 45);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 3, HG_EFFECT, 19);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_ell_big_missile_ground"));
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3e"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 3, HG_PROJECTILE_ANIM_SPEED, 12/48);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);