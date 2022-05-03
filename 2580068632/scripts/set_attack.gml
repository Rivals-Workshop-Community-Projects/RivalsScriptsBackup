//set_attack.gml

if (attack == AT_JAB){
	if (window == 1){
		if (inputs_swapped_toggle && did_swap_inputs = false){
			{attack = AT_FTILT}
			did_swap_inputs = true;
		}
	}
}

if (attack == AT_FTILT){
	if (window == 1){
		if (inputs_swapped_toggle && did_swap_inputs = false){
			{attack = AT_JAB}
			did_swap_inputs = true;
		}
	}
}

//Munophone
muno_event_type = 2;
user_event(14);