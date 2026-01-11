var atk = AT_EXTRA_1;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("unbounded"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);

//hold pose
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 50);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

//back to idle
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, num, AG_WINDOW_GOTO, 10);

//counter
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 28);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 12);

//back to idle
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 19);

set_attack_value(atk, AG_NUM_WINDOWS, num);