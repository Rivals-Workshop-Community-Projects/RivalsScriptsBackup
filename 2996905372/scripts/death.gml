// death.gml

if (nspecStoredCharge || nspecChargeProg != 0){
	nspecStoredCharge = false;
	nspecChargeProg = 0;
	sound_play(sfx_dbfz_teleport_end);
}