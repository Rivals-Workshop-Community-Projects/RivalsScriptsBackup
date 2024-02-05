set_attack_value(2, AG_SPRITE, sprite_get("intro"));
set_attack_value(2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(2, AG_NUM_WINDOWS, 1);

var num = 1;
set_window_value(2, num, AG_WINDOW_LENGTH, 8);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 8);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 12);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 3);

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 10);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 6);

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 10);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 7);

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 10);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 8);

/*
num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 8);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 9);

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 10);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 11);
*/

num++;
set_window_value(2, num, AG_WINDOW_LENGTH, 6);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(2, num, AG_WINDOW_ANIM_FRAME_START, 13);


set_attack_value(2, AG_NUM_WINDOWS, num);