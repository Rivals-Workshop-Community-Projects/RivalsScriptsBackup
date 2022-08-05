if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_FSPECIAL){
	minion_controlling = false;
	minion.state = 2;
	minion.hsp = 0;
	minion.vsp = 0;
}