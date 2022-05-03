//The rebound when hitting with the Slide Kick (down tilt)
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("roll_backward"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("skb_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
