//set_attack.gml

if attack == AT_NSPECIAL && free {attack = AT_NSPECIAL_AIR}

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

if (attack == AT_FSPECIAL && tailsdidhesidebrobot == true){
	tailsdidhesidebrobot = false
}
//phone
muno_event_type = 2;
user_event(14);