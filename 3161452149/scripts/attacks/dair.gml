var at = AT_DAIR;

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("dair"));
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 11);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_spin);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 14);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 2);
set_hitbox_value(at, num, HG_HITBOX_Y, -15);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 50);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 7);
set_hitbox_value(at, num, HG_HITBOX_Y, -10);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 7);
set_hitbox_value(at, num, HG_HITBOX_Y, -10);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 7);
set_hitbox_value(at, num, HG_HITBOX_Y, -10);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 7);
set_hitbox_value(at, num, HG_HITBOX_Y, -10);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, -10);
set_hitbox_value(at, num, HG_HITBOX_Y, -25);
set_hitbox_value(at, num, HG_WIDTH, 90);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, 55);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_heavy1);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 2);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 10);
set_hitbox_value(at, num, HG_HITBOX_Y, 10);
set_hitbox_value(at, num, HG_WIDTH, 30);
set_hitbox_value(at, num, HG_HEIGHT, 30);
set_hitbox_value(at, num, HG_PRIORITY, 5);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, -50);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_heavy1);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 2);

set_num_hitboxes(at, num);