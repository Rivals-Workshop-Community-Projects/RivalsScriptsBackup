set_attack_value(40, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(40, AG_NUM_WINDOWS, 3);
set_attack_value(40, AG_OFF_LEDGE, 1);
set_attack_value(40, AG_HURTBOX_SPRITE, hurtbox_spr);

// NOTE: It is not recommended to change the values for anything except for
// AG_WINDOW_ANIM_FRAMES and AG_WINDOW_ANIM_FRAME_START.

set_window_value(40, 1, AG_WINDOW_LENGTH, 10);
set_window_value(40, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(40, 2, AG_WINDOW_LENGTH, 10);
set_window_value(40, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(40, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(40, 3, AG_WINDOW_LENGTH, 10);
set_window_value(40, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(40, 3, AG_WINDOW_ANIM_FRAMES, 2);