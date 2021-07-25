if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hit_already == false){
	my_hitboxID.hitbox_timer = 1;
	my_hitboxID.old_vsp = -15;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hit_already == true){
	my_hitboxID.hsp = my_hitboxID.hsp*2;
	my_hitboxID.vsp = my_hitboxID.vsp*2;
}