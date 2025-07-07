
u_mult_damage_buffer = 0; // buffer for fractional multiplier damage

if ("is_ror_commando" not in self) is_ror_commando = false;

commando_status_state = array_create(7);
commando_status_counter = array_create(7);
commando_status_owner = array_create(7, noone); // for the sake of the ditto
commando_use_draw_x = false; // for signal passing
commando_draw_x = 0; // for signal passing

burnt_pause = 0; // seems to improve stability (?)

// This is technically undocumented compat (lol)
commando_warbanner_owner = noone;
commando_warbanner_strength = 0;
commando_warbanner_updated = 0;

