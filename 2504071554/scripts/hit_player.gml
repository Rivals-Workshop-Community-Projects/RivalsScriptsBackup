//hitplayer shockcat

if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 4){ //detection
		var tmp_article = my_hitboxID.owner_article
		tmp_article.state_buffer = 2;
		
		tmp_article.fake_hitpause = true;
		tmp_article.fake_hitpause_time = 4;
		tmp_article.fake_oldhsp = tmp_article.hsp;
		tmp_article.fake_oldvsp = tmp_article.vsp;
		tmp_article.hsp = 0;
		tmp_article.vsp = 0;
		blades = false;
		my_hitboxID.destroyed = true;
		spawn_hit_fx( tmp_article.x, tmp_article.y, 66 );
		sound_play(asset_get("sfx_spin"),false,noone,0.7,1.4);
		sound_play(asset_get("sfx_spin"),false,noone,0.7,1.5);
		move_cooldown[AT_NSPECIAL] = nsp_cooldown;
	}
	if (my_hitboxID.hbox_num == 3){ //multihit
		var tmp_article = my_hitboxID.owner_article
		
		tmp_article.fake_hitpause = true;
		tmp_article.fake_hitpause_time = 3;
		tmp_article.fake_oldhsp = tmp_article.hsp;
		tmp_article.fake_oldvsp = tmp_article.vsp;
		tmp_article.hsp = 0;
		tmp_article.vsp = 0;
	}
}
if (my_hitboxID.attack == AT_FSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		if (charge_store>0){
			fsp_cancel_qualified = true;
			fsp_special_qualified = true;
			fsp_hit_loc_x = hit_player.x;
			fsp_hit_loc_y = hit_player.y;
		}
	}
	if (my_hitboxID.hbox_num == 2){ //blade hit
		if (window==2||window==3){
			window = 3
			window_timer = 16
		}
	}
}

if (my_hitboxID.attack == AT_NAIR){
	if (my_hitboxID.hbox_num == 1){
		var put_hitstun = 30
		sound_play(asset_get("sfx_absa_cloud_place"),false,noone,0.8,1.2)
		sound_play(asset_get("sfx_blow_medium1"))
		
		hitstun_full = put_hitstun
		hitstun = put_hitstun
	}
}

if (my_hitboxID.attack == AT_FTILT){
	//uses mawral's grab template here. thanks!
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	  && was_parried == false
	  && hit_player_obj.clone == false) {
		destroy_hitboxes();
		set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 11);
		window = 6;
		window_timer = 0;
		sound_play(asset_get("sfx_shovel_swing_heavy1"))
		
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

if (my_hitboxID.attack == AT_FSTRONG){
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		fst_switch = true;
	}
	
	
	
}











