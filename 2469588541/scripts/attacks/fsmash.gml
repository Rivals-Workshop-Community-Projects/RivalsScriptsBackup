set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_NUM_WINDOWS, 5);
set_attack_value(49, AG_HAS_LANDING_LAG, 4);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 16);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 1); // held
set_window_value(49, 2, AG_WINDOW_LENGTH, 18);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 17);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_boss_final_cannon"));
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 6);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 10);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 5, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_hit"));
set_window_value(49, 5, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 2);
set_hitbox_value(49, 1, HG_WIDTH, 80);
set_hitbox_value(49, 1, HG_HEIGHT, 80);
set_hitbox_value(49, 1, HG_PRIORITY, 1);
set_hitbox_value(49, 1, HG_DAMAGE, 1);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, bigstar_effect);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_ori_energy_hit"));
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(49, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(49, 1, HG_TECHABLE, 1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_WIDTH, 20);
set_hitbox_value(49, 2, HG_HEIGHT, 20);
set_hitbox_value(49, 2, HG_PRIORITY, 1);
set_hitbox_value(49, 2, HG_DAMAGE, 2);
set_hitbox_value(49, 2, HG_ANGLE, 55);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, bigstar_effect);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_HIT_LOCKOUT, 5);
set_hitbox_value(49, 2, HG_TECHABLE, 1);