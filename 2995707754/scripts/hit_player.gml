//hit_player.gml
flight_mode_hit = 1;
if flight_mode == 1 {
	if my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR {
		flight_meter += 1;
	} else {
		flight_meter += 5;
	}
}

if my_hitboxID.attack = AT_NSPECIAL {
	ice_meteor_article.hitstop = 7;
	ice_meteor_article.meteor_has_hit = 1;
	shard_spread = 1;
		instance_create( round(hit_player_obj.x), round(hit_player_obj.y), "obj_article3" ); 
		instance_create( round(hit_player_obj.x), round(hit_player_obj.y), "obj_article3" ); 	
	shard_spread = 3;
		instance_create( round(hit_player_obj.x), round(hit_player_obj.y), "obj_article3" ); 					
		instance_create( round(hit_player_obj.x), round(hit_player_obj.y), "obj_article3" ); 					
	my_hitboxID.destroyed = 1;
}

if my_hitboxID.attack == AT_FSPECIAL {
	if window == 2 {
		sound_stop( asset_get("sfx_bird_downspecial") );
		window = 3;
		window_timer = 0;
		destroy_hitboxes();
		old_vsp = -12;
		flight_meter += 10;
	}
}

if my_hitboxID.attack != AT_JAB && my_hitboxID.attack != AT_DSPECIAL {
	var me = my_hitboxID.player_id;
	var player_that_was_hit = hit_player_obj;
	with (pHitBox){
		if player_id == me && attack == AT_DSPECIAL && hbox_num == 1 { marked_player = player_that_was_hit; missile_til_fire = player_id.hitstop - 3; }
	}
}

//ice lance
if my_hitboxID.attack = AT_DSPECIAL_2 {
	if my_hitboxID.has_hit { ice_lance_cancel = true; }
	var lance_hitstop = my_hitboxID.hitpause + (my_hitboxID.hitpause * my_hitboxID.hitpause_growth);
	ice_lance_article.hitstop = lance_hitstop;
	ice_lance_article.meteor_has_hit = 1;
}

if my_hitboxID.attack == AT_FSTRONG { hsp = 0; }