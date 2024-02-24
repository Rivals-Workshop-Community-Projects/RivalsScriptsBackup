var at = AT_UTILT;

set_attack_value(at, AG_SPRITE, sprite_get("utilt"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_poke_heavy);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);

//4 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, 0);
set_hitbox_value(at, num, HG_HITBOX_Y, -78);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 7);
set_hitbox_value(at, num, HG_DAMAGE, 9);
set_hitbox_value(at, num, HG_ANGLE, 90);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_heavy);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 8);

num++;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, 0);
set_hitbox_value(at, num, HG_HITBOX_Y, -58);
set_hitbox_value(at, num, HG_WIDTH, 80);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 6);
set_hitbox_value(at, num, HG_DAMAGE, 7);
set_hitbox_value(at, num, HG_ANGLE, 80);
set_hitbox_value(at, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_med);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 8);

set_num_hitboxes(at, num);