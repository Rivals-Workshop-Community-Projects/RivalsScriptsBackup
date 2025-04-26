// got_parried.gml

// do stuff here
if (my_hitboxID.type == 1){
	//
}


// do stuff here
if (my_hitboxID.type == 2){
	//
	if (my_hitboxID.attack == AT_NSPECIAL){
		if (instance_exists(currKoopaShell)){
			currKoopaShell.shellWasParried = true;
			currKoopaShell.whoParriedShell = hit_player;
			currKoopaShell.timesParried++;
		}
	}
}