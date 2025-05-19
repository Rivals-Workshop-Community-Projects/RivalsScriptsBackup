	
if(attack == AT_USPECIAL){
	if (hbox_num == 1) {
		if(hitbox_timer = 1){
			sound_played = false;
		}
		if(collision_point(x + 6 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone || has_hit || (instance_exists(player_id.comet) && instance_place(x, y, player_id.comet))){
			if(sound_played = false){
				if(!has_hit){
				sound_play(asset_get("sfx_blow_heavy2"))
				spawn_hit_fx(x, y, 292)
				player_id.clinged_player = false
				}else{
				player_id.clinged_player = true
				sound_play(asset_get("sfx_clairen_nspecial_grab_success"))
					
				}
				sound_played = true;
			}
			vsp = 0
			hsp = 0
			mic_clinged = true
			if(has_hit_player){
				x = player_id.hit_player_obj.x - 10 * spr_dir
				y = player_id.hit_player_obj.y - player_id.hit_player_obj.char_height/2	
			}
			if(instance_place(x, y, player_id.comet)){
				player_id.clinged_player = true
				x = player_id.comet.x - 0 * spr_dir
				y = player_id.comet.y - 0
				player_id.comet.state = 1;
				player_id.comet.comet_clinged = true
				player_id.comet.hsp = 0;
				player_id.comet.vsp = 0;
			}
		}else{
			proj_angle = radtodeg(arctan(vsp/-hsp));
			mic_clinged = false
			if(hitbox_timer = 17){
				destroyed = true
			}
		}
	}
}

if(attack == AT_DSPECIAL){
	if("gamer" in self){
		var _hsp = hsp;
		var _vsp = vsp;
		//x+=_hsp;
		//y+=_vsp;
		visible = false;
		var _turn = false;

		for(var i = 1; i < length; i++){
			_hsp = (max(0, (abs(_hsp) - air_friction)) * sign(_hsp))
			x += _hsp;
			y += _vsp;
			if(i%10== 1){
				
				var _block = create_hitbox(AT_DSPECIAL, 9, round(x), round(y)+4);
				_block.length = i+12;
				_block.depth = depth+1;
			}
			if(hbox_num = 2){
				while(collision_point(x, y+16, asset_get("par_block"), true, true)){
					
					y-=2;
				}
				through_platforms = 2
				if(i % 20 >= 8){
					_vsp = 0
					_hsp = 6 * spr_dir 
				}else if(!place_meeting(x, y, asset_get("par_block"))){
					_vsp = 6 
					_hsp = 0 
				} else {
					_hsp = 0;
					_vsp = 0;
				}
			}
			if(hbox_num = 3){
				if(i % 20 >= 8){
					_vsp = 0
					_hsp = 6 * spr_dir
				}else if(!place_meeting(x, y, asset_get("par_block"))){
					
					_vsp = -6
					_hsp = 0 
				}
			}
			if(hbox_num = 4){
				if(collision_point(x - 20 * spr_dir, y + 40, asset_get("par_block"),false,true) != noone || collision_point(x - 20 * spr_dir, y + 40, asset_get("par_jumpthrough"),false,true) != noone){
					_vsp = 0
					_hsp = 9 * spr_dir 
				}else{
					if(!_turn){
						var _block = create_hitbox(AT_DSPECIAL, 9, x, y+4);
						_block.length = i+12;
						_block.depth = depth+1;
						_turn = true;
					}
					
					_vsp = 6 
					_hsp = 0 
				}
			}
			if(hbox_num = 5){
				if(collision_point(x - 20 * spr_dir, y + 40, asset_get("par_block"),false,true) != noone || collision_point(x - 20 * spr_dir, y + 40, asset_get("par_jumpthrough"),false,true) != noone){
					_vsp = 0
					_hsp = 9 * spr_dir 
				}else{
					if(!_turn){
						var _block = create_hitbox(AT_DSPECIAL, 9, x, y+4);
						_block.length = i+12;
						_block.depth = depth+1;
						_turn = true;
					}
					_vsp = -6 
					_hsp = 0 
				}

			}
			if(hbox_num = 6){
				through_platforms = 2
				if(i <= 15){
					image_index = 0
					_vsp = 0
					_hsp = 6 * spr_dir 
				}else if(i <= 30){
					image_index = 1
					_vsp = -6 
					_hsp = 0
				}else if(i <= 45){
					image_index = 2
					_vsp = 0
					_hsp = -6 * spr_dir 
				}else if(i <= 60){
					image_index = 3
					_vsp = 6 
					_hsp = 0
				}else{
					image_index = 4
					_vsp = 0
					_hsp = 6 * spr_dir 
				}
			}
		}
		destroyed = true;
	
	} else
	if(hbox_num = 2){
		through_platforms = 2
		if(hitbox_timer % 20 >= 8){
			vsp = 0
			hsp = 6 * spr_dir
		}else{
			vsp = 6
			hsp = 0 
		}
	}
	if(hbox_num = 3){
		if(hitbox_timer % 20 >= 8){
			vsp = 0
			hsp = 6 * spr_dir
		}else{
			vsp = -6
			hsp = 0 
		}
	}
	if(hbox_num = 4){
		if(collision_point(x - 20 * spr_dir, y + 40, asset_get("par_block"),false,true) != noone || collision_point(x - 20 * spr_dir, y + 40, asset_get("par_jumpthrough"),false,true) != noone){
			vsp = 0
			hsp = 9 * spr_dir
		}else{
			vsp = 6
			hsp = 0 
		}
	
	}
	if(hbox_num = 5){
		if(collision_point(x - 20 * spr_dir, y + 40, asset_get("par_block"),false,true) != noone || collision_point(x - 20 * spr_dir, y + 40, asset_get("par_jumpthrough"),false,true) != noone){
			vsp = 0
			hsp = 9 * spr_dir
		}else{
			vsp = -6
			hsp = 0 
		}
	
	}
	if(hbox_num = 6){
		through_platforms = 2
		if(hitbox_timer <= 15){
			image_index = 0
			vsp = 0
			hsp = 6 * spr_dir
		}else if(hitbox_timer <= 30){
			image_index = 1
			vsp = -6
			hsp = 0
		}else if(hitbox_timer <= 45){
			image_index = 2
			vsp = 0
			hsp = -6 * spr_dir
		}else if(hitbox_timer <= 60){
			image_index = 3
			vsp = 6
			hsp = 0
		}else{
			image_index = 4
			vsp = 0
			hsp = 6 * spr_dir
		}
	}
	if(instance_exists(player_id.comet) && place_meeting(x, y, player_id.comet) && hbox_num < 8 and hit_priority != 0){
		player_id.comet.state = 5
		player_id.comet.state_timer = 1
		player_id.comet.spr_dir = spr_dir
		player_id.comet.hit_tetramino = hbox_num
		player_id.cur_tetramino.destroyed = true
		player_id.tetris_hit = true;
    }
    // print(string(place_meeting(x, y, player_id.comet)))
    
    
    
}
