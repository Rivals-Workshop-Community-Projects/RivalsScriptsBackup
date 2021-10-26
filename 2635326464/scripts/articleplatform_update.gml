if ( ((player_id.x - x) > 17) || ((x - player_id.x) > 17) ){
	hsp = round(player_id.hsp)+player_id.spr_dir*1;
} else hsp = round(player_id.hsp);

if ((player_id.y - y) > 86){
	vsp = 2;
} else 	if((player_id.window_timer mod 2) == 0){
	vsp = 0;
} else vsp = 1;

if ((player_id.state != PS_ATTACK_AIR) || (player_id.attack != AT_USPECIAL_2) || (player_id.attack == AT_USPECIAL_2 && player_id.window != 2)){
	instance_destroy(self);
}
