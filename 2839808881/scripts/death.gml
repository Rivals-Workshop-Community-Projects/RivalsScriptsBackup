//death.gml
TCG_Kirby_Copy = 0;
sound_play(sound_get("ded"));

jet_charge_count = 0;
jet_flight_dir = 0;
jet_charge_stored = false;
jet_charge_store_count = 0;

if (get_player_stocks( player ) == 1) {
	sound_play(sound_get("ded_laststock"));
}

if (attack == AT_COPY_ESP){
	esp_parried = true;
	move_cooldown[AT_COPY_ESP] = 60;
}

if(nspec_grabbed == true){
	if(instance_exists(grabbedtarget)){
		grabbedtarget.visible = true;
		grabbedtarget = noone;
	}
	nspec_grabbed = false;
}
zoom = 2;