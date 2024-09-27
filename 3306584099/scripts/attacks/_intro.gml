set_attack_value(AT_INTRO, AG_CATEGORY, 2);
set_attack_value(AT_INTRO, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_INTRO, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_INTRO, AG_MUNO_ATTACK_EXCLUDE, 1);

set_attack_value(AT_INTRO, AG_NUM_WINDOWS, 2);

set_window_value(AT_INTRO, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_INTRO, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_INTRO, 2, AG_WINDOW_LENGTH, 42);
set_window_value(AT_INTRO, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_INTRO, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_INTRO, 0);