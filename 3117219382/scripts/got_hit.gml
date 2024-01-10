//got_hit.gml
//this script runs when the player gets hit, can be useful to stop certain effects or apply certain effects on your player
gs[3] = false;
if(prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND){
	if(attack == AT_FSPECIAL){
		lvl = 1;
		fspecial_hud_timer = fspecial_hud_time;
	}
}