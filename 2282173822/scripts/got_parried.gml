if (my_hitboxID.attack == AT_FSTRONG){
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp = sign(my_hitboxID.hsp) * (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_HSPEED) + 20);
}