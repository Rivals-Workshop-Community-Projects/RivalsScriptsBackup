set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_hod_fspecial"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 3);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 158);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -55);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 82);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, dark_med);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));