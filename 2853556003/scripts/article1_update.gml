//article1_update - runs every frame the article exists

if glowmodifier < .9 {
	glowmodifierdir = 1 
}
if glowmodifier > 1.1 {
	glowmodifierdir = -1
}

if glowmodifierdir = -1 {
	glowmodifier -= .01
}
if glowmodifierdir = 1 {
	glowmodifier += .01
}
if object_index == oPlayer exit;

//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

//Idle
with(player_id){
	if(!instance_exists(hurricane)){
		instance_destroy();
		exit;
	}
}
if(state == 0){
	if(player_id.N_modifier){
		x = round(lerp(x, player_id.x, 0.03))
		y = round(lerp(y, player_id.y - 20, 0.03))
	}
	if(lifetime > 2200){
		state = 1
		state_timer = 0
		image_index = 0
		with(player_id){
			if(hurricane.holding_bomb){
				waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
				if(hurricane.bomb_strong){
					waterBomb.strong = true
				}else{
					waterBomb.strong = false
				}
				waterBomb.spr_dir = 1
				hurricane.holding_bomb = false
			}
		}
	}
	//initial thingy
	if(!holding_bomb){
		sprite_index = sprite_get("hurricane")
	}else{
		
		if(bomb_strong){
			sprite_index = sprite_get("hurricane_strong_bomb")
		}else{
			sprite_index = sprite_get("hurricane_bomb")
		}
	}
	image_index += 0.25
	hsp *= 0.9
	vsp *= 0.9
	
	if(state_timer mod 10 == 0 && lifetime >= 6){
		hurricane_hitbox = create_hitbox(AT_FSPECIAL, 2, round(x + hsp), round(y + vsp) - 4)
		hurricane_hitbox.player = current_owner
	}
	if(instance_exists(hurricane_hitbox)){
		hurricane_hitbox.x = x
		hurricane_hitbox.y = y + 4
		/*if(hurricane_hitbox.was_parried){
			state = 1
			state_timer = 0
			image_index = 0
			with(player_id){
				if(hurricane.holding_bomb){
					waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
					if(hurricane.bomb_strong){
						waterBomb.strong = true
						waterBomb.state = 3
						waterBomb.state_timer = 0
						waterBomb.image_index = 0
					}else{
						waterBomb.strong = false
						waterBomb.state = 2
						waterBomb.state_timer = 0
						waterBomb.image_index = 0
					}
					waterBomb.spr_dir = 1
					hurricane.holding_bomb = false
				}
			}
		}*/
	}
	
	if(lifetime < 6){
		grabbedid = noone
	}
	
	if(multihits > (3 * player_id.D_modifier) || hit_wall){
		state = 1
		state_timer = 0
		image_index = 0
		with(player_id){
			if(hurricane.holding_bomb){
				waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
				waterBomb.current_owner = other.current_owner
				if(hurricane.bomb_strong){
					waterBomb.strong = true
					waterBomb.state = 3
					waterBomb.state_timer = 0
					waterBomb.image_index = 0
				}else{
					waterBomb.strong = false
					waterBomb.state = 2
					waterBomb.state_timer = 0
					waterBomb.image_index = 0
				}
				waterBomb.spr_dir = 1
				hurricane.holding_bomb = false
			}
		}
	}
	
	if(grabbedid != noone){
		grabbedid.x = lerp(x, grabbedid.x, 0.85)
		grabbedid.y = lerp(y + 30, grabbedid.y, 0.85)
	}
	
	/*if(place_meeting(x, y, player_id)){
		if(player_id.state == PS_PRATFALL || player_id.state == PS_TUMBLE || player_id.state == PS_IDLE_AIR || player_id.state == PS_FIRST_JUMP){
			player_id.vsp = -12
			player_id.hsp = 0
			if(player_id.state == PS_PRATFALL){
				with(player_id){
					set_state(PS_IDLE_AIR)
				}
			}
			if(holding_bomb){
    			state = 1
				state_timer = 0
				image_index = 0
				with(player_id){
					if(hurricane.holding_bomb){
						waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
						if(hurricane.bomb_strong){
							waterBomb.strong = true
						}else{
							waterBomb.strong = false
						}
						waterBomb.spr_dir = 1
						hurricane.holding_bomb = false
					}
				}
    		}else{
    			state = 1
				state_timer = 0
				image_index = 0
    		}
		}
	}*/
	
	with (asset_get("pHitBox")){
		if (place_meeting(x, y,other)){
		    if(player_id == other.player_id){
		    	if(attack == AT_NSPECIAL && hbox_num == 1){
		    		if(instance_exists(other.player_id.waterBomb)){
		    			other.holding_bomb = true
		    			if(other.player_id.waterBomb.strong){
		    				other.bomb_strong = true
		    			}else{
		    				other.bomb_strong = false
		    			}
		    			other.current_owner = other.player_id.waterBomb.current_owner
		    			sound_play(sound_get("sfx_explosion_water_small"))
		    			instance_destroy(other.player_id.waterBomb);
		    		}
		    	}else if(attack != AT_DSPECIAL && attack != AT_FSPECIAL && attack != AT_NSPECIAL && other.state != 1){
		    		if(other.holding_bomb){
		    			other.state = 1
						other.state_timer = 0
						other.image_index = 0
						if(instance_exists(other.hurricane_hitbox)){
							other.hurricane_hitbox.destroyed = true
						}
						with(other.player_id){
							if(hurricane.holding_bomb){
								waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
								if(hurricane.bomb_strong){
									waterBomb.strong = true
								}else{
									waterBomb.strong = false
								}
								waterBomb.spr_dir = 1
								hurricane.holding_bomb = false
							}
						}
						if(!player_id.hitpause){
							player_id.old_hsp = player_id.hsp;
							player_id.old_vsp = player_id.vsp;
							if(type == 1){
								player_id.hitpause = true
					            player_id.hitstop = 2
					            player_id.hitstop_full =  2
							}
						}
		    		}else if(!other.player_id.N_modifier){
		    			other.state = 1
						other.state_timer = 0
						other.image_index = 0
						if(instance_exists(other.hurricane_hitbox)){
							other.hurricane_hitbox.destroyed = true
						}
		    		}
		    	}
		    }else if(!other.player_id.N_modifier){
		    	if(player_id.url == 2853556003 && attack == AT_NSPECIAL && hbox_num == 1 && !other.holding_bomb){
		    		other.holding_bomb = true
		    		other.current_owner = player
		    		if(instance_exists(other.hurricane_hitbox)){
						other.hurricane_hitbox.destroyed = true
					}
		    		player_id.waterBomb.destroy = true
		    		destroyed = true
		    		sound_play(sound_get("sfx_explosion_water_small"))
		    	}else{
			    	if(other.holding_bomb && other.state != 1){
			    		other.state = 1
						other.state_timer = 0
						other.image_index = 0
						if(instance_exists(other.hurricane_hitbox)){
							other.hurricane_hitbox.destroyed = true
						}
						with(other.player_id){
							if(hurricane.holding_bomb){
								waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
								waterBomb.lifetime = -5
								if(hurricane.bomb_strong){
									waterBomb.strong = true
								}else{
									waterBomb.strong = false
								}
								waterBomb.spr_dir = 1
								hurricane.holding_bomb = false
							}
						}
						if(!player_id.hitpause){
							player_id.old_hsp = player_id.hsp;
							player_id.old_vsp = player_id.vsp;
							if(type == 1){
								player_id.hitpause = true
					            player_id.hitstop = 2
					            player_id.hitstop_full =  2
							}
						}
		    		}else{
		    			other.state = 1
						other.state_timer = 0
						other.image_index = 0
		    		}
		    	}
		    }
		}
	}
	//later thingy
	if(!holding_bomb){
		sprite_index = sprite_get("hurricane")
	}else{
		
		if(bomb_strong){
			sprite_index = sprite_get("hurricane_strong_bomb")
		}else{
			sprite_index = sprite_get("hurricane_bomb")
		}
	}
}

//Disappear

if(state == 1){
	if(instance_exists(hurricane_hitbox)){
		hurricane_hitbox.destroyed = true
	}
	if(state_timer == 1){
		with(player_id){
			if(hurricane.holding_bomb){
				waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
				if(hurricane.bomb_strong){
					waterBomb.strong = true
				}else{
					waterBomb.strong = false
				}
				waterBomb.spr_dir = 1
				hurricane.holding_bomb = false
			}
		}
	}
	if(state_timer == 1){
		sound_play(asset_get("sfx_bird_sidespecial_start"));
	}
	sprite_index = sprite_get("hurricane_destroy")
	image_index += 0.25
	hsp *= 0.9
	vsp *= 0.9
	if(image_index == 5){
		instance_destroy();
		exit;
	}
}





//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)

//delete if out of bounds

if(hsp < 1 && hsp > -1 && lifetime > 60){
	if (y > room_height + 120 || y < -20){
	    instance_destroy();
	    exit;
	}
	
	if (x < -30 || x > room_width + 30){
	    instance_destroy();
	    exit;
	}
}



//Make time progress
state_timer++;
lifetime++