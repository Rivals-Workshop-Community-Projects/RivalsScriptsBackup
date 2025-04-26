uspecial_charge = 0;
uspecial_length = 20;
reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
reset_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED);
reset_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME);
reset_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME);
reset_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME);
reset_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME);

sound_stop(sound_get("fspecial_loop"));