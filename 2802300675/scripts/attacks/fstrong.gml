set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume_fail"));

//attack
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, hitaffectstrong);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 108);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -30);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, hitaffectstrong);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 112);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 6); 
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, hitsmoke);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_send"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("smogball"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("smogball"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, hitsmoke);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);