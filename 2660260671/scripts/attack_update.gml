//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}





if (attack == AT_NSPECIAL){
	if (window == 2)
	{
	soundpick=random_func( 1, 6,  true);	
	if(soundpick==0) if (state_timer == 15) { 
		window = 3;
	} 
	if(soundpick==1) if (state_timer == 15) {
		window = 4;
	} 
	if(soundpick==2) if (state_timer == 15) {
		window = 5;
	} 
	if(soundpick==3) if (state_timer == 15) {
		window = 6;
	} 
	if(soundpick==4) if (state_timer == 15) {
		window = 7;
	} 
	if(soundpick==5) if (state_timer == 15) {
		window = 8;
	} 
}
	if (window == 3 || window == 4 || window == 5 || window == 6 || window == 7 || window == 8) {
		if window_timer > 12 { //endlag
			window = 9;
			window_timer = 0;
		}
	}
}




if (attack == AT_DSPECIAL){
	attack_pick=random_func( 1, 6,  true);	
	if(attack_pick==0) { 
		set_attack(AT_DSPECIAL_2);
	} 
	if(attack_pick==1) {
		set_attack(AT_DSPECIAL_AIR);
	} 
	if(attack_pick==2) {
		set_attack(AT_NSPECIAL_2);
	}
	if(attack_pick==3) {
		set_attack(AT_NSPECIAL_AIR);
	}
	if(attack_pick==4) {
		set_attack(AT_USPECIAL_2);
	}
	if(attack_pick==5) {
		set_attack(AT_USPECIAL_GROUND);
	}
}