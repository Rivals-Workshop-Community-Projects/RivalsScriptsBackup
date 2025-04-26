//set_attack

if (!free){
	if (attack==AT_FSTRONG){ attack=AT_FTILT };
	if (attack==AT_USTRONG){ attack=AT_UTILT };
	if (attack==AT_DSTRONG){ attack=AT_DTILT };
}

if (free){
	if (up_strong_pressed||down_strong_pressed||left_strong_pressed||right_strong_pressed){
		if (attack==AT_FAIR||attack==AT_NAIR){ attack=AT_FSTRONG };
		if (attack==AT_BAIR){ attack=AT_FSTRONG; spr_dir = spr_dir*-1 };
		if (attack==AT_UAIR){ attack=AT_USTRONG };
		if (attack==AT_DAIR){ attack=AT_DSTRONG };
	}
}

if (attack==AT_DATTACK){
	reset_num_hitboxes(AT_DATTACK);
}

if (str_stall > str_stall_max && (attack==AT_FSTRONG||attack==AT_DSTRONG||attack==AT_USTRONG)){
	str_stall = str_stall_max;
}