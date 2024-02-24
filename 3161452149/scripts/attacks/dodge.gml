var at = AT_EXTRA_3;

set_attack_value(at, AG_CATEGORY, 0);
set_attack_value(at, AG_SPRITE, sprite_get("roll_backward"));
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 14);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(at, num, AG_WINDOW_HSPEED, -9);
set_window_value(at, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_roll"));

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 3);


set_attack_value(at, AG_NUM_WINDOWS, num);