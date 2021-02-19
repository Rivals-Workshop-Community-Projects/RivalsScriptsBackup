set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("ralsei_hurtbox"));

//start
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("clap"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 24);


//repeat frame start
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("clap"));
//set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);

//repeat clap
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_birdclap"));

//repeat frame end
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 11);

//final frame
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));


