if (star_meter >= 1 && attack_pressed){
	if (attack == AT_NSPECIAL){
		{attack = AT_NSPECIAL_2}
	}
	if (attack == AT_FSPECIAL){
		{attack = AT_FSPECIAL_2}
	}
	if (attack == AT_USPECIAL){
		{attack = AT_USPECIAL_2}
	}
}

user_event(13);