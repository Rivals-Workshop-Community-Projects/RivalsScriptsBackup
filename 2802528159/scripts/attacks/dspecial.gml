set_attack_value(AT_DSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("0_dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_dspecial_drop"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_boss_vortex_start"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 28);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 39);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_mol_swap_start"));
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_small"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4 + (anger_state * 2));
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_small);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));


