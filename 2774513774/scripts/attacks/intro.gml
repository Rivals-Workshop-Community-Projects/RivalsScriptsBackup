//intro
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, -1);
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, sound_get("warp"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, sound_get("GauntletsOn"));


set_num_hitboxes(AT_EXTRA_1,0);
