var atk = AT_USPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 15);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 11);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 10);

num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 7);
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 12);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 2);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 70);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 26);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 58);
set_hitbox_value(atk, num, HG_HEIGHT, 52);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_ANGLE, 75);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 2);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 2);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 70);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_ANGLE, 75);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 2);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 26);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 58);
set_hitbox_value(atk, num, HG_HEIGHT, 52);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_TECHABLE, 1);
set_hitbox_value(atk, num, HG_ANGLE, 75);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 2);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, num, HG_WINDOW, 4);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 20);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, num, HG_WINDOW, 4);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 10);
set_hitbox_value(atk, num, HG_HITBOX_Y, -34);
set_hitbox_value(atk, num, HG_WIDTH, 94);
set_hitbox_value(atk, num, HG_HEIGHT, 48);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 20);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//carton
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 300);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_WIDTH, 76);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_HITBOX_X, 36);
set_hitbox_value(atk, num, HG_HITBOX_Y, -70);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_EFFECT, 9);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_VSPEED, -11);
set_hitbox_value(atk, num, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("uspecial_carton"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//pizza
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 600);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_WIDTH, 76);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_HITBOX_X, 36);
set_hitbox_value(atk, num, HG_HITBOX_Y, -70);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 75);
set_hitbox_value(atk, num, HG_EFFECT, 9);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(atk, num, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(atk, num, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("uspecial_pizza"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//bag
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 600);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_WIDTH, 40);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_HITBOX_X, 36);
set_hitbox_value(atk, num, HG_HITBOX_Y, -70);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_EFFECT, 9);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(atk, num, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(atk, num, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("uspecial_bag"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_num_hitboxes(atk, num);