set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong_solo"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSTRONG_2, AG_MUNO_ATTACK_EXCLUDE, 1);

// startup
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG_2, 2, AG_MUNO_WINDOW_EXCLUDE, 1);