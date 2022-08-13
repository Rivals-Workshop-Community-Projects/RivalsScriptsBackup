set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 6);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 10);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 270);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 100);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 105);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 10);

//jab1 back hit lol
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 135);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 1);

//extra money hit
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 80);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 5, HG_HIT_LOCKOUT, 10);

//money
set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 10, HG_WINDOW, 80);
set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 9999);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 10, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 10, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 10, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 10, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 10, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 10, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 10, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_SPRITE, sprite_get("money"));
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_JAB, 10, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_JAB, 10, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);

//money pile
set_hitbox_value(AT_JAB, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 11, HG_WINDOW, 80);
set_hitbox_value(AT_JAB, 11, HG_LIFETIME, 360);
set_hitbox_value(AT_JAB, 11, HG_WIDTH, 35);
set_hitbox_value(AT_JAB, 11, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_SPRITE, sprite_get("moneypile"));
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
//set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_JAB, 11, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);

//dust
set_hitbox_value(AT_JAB, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 12, HG_WINDOW, 80);
set_hitbox_value(AT_JAB, 12, HG_LIFETIME, 20);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 12, HG_WIDTH, 35);
set_hitbox_value(AT_JAB, 12, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 12, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 12, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 12, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 12, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 12, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 12, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 12, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_SPRITE, sprite_get("dust_effect"));
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_JAB, 12, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 12, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_JAB, 13, HG_HITSTUN_MULTIPLIER, 0.25);