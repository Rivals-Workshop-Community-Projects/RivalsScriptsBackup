
//INTRO

set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_EXCLUDE, 1);

//Poster
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 56);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Stare
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("vigi1"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 24);

//Point
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 38);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 11);

//126 frames total