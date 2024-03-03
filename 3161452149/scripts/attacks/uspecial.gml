var at = AT_USPECIAL;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_spin);
set_window_value(at, num, AG_WINDOW_VSPEED_TYPE, 1);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 15);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(at, num, AG_WINDOW_VSPEED, -8);
set_window_value(at, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 12);
set_window_value(at, num, AG_WINDOW_SFX, sfx_swipe_med);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(at, num, AG_WINDOW_VSPEED, -10);
set_window_value(at, num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(at, num, AG_WINDOW_HSPEED_TYPE, 1);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_TYPE, 7);
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 10);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 5);
set_hitbox_value(at, num, HG_HITBOX_Y, -55);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 110);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 85);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 5);
set_hitbox_value(at, num, HG_HITBOX_Y, -55);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 110);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 85);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 5);
set_hitbox_value(at, num, HG_HITBOX_Y, -55);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 110);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 85);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 5);
set_hitbox_value(at, num, HG_HITBOX_Y, -55);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 110);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 2);
set_hitbox_value(at, num, HG_ANGLE, 85);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 3);
set_hitbox_value(at, num, HG_LIFETIME, 6);
set_hitbox_value(at, num, HG_HITBOX_X, 15);
set_hitbox_value(at, num, HG_HITBOX_Y, -60);
set_hitbox_value(at, num, HG_WIDTH, 50);
set_hitbox_value(at, num, HG_HEIGHT, 100);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, 70);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_heavy1);

set_num_hitboxes(at, num);