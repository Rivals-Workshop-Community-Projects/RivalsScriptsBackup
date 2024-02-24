var at = AT_FTILT;

set_attack_value(at, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(at, num, AG_WINDOW_SFX, sfx_poke_weak);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 30);
set_hitbox_value(at, num, HG_HITBOX_Y, -60);
set_hitbox_value(at, num, HG_WIDTH, 45);
set_hitbox_value(at, num, HG_HEIGHT, 45);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 7);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 4);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, 60);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 7);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

set_num_hitboxes(at, num);