set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 20);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 9999);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("moneybag_light"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_AIR_FRICTION, .025);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 20);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 9999);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("moneybag"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_VSPEED, -11);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_AIR_FRICTION, .025);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 4, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 304);

set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 20);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 9999);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -70);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("moneybag_heavy"));
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_HSPEED, -4);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_AIR_FRICTION, .025);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 5, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 304);