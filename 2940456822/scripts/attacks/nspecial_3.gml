curr_attack = AT_NSPECIAL_AIR;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("nspecial_3"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 2);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("nspecial_3_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 30);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 30);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 12);

set_num_hitboxes(curr_attack, 0);
