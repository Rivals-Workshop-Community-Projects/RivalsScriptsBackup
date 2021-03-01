//extra_3.gml
//coyote time walk

//attack properties
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("walk"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("peacock_hurtbox"));
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_3, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 0);

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);


//coyote walk
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, walk_speed);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 0);

//pause, stop walking
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0); //jump boost
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0); //repeating window
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 12);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 0);