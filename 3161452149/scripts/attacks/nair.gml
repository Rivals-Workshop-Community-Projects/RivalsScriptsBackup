var at = AT_NAIR;

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("nair"));
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 6);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_spin);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 15);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 0);
set_hitbox_value(at, num, HG_HITBOX_Y, -15);
set_hitbox_value(at, num, HG_WIDTH, 70);
set_hitbox_value(at, num, HG_HEIGHT, 50);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, -25);
set_hitbox_value(at, num, HG_HITBOX_Y, -25);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, -15);
set_hitbox_value(at, num, HG_HITBOX_Y, -50);
set_hitbox_value(at, num, HG_WIDTH, 70);
set_hitbox_value(at, num, HG_HEIGHT, 50);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 15);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 0);
set_hitbox_value(at, num, HG_HITBOX_Y, -15);
set_hitbox_value(at, num, HG_WIDTH, 70);
set_hitbox_value(at, num, HG_HEIGHT, 50);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_heavy2);

set_num_hitboxes(at, num);