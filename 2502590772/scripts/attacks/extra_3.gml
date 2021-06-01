//extra_3.gml
//infinite attack that the master player uses to remain invisible.
//this is the only attack we load for the master player.


set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, asset_get("empty_sprite")); //invisible
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);

//startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 9); //infinite loop
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_INVINCIBILITY, 1); //fully invincible