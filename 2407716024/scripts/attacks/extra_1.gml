//extra_1.gml
//forward air-dash

//attack properties
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("airdash"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("peacock_hurtbox"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 0);

set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);


//attack window properties
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 0); //jump boost
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 34);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, -3.8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, -5);
