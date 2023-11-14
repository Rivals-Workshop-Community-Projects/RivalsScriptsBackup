atk = 48;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("transform"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

window_num = 1; //startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //startup pose hold
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //transform flash
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_transform"));

window_num ++; //transformation
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 8);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);
super_col_lerp_time_max = get_window_value(atk, window_num, AG_WINDOW_LENGTH) * get_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES);

window_num ++; //transformation end
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);


//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 0);