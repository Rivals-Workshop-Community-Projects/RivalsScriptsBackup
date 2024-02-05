set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//1 startup
var num = 1;
set_window_value(AT_FTILT, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, num, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FTILT, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//2 swipe
num++;
set_window_value(AT_FTILT, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, num, AG_WINDOW_ANIM_FRAME_START, 4);

//3 transitio
num++;
set_window_value(AT_FTILT, num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_FTILT, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, num, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, num, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, num, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, num, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, num, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, num, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, num, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, num, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FTILT, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_num_hitboxes(AT_FTILT, 1);