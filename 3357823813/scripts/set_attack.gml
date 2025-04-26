//
times_through = 0;
/*if attack == AT_TAUNT {
	switch dialogue_state {
		case 1:
			if dialogue_page >= dialogue_page_max { 
				dialogue_state++; 
			} else { 
				dialogue_page++; 
			}
			dialogue_timer = 0;
			break;
		case 3:
			dialogue_state = 0;
			dialogue_timer = 0;
			break;
	}
}*/

if (attack == AT_FSPECIAL && free){
	attack = AT_FSPECIAL_2;
}
if (attack == AT_USPECIAL && free){
	attack = AT_USPECIAL_2;
}

if (attack == AT_DATTACK) dattack_has_hit = 0;