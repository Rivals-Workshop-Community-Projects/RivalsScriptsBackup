var at = AT_DATTACK;

set_attack_value(at, AG_SPRITE, sprite_get("dattack"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_swipe_heavy);
set_window_value(at, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(at, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(at, num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(at, num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(at, num, AG_WINDOW_HSPEED, 3);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 16);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 40);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 80);
set_hitbox_value(at, num, HG_HEIGHT, 60);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 8);
set_hitbox_value(at, num, HG_ANGLE, 50);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_heavy);

set_num_hitboxes(at, num);