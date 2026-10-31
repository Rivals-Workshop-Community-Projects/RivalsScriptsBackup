//hit_player

if (my_hitboxID.attack == AT_EXTRA_1 && window > 0){
	if (!instance_exists(grabbed_id) && my_hitboxID.hbox_num != 5){
		grabbed_id = hit_player_obj;
	}
	if (hit_player_obj == grabbed_id && my_hitboxID.hbox_num == 5){
		grabbed_id = noone;
	}
}
if(my_hitboxID.attack == AT_NSPECIAL and my_hitboxID.hbox_num == 3){
	if(hit_player_obj.player == player){
		//hit_player_obj.djumps = hit_player_obj.max_djumps;
		//hit_player_obj.has_walljump = false;
		//hit_player_obj.has_airdodge = false;
		hit_player_obj.carpet_cooldown = true;
		
	}
}