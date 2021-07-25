if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) {
	if (chargingBeam == 1) {
		gbeamStoredCharge = 0;
		chargingBeam = 0;
	}
}

sound_stop(sound_get("smrpg_geno_powerup"));
sound_stop(sound_get("smrpg_geno_genobeam"));

if ("myBeam" in self && instance_exists(myBeam)) {
	myBeam.y = -100;
}

numFlashes = 2;