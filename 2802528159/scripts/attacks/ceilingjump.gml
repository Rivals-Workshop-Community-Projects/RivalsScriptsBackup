set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate_state) + "_ceilingjump"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("ceilingjump_hurt"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);