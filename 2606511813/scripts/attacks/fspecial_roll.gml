set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fspecial_roll"));
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fspecial_roll_air"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fspecial_roll_hurt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_roll_air_hurt"));
set_attack_value(AT_FTHROW, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 5);

//startup
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("gun_load"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//ready
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("gun_shoot_strong"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//shoot/roll
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED, -9);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_VSPEED, -3.5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//return to shoot pose
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//return to normal
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_num_hitboxes(AT_FTHROW, 3);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FTHROW, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FTHROW, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, vfx_reticle_large);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 0.7);

set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj_strong"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, 19);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, vfx_reticle_large);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);

//super smash bros melee
/*
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_FTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FTHROW, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTHROW, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 0);
*/

//blindspot cover
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FTHROW, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FTHROW, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FTHROW, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTHROW, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FTHROW, 3, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTHROW, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FTHROW, 3, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 3, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_FTHROW, 3, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);