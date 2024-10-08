set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 6);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 115);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -110);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 85);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 55);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_IGNORES_PROJECTILES, true);

//reflect
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 45);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 95);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 135);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSTRONG, 6, HG_IGNORES_PROJECTILES, true);