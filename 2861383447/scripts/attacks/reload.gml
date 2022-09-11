set_attack_value(49, AG_SPRITE, sprite_get("reload"));
set_attack_value(49, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(49, AG_NUM_WINDOWS, 3);

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 5);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("chaos_reload"));

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(49, 0);