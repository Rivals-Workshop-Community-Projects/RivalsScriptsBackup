var at = AT_JAB;

set_attack_value(at, AG_SPRITE, sprite_get("jab"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_poke_weak);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 1);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(at, num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(at, num, AG_WINDOW_CANCEL_FRAME, 4);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_poke_med);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 7);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 16);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(at, num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(at, num, AG_WINDOW_CANCEL_FRAME, 8);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_swipe_med);
//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 15);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 17);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 40);
set_hitbox_value(at, num, HG_HITBOX_Y, -38);
set_hitbox_value(at, num, HG_WIDTH, 70);
set_hitbox_value(at, num, HG_HEIGHT, 25);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_weak);
set_hitbox_value(at, num, HG_FORCE_FLINCH, 1);
set_hitbox_value(at, num, HG_HITSTUN_MULTIPLIER, .9);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 5);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 42);
set_hitbox_value(at, num, HG_HITBOX_Y, -24);
set_hitbox_value(at, num, HG_WIDTH, 70);
set_hitbox_value(at, num, HG_HEIGHT, 25);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 3);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);
set_hitbox_value(at, num, HG_FORCE_FLINCH, 1);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 8);
set_hitbox_value(at, num, HG_LIFETIME, 6);
set_hitbox_value(at, num, HG_HITBOX_X, 44);
set_hitbox_value(at, num, HG_HITBOX_Y, -40);
set_hitbox_value(at, num, HG_WIDTH, 45);
set_hitbox_value(at, num, HG_HEIGHT, 80);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 5);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_tip_med);

set_num_hitboxes(at, num);