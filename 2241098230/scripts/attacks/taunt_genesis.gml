set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_2"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("ryk_hurtbox"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 31);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);


set_num_hitboxes(AT_TAUNT_2, 0);
