//set_attack.gml

if (tailsisrobotout = true){
	if (attack == AT_DSPECIAL){
		if (window == 1){
			{attack = AT_DSPECIAL_2}
		}
	}
}

if (tailsgrabbedrobot == true){
	tailsgrabbedrobot = false
	{attack = AT_FSPECIAL_2}
}

user_event(13);