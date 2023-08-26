set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("ballappear"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 44);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fspecial_proj2_mask"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 6.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, .02);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 112);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_LOCKOUT, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 58);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 2749);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("eggburst"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false);