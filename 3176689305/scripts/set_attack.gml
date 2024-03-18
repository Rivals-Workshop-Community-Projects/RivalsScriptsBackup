//set_attack

switch(attack){

	case AT_USTRONG:
		if(shade_stock){
			attack = AT_EXTRA_1;
			shade_stock = 0;
			shade_consumer = 1;
		}
		break;
	case AT_USPECIAL:
		if free {
			attack = AT_USPECIAL_2
		}
		break;
	case AT_TAUNT:
		if down_down {
			attack = AT_EXTRA_2
		}
		if (up_down && get_stage_data(SD_ID) == "3176682870" && (x >= 380 && x <= 460) && y == 400) {
			attack = AT_EXTRA_3
		}
		break;
}