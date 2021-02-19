set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_air"));
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_air_hurt"));
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 0);

//charge window
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//hitboxes
set_num_hitboxes(AT_USTRONG_2, 3);

//front hit
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_LOCKOUT, 8);

set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, 1);


//sweetspot
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_LOCKOUT, 8);

set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, 1);


//later hit
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_LOCKOUT, 8);

set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
