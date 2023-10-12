//got_parried.gml

switch (my_hitboxID.attack){
	case AT_USTRONG:
		//set_state(PS_PRATLAND)
		break;
	case AT_NSPECIAL:
	case AT_NSPECIAL_AIR:
		if my_hitboxID.type == 2 {
			//my_hitboxID.hitbox_timer = 0;
			my_hitboxID.hsp *= 1.85;
			my_hitboxID.vsp *= 1.85;
			//my_hitboxID.damage = my_hitboxID.damage + (my_hitboxID.damage * 0.5)
		}
		break;
	case AT_FSPECIAL:
		set_state(PS_PRATFALL);
		break;
	case AT_DSPECIAL:
		break;
}

// kill remote robot on parry
if (instance_exists(remoteRobot)){
	with(remoteRobot){
		robotGotParried = true;
	}
}