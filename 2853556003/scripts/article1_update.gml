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
	if(grabbedid != noone){
		if(grabbedid.state != PS_HITSTUN){
			state = 1
			state_timer = 0
			image_index = 0
			grabbedid = noone
		}
	}
	if(player_id.H_modifier && !(player_id.attack == AT_DSPECIAL && player_id.window <= 2 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND))){
		var closest_player = player_id
		var closest_distance = distance_to_object(player_id)
		with(oPlayer){
			if(distance_to_object(other) < closest_distance || closest_player.state_cat != SC_HITSTUN && state_cat == SC_HITSTUN){
				closest_player = self
				closest_distance = distance_to_object(other)
			}
		}
		if(closest_player.state_cat == SC_HITSTUN && closest_player.hitpause == false && closest_distance < 90 && closest_player != player_id){
			hsp = round((closest_player.x + hsp) - x) / 10
			vsp = round((closest_player.y + vsp) - y - 25) / 10
		}else{
			hsp = lerp(hsp, round(closest_player.x - x) / 20, 0.05)
			vsp = lerp(vsp, round(closest_player.y - y - 25) / 20, 0.05)
		}
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
	hsp *= 0.9
	vsp *= 0.9
	//initial thingy
	if(!holding_bomb){
		sprite_index = sprite_get("hurricane")
	}else{
		if(!(has_rune("F") || player_id.all_runes)){
			if(bomb_strong){
				sprite_index = sprite_get("hurricane_strong_bomb")
			}else{
				sprite_index = sprite_get("hurricane_bomb")
			}
		}else{
			if(bomb_strong){
				sprite_index = sprite_get("hurricane_strong_bomb_cheese")
			}else{
				sprite_index = sprite_get("hurricane_bomb_cheese")
			}
		}
	}
	image_index += 0.25
	
	if(state_timer mod 10 == 0 && lifetime >= 6){
		hurricane_hitbox = create_hitbox(AT_FSPECIAL, 2, round(x + hsp), round(y + vsp) - 4)
		hurricane_hitbox.parent_article = self
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
	
	if(multihits > round(3 * player_id.M_modifier) || hit_wall){
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
		    			
		    			if(other.current_owner == other.player_id){
		    				sound_play(sound_get("sfx_explosion_water_small"))
		    			}else{
		    				with(other.player_id){
		    					sound_play(sound_get("sfx_explosion_water_small"), false, 0)
		    				}
		    			}
		    			
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
		    		}else{
		    			other.state = 1
						other.state_timer = 0
						other.image_index = 0
						if(instance_exists(other.hurricane_hitbox)){
							other.hurricane_hitbox.destroyed = true
						}
		    		}
		    	}else if(attack == AT_FSPECIAL && hbox_num == 1 && other.lifetime > 10){
		    		if(!player_id.hitpause){
						player_id.old_hsp = player_id.hsp;
						player_id.old_vsp = player_id.vsp;
						if(type == 1){
							player_id.hitpause = true
				            player_id.hitstop = 6
				            player_id.hitstop_full =  6
						}
					}
					shake_camera(4, 4)
	    			
		    		with(other){
		    			sound_play(asset_get("sfx_spin"))
		    			sound_play(player_id.sfx_waterhit_heavy)
		    			spawn_hit_fx(x, y, player_id.vfx_waterhit_huge)
		    			
		    			player_id.spawned_riptide = true
		    			player_id.hsp = -9 * player_id.spr_dir
		    			player_id.vsp -= 5
		    			player_id.old_hsp = -9 * player_id.spr_dir
		    			player_id.old_vsp -= 5
		    			if(player_id.left_down){
		    				player_id.hsp -= 3
		    				player_id.old_hsp -= 3
		    			}else if(player_id.right_down){
		    				player_id.hsp += 3
		    				player_id.old_hsp += 3
		    			}
		    			state = 1
		    			state_timer = 0
		    			image_index = 0
		    			hsp = 7.5 * player_id.spr_dir
		    			if(!instance_exists(player_id.sawblade)){
			    			player_id.sawblade = instance_create(x, y,"obj_article2");
			    			player_id.sawblade.spr_dir = player_id.spr_dir
			    			player_id.sawblade.type = 1
			    			player_id.sawblade.hsp = (player_id.sawblade_speed / 2) * player_id.sawblade.spr_dir
			    			player_id.sawblade.vsp = player_id.sawblade_jumpspeed / 1.5
			    			
			    			if(holding_bomb){
			    				player_id.sawblade.big = true
			    				with(player_id.sawblade){
			    					sound_play(asset_get("sfx_waterwarp"))
			    				}
			    			}else{
			    				with(player_id.sawblade){
			    					sound_play(asset_get("sfx_waterwarp_start"))
			    				}
			    			}
			    			if(bomb_strong) player_id.sawblade.strong = true
		    			}

		    			holding_bomb = false
		    		}
		    	}else if(attack == AT_FSPECIAL && hbox_num == 3){
		    		with(other){
		    			if(instance_exists(player_id.sawblade)){
		    				player_id.sawblade.vsp = -12
		    				player_id.sawblade.hsp = 0
		    				player_id.sawblade.state = 1
		    				player_id.sawblade.state_timer = 0
		    				
		    				if(holding_bomb){
	    						var waterbomb_explosion = instance_create(x, y - 10,"obj_article2");
	    						if(bomb_strong){
	    							waterbomb_explosion.state = 3
	    							player_id.sawblade.strong = true
	    							player_id.sawblade.big = true
	    							
	    							sound_play(asset_get("mfx_star"))
	    							spawn_hit_fx(player_id.sawblade.x, player_id.sawblade.y, player_id.vfx_star)
	    						}else{
	    							waterbomb_explosion.state = 2
	    							player_id.sawblade.big = true
	    						}
		    				}
		    				holding_bomb = false
		    			}
		    			state = 1
		    			state_timer = 0
		    			vsp = -5
		    			hsp = 0
		    			image_index = 0
		    			sound_play(asset_get("sfx_spin"))
		    			sound_play(player_id.sfx_waterhit_medium)
		    			spawn_hit_fx(x, y, player_id.vfx_waterhit_medium)
		    		}
		    	}
		    }else{
		    	//Torga Bomb
		    	if(player_id.url == 2853556003 && attack == AT_NSPECIAL && hbox_num == 1 && !other.holding_bomb || player_id.url == 2794570829 && attack == AT_NSPECIAL && hbox_num == 1 && !other.holding_bomb){
		    		other.holding_bomb = true
		    		if(instance_exists(player_id.waterBomb)){
			    		if(player_id.waterBomb.strong){
			    			other.bomb_strong = true
			    		}
		    		}
		    		other.current_owner = player
		    		if(instance_exists(other.hurricane_hitbox)){ 
						other.hurricane_hitbox.destroyed = true
					}
		    		player_id.waterBomb.destroy = true
		    		destroyed = true
	    			if(other.current_owner == other.player_id){
	    				sound_play(sound_get("sfx_explosion_water_small"))
	    			}else{
	    				with(other.player_id){
	    					sound_play(sound_get("sfx_explosion_water_small"), false, 0)
	    				}
	    			}
		    	}else{
			    	if(other.holding_bomb && other.state != 1){
			    		other.state = 1
						other.state_timer = 0
						other.image_index = 0
						other.current_owner = player
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
		if(!(has_rune("F") || player_id.all_runes)){
			if(bomb_strong){
				sprite_index = sprite_get("hurricane_strong_bomb")
			}else{
				sprite_index = sprite_get("hurricane_bomb")
			}
		}else{
			if(bomb_strong){
				sprite_index = sprite_get("hurricane_strong_bomb_cheese")
			}else{
				sprite_index = sprite_get("hurricane_bomb_cheese")
			}
		}
		if(!bomb_strong && (has_rune("M") || player_id.all_runes)){
			bomb_strong = true
			sound_play(asset_get("mfx_star"))
			var star_fx = spawn_hit_fx(x, y, player_id.vfx_star)
			star_fx.depth = -30
		}
	}
}

//Disappear

if(state == 1){
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
				waterBomb.current_owner = other.current_owner
			}
		}
	}else if(state_timer <= 3 && state_timer > 0){
		with(player_id){
			if(instance_exists(waterBomb)){
				waterBomb.current_owner = other.current_owner
			}
		}
	}
	if(instance_exists(hurricane_hitbox)){
		hurricane_hitbox.destroyed = true
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

if(!player_id.bomb_hurricane){
	bomb_hurricane = false
}


//Make time progress
state_timer++;
lifetime++