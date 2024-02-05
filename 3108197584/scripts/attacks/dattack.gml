set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//1 startup
var num = 1;
set_window_value(AT_DATTACK, num, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, num, AG_WINDOW_ANIM_FRAME_START, 1);

//2 swipe
num++;
set_window_value(AT_DATTACK, num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, num, AG_WINDOW_HSPEED, 12);

//3 transitio
num++;
set_window_value(AT_DATTACK, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, num, AG_WINDOW_HSPEED, 8);

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_DATTACK, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, num, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, num, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, num, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, num, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, num, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, num, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, num, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DATTACK, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DATTACK, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

num++;
set_hitbox_value(AT_DATTACK, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, num, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, num, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, num, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, num, HG_WIDTH, 35);
set_hitbox_value(AT_DATTACK, num, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, num, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, num, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, num, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_DATTACK, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(AT_DATTACK, num);