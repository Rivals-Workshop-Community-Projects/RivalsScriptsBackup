set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_NAME, "Taunt");

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);


set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("PARRY"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 22);



set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC, "");