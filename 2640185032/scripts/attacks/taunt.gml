set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("tauntreal"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//stomp windup
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 17);

//stomp frame
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//pose loop
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//end
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);