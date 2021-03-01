set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("anthem_hurtbox"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 13);


set_num_hitboxes(AT_TAUNT, 0);
