var atk = AT_NSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

//1 startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 14);

//2 throw
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

//3 endlag
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

//4 startup
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, num, AG_WINDOW_SFX, sound_get("drink"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 15);

//5 drink
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 13);


set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1; //flask
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projectile"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_projectile_hurt"));
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, num, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(atk, num, HG_LIFETIME, 600);
set_hitbox_value(atk, num, HG_WIDTH, 30);
set_hitbox_value(atk, num, HG_HEIGHT, 30);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(atk, num, HG_PROJECTILE_LIFESPAN, 301);
set_hitbox_value(atk, num, HG_HIT_SFX, sound_get("shatter"));

num++ //boom
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 20);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 80);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 10);
set_hitbox_value(atk, num, HG_ANGLE, 80);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);

num++ //water burst
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 20);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 80);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);

//water
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 300);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("water_hurt"));
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("partc_water"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 1);

//acid
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 600);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 40);
set_hitbox_value(atk, num, HG_PRIORITY, 1);
set_hitbox_value(atk, num, HG_DAMAGE, 0);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_SHAPE, 1);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("water_hurt"));
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("partc_acid"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 1);

//phosphine cloud
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_LIFETIME, 400);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("partc_gascloud"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, 137);
set_hitbox_value(atk, num, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));

set_num_hitboxes(atk, 0);