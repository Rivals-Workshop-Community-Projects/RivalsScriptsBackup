set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_train"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 19);

//stand
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 999);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);

//walk
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_GOTO, 2);

//choochoo
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_GOTO, 2);

//end
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 27);
