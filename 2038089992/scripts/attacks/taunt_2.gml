set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_2"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt_2_hurt"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("limit_start_sfx"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sound_get("limit_loop_sfx"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);