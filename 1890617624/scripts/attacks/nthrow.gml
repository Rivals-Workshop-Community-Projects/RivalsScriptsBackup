// ZA WARUDO

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("tech"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 10);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("tech_hurt"));

// Charging
set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("worldcharge"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, sound_get("voiceworldcharge"));

// Activate
set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 0);

set_window_value(AT_NTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 0);

// End
set_window_value(AT_NTHROW, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAMES, 0);

set_window_value(AT_NTHROW, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_SFX, sound_get("voiceworldend"));

set_window_value(AT_NTHROW, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 9, AG_WINDOW_LENGTH, 80);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAMES, 0);

set_window_value(AT_NTHROW, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 10, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 10, AG_WINDOW_ANIM_FRAMES, -2);

set_num_hitboxes(AT_NTHROW,0);