// Golden Death

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("goldendeath"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("goldendeath"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("goldendeath_hurt"));
set_attack_value(AT_EXTRA_2, AG_USES_CUSTOM_GRAVITY, 1)

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 80);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("goldenexplode"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 99999);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_EXTRA_2, 0);