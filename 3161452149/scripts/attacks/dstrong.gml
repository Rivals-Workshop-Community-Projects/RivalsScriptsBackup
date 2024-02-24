var at = AT_DSTRONG;

set_attack_value(at, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(at, AG_STRONG_CHARGE_WINDOW, 1);

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//1 startup
num++
set_window_value(at, num, AG_WINDOW_LENGTH, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 9);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 18);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 3);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, 40);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 10);
set_hitbox_value(at, num, HG_ANGLE, 45);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_heavy);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 4);

num++;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 3);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, -40);
set_hitbox_value(at, num, HG_HITBOX_Y, -35);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 10);
set_hitbox_value(at, num, HG_ANGLE, 135);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_heavy);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 4);

set_num_hitboxes(at, num);