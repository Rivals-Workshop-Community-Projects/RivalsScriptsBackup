curr_attack = AT_NSPECIAL_2;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 2);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 66);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(curr_attack, 0);
