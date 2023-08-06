set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 5);

//endlag normal
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_GOTO, 9);

//hold earthwake
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_DSTRONG, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, vfx_energy);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 2);

//ground
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, vfx_energy);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);

//erupt
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);