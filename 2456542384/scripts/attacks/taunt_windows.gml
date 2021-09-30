set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_windows"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//sit
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_plant_ready"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 20);

//hold
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//get up
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);