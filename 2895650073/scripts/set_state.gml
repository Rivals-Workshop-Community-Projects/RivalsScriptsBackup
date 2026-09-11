//set_attack

if (pratfall_queue==1){
	//print("prat1")
	if (pratfall_queue==2){
		//print("prat2")
		if (state==PS_ATTACK_GROUND){
			state = PS_PRATFALL;
			state_timer = 0;
		}
	}
	pratfall_queue = 2;
}
if (pratfall_queue && (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL || state == PS_LANDING_LAG
 || state == PS_PARRY_START || state == PS_PARRY || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)){
	state = PS_PRATFALL;
	state_timer = 0;
}