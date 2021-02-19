if (attack == AT_FSPECIAL && type == 2){
	owner.hitstop = hitpause_timer;
	
	if hitpause_timer hitpause_timer--;
	else in_hitpause = false;
	
	if !in_hitpause owner.hitstop = 0;
}