//got_parried.gml
if my_hitboxID.attack == AT_NSPECIAL { 
	instance_destroy(ice_meteor_article);
	if free { state = PS_PRATFALL; }
	shard_spread = 1;
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	shard_spread = 3;
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	instance_create( hit_player_obj.x, hit_player_obj.y, "obj_article3" ); 
	ice_meteor_article = -4; 
}

if flight_mode { flight_mode = 0; state = PS_PRATFALL;  }