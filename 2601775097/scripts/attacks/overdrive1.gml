// THEIA EVLOGIA
var atk = AT_THEIKOS;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("skill3"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill3_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //transform flash
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_transform"));
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //transform loop
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 10);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //end
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);