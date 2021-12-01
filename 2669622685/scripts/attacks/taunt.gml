set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("taunt_bounce"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("voltorbcry"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 4);
