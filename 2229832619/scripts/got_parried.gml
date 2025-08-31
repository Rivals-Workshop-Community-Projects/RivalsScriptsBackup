//
was_it_extended_parrystun = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EXTENDED_PARRY_STUN);

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
	my_hitboxID.owner_article.slash_immune = true;//4
	var targetPlayer = noone;
	
	if (my_hitboxID.owner_article.verticalmode == true){
		
		//print_debug( "target got" )
		var target_angle = point_direction(my_hitboxID.x, my_hitboxID.y, my_hitboxID.owner_article.extraparry_target_next.x, my_hitboxID.owner_article.extraparry_target_next.y)
			
		my_hitboxID.owner_article.image_angle = target_angle;
		my_hitboxID.owner_article.void_speed = 7;
		my_hitboxID.owner_article.extraparried = true;
		my_hitboxID.owner_article.extraparry_target_next = hit_player_obj;
		my_hitboxID.destroyed = true;
		
	}
	/*if (my_hitboxID.owner_article.player_id == hit_player_obj){
		my_hitboxID.destroyed = true;
		my_hitboxID.owner_article.loop_count = my_hitboxID.owner_article.loop_max;
		//print_debug( "THAT'S RUNNING" )
	}*/
	
	/*var leader = my_hitboxID.leaderhb
	
	leader.idbox[0].can_hit[hit_player] = false;
	leader.idbox[1].can_hit[hit_player] = false;
	leader.idbox[2].can_hit[hit_player] = false;
	leader.idbox[3].can_hit[hit_player] = false;
	leader.idbox[4].can_hit[hit_player] = false;*/
	
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
	//my_hitboxID.owner_article.idle_cycle = my_hitboxID.owner_article.idle_cycle + 15;
	my_hitboxID.owner_article.state = 5;
	my_hitboxID.owner_article.state_timer = 0;
	sound_play(sound_get("bounce"),false,noone,0.7,1.2);
	sound_play(sound_get("bounce"),false,noone,0.7,0.8);
}
if (my_hitboxID.attack==AT_USPECIAL){
	yo_dummy_your_up_b_got_PARRIED = true;
	if (my_hitboxID.hbox_num==5){
		usp_ls_cooldown = 180;
	}
}