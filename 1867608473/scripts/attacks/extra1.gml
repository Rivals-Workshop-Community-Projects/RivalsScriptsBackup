set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 12);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("extra1_hurt"));

set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_EXCLUDE, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("sfx_failure"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 7);