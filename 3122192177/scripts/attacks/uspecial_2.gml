set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// falling loop
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

// landing
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
