set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("orca_hurtbox"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("big_buzzer_scream"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 63);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("ridley_scream"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);