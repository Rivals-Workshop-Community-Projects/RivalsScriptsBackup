set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));

sword_attack_spr[0, 49] = sprite_get("sword0_final_smash");
sword_attack_hurtbox_spr[0, 49] = asset_get("empty_sprite")
sword_attack_xoff[0, 49] = 32;
sword_attack_yoff[0, 49] = 16;
sword_attack_can_move[0, 49] = false


sword_attack_spr[1, 49] = sprite_get("sword1_final_smash");
sword_attack_hurtbox_spr[1, 49] = asset_get("empty_sprite")
sword_attack_xoff[1, 49] = 32;
sword_attack_yoff[1, 49] = -96;
sword_attack_can_move[1, 49] = false


set_attack_value(49, AG_NUM_WINDOWS, 5);
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 150);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 8);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 4, AG_WINDOW_TYPE, 9);
set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 4, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 5, AG_WINDOW_LENGTH, 25);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 5, AG_WINDOW_INVINCIBILITY, 1);

sword_window_min[0, 49] = 6;
sword_window_max[0, 49] = 10;

sword_window_min[1, 49] = 6;
sword_window_max[1, 49] = 10;

set_window_value(49, 6, AG_WINDOW_LENGTH, 20);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 7, AG_WINDOW_LENGTH, 150);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 8, AG_WINDOW_LENGTH, 8);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 9, AG_WINDOW_TYPE, 9);
set_window_value(49, 9, AG_WINDOW_LENGTH, 10);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(49, 10, AG_WINDOW_LENGTH, 25);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(49, 0);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 30);
set_hitbox_value(49, 1, HG_WIDTH, 256);
set_hitbox_value(49, 1, HG_HEIGHT, 144);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 1);
set_hitbox_value(49, 1, HG_ANGLE, 55);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 0.5);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 30);
set_hitbox_value(49, 2, HG_WIDTH, 256);
set_hitbox_value(49, 2, HG_HEIGHT, 144);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 1);
set_hitbox_value(49, 2, HG_ANGLE, 55);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(49, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 2, HG_HIT_LOCKOUT, 30);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_PLASMA_SAFE, 1);