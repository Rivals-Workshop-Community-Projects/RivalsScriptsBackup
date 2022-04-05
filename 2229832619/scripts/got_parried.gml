//
with (asset_get("obj_article1")){
	if (player_id == other.id){
		cooldown = other.parry_lag+60;
	}
}
if (my_hitboxID.attack==AT_NSPECIAL_AIR){
	my_hitboxID.owner_article.parried_player = hit_player;
	my_hitboxID.owner_article.image_angle = my_hitboxID.owner_article.image_angle+180;
	my_hitboxID.owner_article.tmpdir = my_hitboxID.owner_article.tmpdir*-1;
	my_hitboxID.owner_article.loop_count = 0;
	my_hitboxID.owner_article.void_speed = 3;//4
	
	var leader = my_hitboxID.leaderhb
	
	leader.idbox[0].can_hit[hit_player] = false;
	leader.idbox[1].can_hit[hit_player] = false;
	leader.idbox[2].can_hit[hit_player] = false;
	leader.idbox[3].can_hit[hit_player] = false;
	leader.idbox[4].can_hit[hit_player] = false;
	
	/*
	instance_destroy( real(leader.idbox[4]) )
	instance_destroy( real(leader.idbox[3]) )
	instance_destroy( real(leader.idbox[2]) )
	instance_destroy( real(leader.idbox[1]) )
	instance_destroy( real(leader.idbox[0]) )
	*/
	
	/*
	print("AEAEAEAEAEAEAEAEAEAEAE")
	print(string(my_hitboxID.leaderhb.idbox[0]))
	print(string(my_hitboxID.leaderhb.idbox[1]))
	print(string(my_hitboxID.leaderhb.idbox[2]))
	print(string(my_hitboxID.leaderhb.idbox[3]))
	print(string(my_hitboxID.leaderhb.idbox[4]))
	print("AEAEAEAEAEAEAEAEAEAEAE")
	*/
	
}
if (my_hitboxID.attack==AT_FSPECIAL){
	my_hitboxID.owner_article.idle_cycle = my_hitboxID.owner_article.idle_cycle + 15;
}