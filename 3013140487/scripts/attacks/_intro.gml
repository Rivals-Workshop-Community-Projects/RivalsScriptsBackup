atk = AT_INTRO;

set_attack_value(atk, AG_SPRITE, sprite_get("entrance"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;

set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;

set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;

set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num++;

set_window_value(atk, window_num, AG_WINDOW_LENGTH, 22);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_num_hitboxes(atk, 0);