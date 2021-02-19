//Turn off your ability to turn on the lights with a cancel when you get hit.
cancel_ready_tier1 = false;
cancel_ready_tier2 = false;
cancel_ready_tier3 = false;

//U-Special stuff.
reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED);

reset_hitbox_value(AT_USPECIAL_2, 8, HG_EXTRA_HITPAUSE);
reset_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HSPEED);
reset_window_value(AT_USPECIAL_2, 9, AG_WINDOW_HSPEED);

move_cooldown[AT_DSPECIAL] = 0;
move_cooldown[AT_DSPECIAL_AIR] = 0;
move_cooldown[AT_FSPECIAL] = 0;
