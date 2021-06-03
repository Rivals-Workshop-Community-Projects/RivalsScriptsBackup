
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("taunt"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 5);


