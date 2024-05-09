if (instance_exists(torment)){
	if (torment.state == 0) spawn_hit_fx(torment.x, torment.y, torment_break1);
	if (torment.state == 1) spawn_hit_fx(torment.x, torment.y, torment_break2);
	if (torment.state == 2) spawn_hit_fx(torment.x, torment.y, torment_break3);
	instance_destroy(torment);
	instance_destroy(torment_opponent);
	torment_opponent = noone;
}

if (my_hitboxID.attack == AT_NSPECIAL){
	my_hitboxID.vsp -= 5;
}