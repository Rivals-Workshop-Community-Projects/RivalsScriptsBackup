var atk = AT_FTILT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, -2);
set_hitbox_value(atk, num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 50);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//cloud
num++
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, num, HG_LIFETIME, 30);
set_hitbox_value(atk, num, HG_HITBOX_X, 60);
set_hitbox_value(atk, num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, num, HG_WIDTH, 60);
set_hitbox_value(atk, num, HG_HEIGHT, 60);
set_hitbox_value(atk, num, HG_PRIORITY, 10);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 80);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(atk, num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, num, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, sprite_get("partc_ftilt"));
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
set_hitbox_value(atk, num, HG_HITSTUN_MULTIPLIER, .5);

set_num_hitboxes(atk, num);