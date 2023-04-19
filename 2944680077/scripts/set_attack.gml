//set_attack

switch(attack){

	case AT_TAUNT:
		if(down_down){
			attack = AT_EXTRA_1;
		}
		break;
    case AT_FSPECIAL:
    	backward_roll = false;
        if(free){
            attack = AT_FSPECIAL_AIR
        }
	case AT_FSPECIAL_AIR:
		backward_roll = false;
}