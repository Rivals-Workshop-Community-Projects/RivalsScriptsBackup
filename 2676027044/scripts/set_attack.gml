// set_attack.gml
// called at the beginning of every attack
// Changes how attacks works based off certain conditions

switch(attack){
	case AT_DSPECIAL:
		if (mim_wisp != noone && mim_wisp.active){
			attack = AT_DSPECIAL_2;
		}
	break;
}