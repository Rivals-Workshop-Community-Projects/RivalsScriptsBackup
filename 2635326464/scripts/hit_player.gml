//hit player

if (my_hitboxID.attack == AT_FTILT){

	with(hit_player_obj){
		painted = true;
		//air_max_speed =  0.5 * default_air_max_speed;
		//walk_speed =  0.5 * default_walk_speed;
		//dash_speed =  0.5 * default_dash_speed;
		//roll_forward_max = 0.5 * default_roll_forward_max; 
		//roll_backward_max = 0.5 * default_roll_backward_max;
	}
}

if (my_hitboxID.attack == AT_FSTRONG){
	sound_stop (sound_get("Shell"));
}

if (my_hitboxID.attack == AT_NSPECIAL_AIR || (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 5)){
	sound_play (sound_get("FireBallHit"));
}

//hmmm banana

if (my_hitboxID.attack == AT_DSPECIAL){

	var banana_owner = player

	with(hit_player_obj){
		bananed = true;
		with(asset_get("obj_article1")){
			state = 2;
		}

	sound_play(asset_get("sfx_leaves"));
	take_damage(player, banana_owner, 1);
	destroy_hitboxes();
	}


}

