//what?
if (my_hitboxID.player_id == id){
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 11){
	my_hitboxID.hitbox_timer = 0;
	//my_hitboxID.spr_dir = my_hitboxID.spr_dir * -1
	my_hitboxID.hsp = (abs(my_hitboxID.hsp) + 1) * my_hitboxID.spr_dir;
	/*my_hitboxID.can_hit[hit_player] = 0;
	my_hitboxID.can_hit_self = true;*/
}
}