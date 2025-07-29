
nspec_charge_level = 0;

// Barriers
jewel_barrier = 0;
heart_barrier = 0;
aegis_barrier = 0;
brooch_barrier = 0;

// Heart Barrier
heart_barrier_endangered = 1;
heart_barrier_timer = 0;

// Ignition Tank
do_ignite_hbox = 0;

// Brilliant Behemoth
do_behemoth_hbox = 0;

// Dio's Best Friend
if (item_grid[44][4] > 0 || item_grid[65][4] > 0) {
    
	sound_play(s_dios, 0, 0); //pans to the middle of the stage
	dios_revive_timer = 60;
	set_state(PS_HITSTUN);
	initial_invince = 1;
	invince_time = 60 + 4;
	hitstop = 3;
	hitstop_full = 3;
	hitpause = true;
	visible = false;
		
	hsp = 0;
	vsp = 0;
	old_hsp = 0;
	old_vsp = 0;
    
    set_player_stocks(player, get_player_stocks(player)+1);
    dios_stored_damage = get_player_damage(player) - 20;
    
}

// Clover
clover_active = item_grid[46][4];
clover_timer = 0;

// Filial Imprinting
if (filial_aspeed_timer > 0) filial_aspeed_timer = 1;
if (filial_speed_timer > 0) filial_speed_timer = 1;

// Laser Turbine
turbine_stored_charge = 0;

// Shaped Glass
if (shaped_glass_active && get_player_stocks(player) == 0) sound_play(sound_get("glass_die"));

// Death Message
if (is_na && get_player_stocks(player) == 1) {
	sound_play(s_jailed, 0, noone, 1.5, 1);
} else {
	sound_play(s_mortem);
}
if (get_player_stocks(player) == 1) {	
	final_death_timer = 120;
}

// Energy Cell (needs to run last!)
if (item_grid[50][4] > 0) {
	new_item_id = 50;
    user_event(0);
}