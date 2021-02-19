//DOWN SPECIAL IN THE AIR (CAT DROP)
if (attack == AT_DSPECIAL and free == true) {
	attack = AT_DSPECIAL_AIR;
}

//GREATER PYROBLAST
if (attack_pressed and special_pressed and GAUGE_SIG_CURRENT >= 100) { 
	attack = AT_EXTRA_2; 
	
}

//Phone (stay at bottom)
user_event(13);