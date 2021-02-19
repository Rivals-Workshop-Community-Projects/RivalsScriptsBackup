set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dash"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

var anim_frames = 7;
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, round(anim_frames / dash_anim_speed));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, anim_frames);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, dash_stop_time);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);