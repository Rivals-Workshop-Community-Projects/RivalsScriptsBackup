set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 421);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 420);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 69);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 68);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG,7);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -28+5);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 120);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -28+10);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 155);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -(28-5));

set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 190);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -(28-10));

set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 225);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -(28-15));

set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_LOCKOUT, 2);