//

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("podfloat"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);

//if you stop glide during this window, you don't use it.
//you also don't get the glide benefit from this window.
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 0);