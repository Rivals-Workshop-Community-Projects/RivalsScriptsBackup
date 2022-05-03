var atk = AT_SELECT;

set_attack_value(atk, AG_SPRITE, sprite_get("select"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("select_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

var window_num = 1; //start
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);

window_num ++; //hm...
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0); //9
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1); //doesn't matter lol
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //end
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);