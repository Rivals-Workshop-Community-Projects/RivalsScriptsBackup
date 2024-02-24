var at = AT_DTILT;

set_attack_value(at, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(at, num, AG_WINDOW_SFX, sfx_poke_med);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 35);
set_hitbox_value(at, num, HG_HITBOX_Y, -20);
set_hitbox_value(at, num, HG_WIDTH, 80);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 6);
set_hitbox_value(at, num, HG_ANGLE, 85);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_med);

set_num_hitboxes(at, num);