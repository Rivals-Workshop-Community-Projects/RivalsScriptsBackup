var atk = AT_EXTRA_3;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("pavillon_com"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(atk, AG_CATEGORY, 2);

//incoming signal (idle)
set_window_value(atk, num, AG_WINDOW_LENGTH, 120);

num++; //put hand on ear
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);

num++; //loop
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);

num++; //end
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, num);