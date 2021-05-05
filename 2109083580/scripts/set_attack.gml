if(slActive && (attack == AT_DSPECIAL||(runeL&&command_input>1))){
	attack = (free?AT_DSPECIAL_AIR:AT_DSPECIAL_2);
	if (command_input>1)
	{
		command_input = 0;
		dspec_buff = true;
		sound_play(sound_get("power_geyser"+(random_func(0,3,true)==0?"2":"")));
	}
}

if(slTimer >= slTimerLimit - 5){
	if(attack == AT_NSPECIAL
	|| attack == AT_DSPECIAL
	|| attack == AT_USPECIAL
	|| attack == AT_FSPECIAL
	){
		if(attack_down && special_down){
			window = 10;
		}
	}
}

if(attack == AT_DATTACK){
	DA_jcancel = false;
}

if(attack == AT_USTRONG){
	USTstart = y;
}