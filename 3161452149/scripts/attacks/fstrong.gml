var at = AT_FSTRONG;

set_attack_value(at, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(at, AG_STRONG_CHARGE_WINDOW, 1);

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//1 startup
num++
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 8);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 6);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 15);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 3);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, 65);
set_hitbox_value(at, num, HG_HITBOX_Y, -30);
set_hitbox_value(at, num, HG_WIDTH, 60);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 9);
set_hitbox_value(at, num, HG_ANGLE, 55);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_heavy);
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 8);

num++;
set_hitbox_value(at, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 3);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(at, num, HG_LIFETIME, 4);
set_hitbox_value(at, num, HG_HITBOX_X, 65);
set_hitbox_value(at, num, HG_HITBOX_Y, -30);
set_hitbox_value(at, num, HG_WIDTH, 60);
set_hitbox_value(at, num, HG_HEIGHT, 70);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 8);
set_hitbox_value(at, num, HG_ANGLE, 55);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, sfx_hit_med);

set_num_hitboxes(at, num);