//intro
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, -1);
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, sound_get("se_ptrainer_ball_open"));

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_SFX, sound_get("cry"));

set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_SFX, sound_get("se_inkling_dash_start"));

set_num_hitboxes(AT_EXTRA_1,0);
