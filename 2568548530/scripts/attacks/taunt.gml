set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
//set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);//31);//32);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY, 1);



set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 120);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 37);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 10); //11?
//set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, 0.9);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 0);

/*
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 11);


set_window_value(AT_TAUNT, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 11, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 11, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 11, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 12, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 12, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 12, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 13, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 13, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 13, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 14, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 14, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 14, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 15, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 15, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 15, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 16, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 16, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 16, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 17, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 17, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 17, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 17, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 18, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 18, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 18, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 18, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 19, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 19, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 19, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 19, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_TAUNT, 20, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 20, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 20, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 20, AG_WINDOW_ANIM_FRAME_START, 12);


set_window_value(AT_TAUNT, 21, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 21, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 21, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 21, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 22, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 22, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 22, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 22, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 23, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 23, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 23, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 23, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 24, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 24, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 24, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 24, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 25, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 25, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 25, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 25, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 26, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 26, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 26, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 26, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 27, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 27, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 27, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 27, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 28, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 28, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 28, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 28, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 29, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 29, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 29, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 29, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_TAUNT, 30, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 30, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 30, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 30, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 31, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 31, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 31, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 31, AG_WINDOW_ANIM_FRAME_START, 12);

/*
set_window_value(AT_TAUNT, 32, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 32, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 32, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 32, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 33, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 33, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 33, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 33, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 34, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 34, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 34, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 34, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 35, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 35, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 35, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 35, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 36, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 36, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 36, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 36, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 37, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 37, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 37, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 37, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 38, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 38, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 38, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 38, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 39, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 39, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 39, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 39, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_TAUNT, 40, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 40, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 40, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 40, AG_WINDOW_ANIM_FRAME_START, 12);
*/
