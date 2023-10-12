//set_attack.gml

if attack == AT_NSPECIAL && free {attack = AT_NSPECIAL_AIR}

if (instance_exists(remoteRobot)){
	if (attack == AT_DSPECIAL){
		if (window == 1){
			{attack = AT_DSPECIAL_2}
		}
	}
}


/*
if (attack == AT_FSPECIAL && fspecHitboxTouchedRobot){
	fspecHitboxTouchedRobot = false;
	{attack = AT_FSPECIAL_2}
}
*/

/*
if (attack == AT_FSPECIAL && tailsdidhesidebrobot == true){
	tailsdidhesidebrobot = false
}
*/