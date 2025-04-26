set_attack_value(AT_DSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("jab_dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
//set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1); //nope not for this one

//some animation stuff handled from animation.gml

//STAND
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);//wow!!

//WALK
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);//wow!!

//WALKTURN
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, walk_turn_time);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);//wow!!

//JUMPSTART
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, jump_start_time+1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);//wow!!

//JUMP
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 120);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_INVINCIBILITY, 2);//wow!!

//LAND
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, land_time);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_GOTO, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_INVINCIBILITY, 2);//wow!!



//END1
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);

//END2
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);

//END2
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);









