curr_attack = AT_TAUNT;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("taunt"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 1);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 24);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(curr_attack, 0);
