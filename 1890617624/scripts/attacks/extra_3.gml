// Golden Intro

set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("tech"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 10);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("tech"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("goldendeath_hurt"));
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1)

// Golden Screech

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("screech2"));

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, sound_get("screech"));

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 80);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 999);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 1);

// Awakening intro
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 90);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_SFX, sound_get("salt1"));

set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 8, AG_WINDOW_SFX, sound_get("salt2"));

set_window_value(AT_EXTRA_3, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 45);
set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_3, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_LENGTH, 999);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_EXTRA_3, 0);