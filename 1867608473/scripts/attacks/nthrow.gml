set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("kris_hurtbox"));
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("intro"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("empty_sprite"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);

set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_EXCLUDE, 1);

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 58);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, sound_get("sfx_intro_blade"));
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX_FRAME, 29);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 10);
