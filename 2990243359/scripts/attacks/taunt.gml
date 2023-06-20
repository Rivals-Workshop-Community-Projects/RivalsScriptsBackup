set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("ganondorf_hurtbox"));

//Laugh 1
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 110);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("ww_laugh1"));

//Laugh 2
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 110);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("ww_laugh2"));

//Laugh 3
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 140);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("ww_laugh3"));

//Laugh 3 (Small Loop)
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 29);

//Laugh 3 (Small Loop)
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 29);

//Laugh 3 (Small Loop)
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 29);

//End
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 32);