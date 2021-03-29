if my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num = 1 {
	my_hitboxID.player_id.has_airdodge = 1
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 27);
}
if my_hitboxID.attack == AT_FSPECIAL_AIR and my_hitboxID.hbox_num = 1 {
	my_hitboxID.player_id.has_airdodge = 1
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 27);
}

if my_hitboxID.player_id.state = PS_ATTACK_AIR and my_hitboxID.player_id.damboost{
	//take_damage( hit_player_obj.player, my_hitboxID.player, 4 )
}