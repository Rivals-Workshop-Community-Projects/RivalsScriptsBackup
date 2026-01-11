var atk = AT_INTRO;

set_attack_value(atk, AG_SPRITE, sprite_get("intro"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

var win_num = 1; //loading char...
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);

win_num++; //load complete?
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 6);

win_num++; //load complete.
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 7);

win_num++; //go to idle
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

set_num_hitboxes(atk, 0);