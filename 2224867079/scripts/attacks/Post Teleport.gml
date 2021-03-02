set_attack_value(AT_UTHROW, AG_CATEGORY, 1);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_UTHROW, 0);
