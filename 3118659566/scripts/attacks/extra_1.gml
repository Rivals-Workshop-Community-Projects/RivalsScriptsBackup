
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("spawnmask"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));



//Charging window 
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//Releasing window 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 9);
