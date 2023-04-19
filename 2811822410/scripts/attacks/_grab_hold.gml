var curr_attack = AT_GRAB_HOLD;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("grab_hold"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 1);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("grab_hold_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 40);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, false);

set_num_hitboxes(curr_attack, 0);

