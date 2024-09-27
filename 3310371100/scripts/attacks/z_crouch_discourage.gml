set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("crouch_discourage"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);

//1
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

//2
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("mfx_input_key"));

//3
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("mfx_input_key"));

//4
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 35);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("mfx_input_key"));

//5
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);