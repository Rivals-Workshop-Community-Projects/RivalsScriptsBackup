set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("nspecial_hilt"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hilt_hurt"));

set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 1);

//reload
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 66);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("reload"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 20);