set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swish_heavy"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 4);

//sourspot
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 195);

//sweetspot
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 161);

//steam hitbox
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, -1);

//waterless hitbox
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//steam proj
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 15);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 15);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("steam_particle1"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_AIR_FRICTION, 0.1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);