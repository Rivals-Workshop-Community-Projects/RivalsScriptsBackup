//before stuck
if(state == 0){
	//hitbox
	vsp = 6
	hsp = 5*spr_dir
	if(hit_timer <= 0){
		if(player_id.attack != AT_NSPECIAL && player_id.attack != AT_USPECIAL){
    		if(hit_timer <= 0 && magnet == false){
		        rock_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
			}else if(hit_timer <= 0 && magnet == true){
				rock_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y)
			}
		}else{
			rock_hitbox = create_hitbox(AT_FSPECIAL, 2, x, y)
		}
	}
	
	image_angle = 0
	image_index += 0.25
	//changing to stuck
	if(player_id.attack != AT_NSPECIAL && player_id.window != 2){
		if(!free){
			state = 1
			state_timer = 0
			grounded_state = "ground"
			sound_play(asset_get("sfx_kragg_rock_land"))
		}else if(hit_wall = true && free){
			state = 1
			state_timer = 0
			grounded_state = "wall"
			sound_play(asset_get("sfx_kragg_rock_land"))
		}else if(hit_wall = true && !free){
			state = 1
			state_timer = 0
			grounded_state = "ground"
			sound_play(asset_get("sfx_kragg_rock_land"))
		}
	}
}

//stuck
if(state == 1){
	cancelled = false
	sprite_index = sprite_get("flying_rock_stuck")
	mask_index = sprite_get("flying_rock_mask")
	if(grounded_state == "ground"){
		vsp = 0
		hsp = 0
		image_angle = 0
	}else if(grounded_state == "wall"){
		vsp = 0
		hsp = 10*spr_dir
		image_angle = 90*spr_dir
	}
	if(state_timer > 4){
		if(free && !hit_wall){
			state = 2
			state_timer = 0
		}
	}
}

//spinning
if(state == 2){
	//hitbox
	if(hit_timer <= 0 && magnet == false && cancelled != true){
        rock_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
        if(rock_hitbox.x > player_id.x){
        	rock_hitbox.spr_dir = -1
        }else{
        	rock_hitbox.spr_dir = 1
        }
	}else if(hit_timer <= 0 && magnet == true && cancelled != true){
		rock_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y)
		if(rock_hitbox.x > player_id.x){
        	rock_hitbox.spr_dir = -1
        }else{
        	rock_hitbox.spr_dir = 1
        }
	}
	sprite_index = sprite_get("flying_rock_spinning")
	mask_index = sprite_get("flying_rock_mask")
	image_angle = 0
	image_index += 0.5
    vsp += 0.2
    //grounded
    if(!free){
    	y += 1
		state = 1
		state_timer = 0
		grounded_state = "ground"
		sound_play(asset_get("sfx_kragg_rock_land"))
	}
	if(hit_wall == true){
		if(cancelled == true){
			spawn_hit_fx(x, y, 301)
			instance_destroy();
			exit;
		}
		state = 1
		state_timer = 0
		grounded_state = "wall"
		sound_play(asset_get("sfx_kragg_rock_land"))
	}
}

//--------------------------------------------//

//constant checks

//getting hit
with (asset_get("pHitBox")){
	if (place_meeting(x, y, other)){
		if(player_id == other.player_id && other.gotHit_timer <= 0){
			if(other.state == 1 && other.state_timer > 2 && attack != AT_USPECIAL){
				other.has_hit_player = true
				spawn_hit_fx(lerp(x, other.x, 0.5), lerp(y, other.y, 0.5), hit_effect)
				sound_play(sound_effect)
				other.gotHit_timer = 25
				other.vsp = -8
				other.old_vsp = -8
				if(other.grounded_state == "ground"){
					if(attack != AT_BAIR){
						other.hsp = 2*spr_dir
					}else{
						other.hsp = -2*spr_dir
					}
					other.old_hsp = 2*spr_dir
					other.spr_dir = spr_dir
				}else if(other.grounded_state == "wall"){
					other.hsp = -2*other.spr_dir
					other.old_hsp = 2*spr_dir
				}
				other.state = 2
				other.state_timer = 0
				other.hit_wall = false
				if(attack == AT_DAIR){
					player_id.window = 4
					player_id.window_timer = 0
					player_id.vsp = -8
					player_id.old_vsp = -8
					player_id.old_hsp = 0
					player_id.hsp = 0
					instance_destroy();
				}else{
					sound_play(asset_get("sfx_kragg_rock_pull"))
				}
				if(type == 1){
					with(player_id){
						old_hsp = hsp
						old_vsp = vsp
						hitstop = 6
						hitstop_full = 6
						hitpause = true
					}
				}
				exit;
			}
		}else if(other.gotHit_timer <= 0 && player_id != other.player_id){
			spawn_hit_fx(x, y, hit_effect)
			sound_play(sound_effect)
			other.gotHit_timer = 25
			other.hitstop = 7
			other.hitstop_full = 7
			other.hitpause = true
			if(type == 1){
					with(player_id){
						old_hsp = hsp
						old_vsp = vsp
						hitstop = 8
						hitstop_full = 8
						hitpause = true
					}
				}
			instance_destroy(other);
			/*if(type == 2){
				instance_destroy(asset_get("pHitBox"))
			}*/
			exit;
		}
	}
}

//drawing rotation

if(gotHit_timer > 0){
	gotHit_timer--
}

if(hit_timer > 0){
	hit_timer -= 1
}


//deleting if out of bounds
if (y > room_height + 80 && !(player_id.attack == AT_USPECIAL && player_id.state == PS_ATTACK_AIR) && !(player_id.attack != AT_NSPECIAL && player_id.state == PS_ATTACK_AIR)){ // (less jank this way)
    instance_destroy();
    exit;
}

if (x < -200 && !(player_id.attack == AT_USPECIAL && player_id.state == PS_ATTACK_AIR) && !(player_id.attack != AT_NSPECIAL && player_id.state == PS_ATTACK_AIR) 
	|| x > room_width + 200 && !(player_id.attack == AT_USPECIAL && player_id.state == PS_ATTACK_AIR) && !(player_id.attack != AT_NSPECIAL && player_id.state == PS_ATTACK_AIR)){
    instance_destroy();
    exit;
}

if(cancelled == true){
	image_alpha = 0.5
}else{
	image_alpha = 1
}
	
state_timer++