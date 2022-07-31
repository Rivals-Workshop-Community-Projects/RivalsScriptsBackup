//death.gml

if (instance_exists(vacuum)){
	//print("vacuum exist?");
	with (vacuum){
		if (state != 6){
			if (state == 0 || state == 1 || state == 2){
				state = 6;
			}
			if (state == 4 || state == 5){
				shouldDieAfterFiring = true;
			}
		}
	}
}

sound_play(sfx_death);