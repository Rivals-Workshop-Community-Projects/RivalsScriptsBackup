var at = AT_TAUNT;

set_attack_value(at, AG_SPRITE, sprite_get("taunt"));
set_attack_value(at, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 24);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 6);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 10);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 6);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 20);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 7);

set_attack_value(at, AG_NUM_WINDOWS, num);