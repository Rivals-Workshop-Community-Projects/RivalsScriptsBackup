set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ell_fspecial_charge"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 3);

//charge window
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//hitboxes
set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);

//sourspot
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 75);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 83);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_1"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);