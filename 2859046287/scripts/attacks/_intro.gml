atk = AT_INTRO;

set_attack_value(atk, AG_SPRITE, sprite_get("intro"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(atk, AG_MUNO_ATTACK_EXCLUDE, true);

window_num = 1; //loading char...
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num ++; //load complete?
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num ++; //load complete.
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

window_num ++; //go to idle
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_num_hitboxes(atk, 0);