set_attack_value(2, AG_SPRITE, sprite_get("intro"));
set_attack_value(2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(2, AG_NUM_WINDOWS, 4);
set_attack_value(2, AG_MUNO_ATTACK_EXCLUDE, 1);

set_window_value(2, 1, AG_WINDOW_LENGTH, 48);
set_window_value(2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(2, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(2, 2, AG_WINDOW_SFX, sound_get("rolling"));

set_window_value(2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(2, 3, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(2, 4, AG_WINDOW_LENGTH, 33);
set_window_value(2, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(2, 4, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(2, 0);