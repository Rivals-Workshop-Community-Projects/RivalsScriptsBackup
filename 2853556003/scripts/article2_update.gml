//article2_update - runs every frame the article exists

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

if(destroy){
	instance_destroy();
	exit;
}

//State 0: Up

player_id.uspec_non = 10

if(hitstun > 0){
	hsp = 0
	vsp = 0
}else if(hitstun == 0){
	hsp = old_hsp
	vsp = old_vsp
}

if (state == 1){
	if(hsp > 1 || hsp < -1){
    	image_angle += (hsp * -2)
	}else{
		image_angle += (abs(vsp) * spr_dir * -1)
	}
	
	if(image_yscale != (1 * player_id.G_modifier) || image_xscale != (1 * player_id.G_modifier)){
		if(hitstun <= 0){
			image_yscale = lerp(image_yscale, (1 * player_id.G_modifier), 0.35)
			image_xscale = (1 * player_id.G_modifier) + ((1 * player_id.G_modifier) - image_yscale)
		}
	}
	
	if(vsp < 12 && !slow){
    	vsp += 0.24
	}else if(slow){
		current_owner = player_id.player
		vsp *= 0.93
		hsp *= 0.93
	}
  
    if(hsp > 0){
    	spr_dir = 1
    }else if(hsp < 0){
    	spr_dir = -1
    }
    if(damage > 7 && !strong){
    	strong = true
    	sprite_index = bubble_strong
    	sound_play(asset_get("mfx_star"))
    	spawn_hit_fx(x, y, vfx_star)
    }else if(!strong){
    	sprite_index = bubble_idle
    }else if(strong){
    	sprite_index = bubble_strong
    }
    
    if(strong == true){
    	if(state_timer mod 2 == 0){
    		var waterfx = spawn_hit_fx(x + (10 - random_func_2(1, 20, true)), y + (10 - random_func_2(2, 20, true)), vfx_waterfx_small)
    		
    	}
    }
    
    if(hit_wall == true || !free){
    	if(!slow){
	    	if(!strong){
		    	state = 2
		    	state_timer = 0
	    	}else{
	    		state = 3
	    		state_timer = 0
	    	}
    	}
    }
    if(current_owner == player_id.player){
    	if(player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR){
    		last_move = noone
    		last_group = 0
    	}
    }
    with (asset_get("pHitBox")){
		if (place_meeting(x, y, other)){
			if(other.got_hit_timer < 0){
			    if(player_id == other.player_id){
		    		other.current_owner = player 
			    	
			        if(attack != AT_NSPECIAL && !(attack == AT_FSPECIAL && hbox_num == 2) && attack != AT_DSPECIAL && !(attack == other.last_move && hbox_group == other.last_group && hbox_group != -1)){
			        	if(attack == AT_DSTRONG && hbox_num == 1){
		        			if(x > other.x){
		        				var true_kb_angle = 160
		        			}else if(x < other.x){
		        				var true_kb_angle = 20
		        			}else{
		        				if(spr_dir == 1){
		        					var true_kb_angle = 20
		        				}else{
		        					var true_kb_angle = 160
		        				}
		        			}
			        	}else{
			        		other.enemy_hitboxID = id
			        		with(other){
		        				temp_hitbox_angle = get_hitbox_angle(enemy_hitboxID)
			        		}
		        			var true_kb_angle = other.temp_hitbox_angle
			        	}
					    var kb_distance = kb_value + damage * kb_scale * (1 + player_id.strong_charge / 60);
			            if(sound_effect != asset_get("sfx_blow_heavy1") &&
			            sound_effect != asset_get("sfx_blow_heavy2") &&
			            sound_effect != asset_get("sfx_blow_medium1") &&
			            sound_effect != asset_get("sfx_blow_medium2") &&
			            sound_effect != asset_get("sfx_blow_medium3") &&
			            sound_effect != asset_get("sfx_blow_weak1") &&
			            sound_effect != asset_get("sfx_blow_weak2")){
				            if(kb_value <= 4){
				            	sound_play(sound_get("sfx_waterhit_bomb_weak"))
				            }else if(kb_value <= 7){
				            	sound_play(sound_get("sfx_waterhit_bomb_medium"))
				            }else{
				            	sound_play(sound_get("sfx_waterhit_bomb_heavy"))
				            }
			            }else{
			            	if(sound_effect == asset_get("sfx_blow_heavy1") ||
			            	sound_effect == asset_get("sfx_blow_heavy2")){
			            		sound_play(sound_get("sfx_waterhit_bomb_heavy"))
			            	}else if(sound_effect == asset_get("sfx_blow_medium1") ||
				            sound_effect == asset_get("sfx_blow_medium2") ||
				            sound_effect == asset_get("sfx_blow_medium3")){
				            	sound_play(sound_get("sfx_waterhit_bomb_medium"))
				            }else if(sound_effect == asset_get("sfx_blow_weak1") ||
			        		sound_effect == asset_get("sfx_blow_weak2")){
			        			sound_play(sound_get("sfx_waterhit_bomb_weak"))
			        		}
			            }
			            var fx = spawn_hit_fx(x, y, hit_effect)
			            fx.pause = 8.58
			            if(!player_id.hitpause){
							player_id.old_hsp = player_id.hsp;
							player_id.old_vsp = player_id.vsp;
						}
						if(attack != AT_USPECIAL){
				            player_id.hitpause = true
				            player_id.hitstop = hitpause
				            player_id.hitstop_full =  hitpause
				            other.old_vsp = other.vsp
				        	other.old_hsp = other.hsp
				        	other.hitstun = hitpause
				            if(attack != AT_FSPECIAL){
				            	other.got_hit_timer = hitpause
				            }else{
				            	other.got_hit_timer = 2
				            }
						}else{
							other.got_hit_timer = 2
						}
			        	
			        	if(attack != AT_USPECIAL && !(attack == AT_BAIR && hbox_num < 5)){
				        	other.hsp = lengthdir_x( kb_distance, true_kb_angle);
						    other.vsp = ( lengthdir_y(kb_distance, true_kb_angle));
			        	}else if (attack == AT_USPECIAL){
			        		other.hsp = lengthdir_x( kb_distance, true_kb_angle);
						    other.vsp = ( lengthdir_y(kb_distance, true_kb_angle) * 2);
			        	}else if(attack == AT_BAIR && hbox_num < 5){
			        		other.hsp = other.player_id.hsp
						    other.x = lerp(other.player_id.x - 30*spr_dir, other.x, 0.8)
						    if(other.vsp < 11 && other.vsp > -6){
						    	other.y = lerp(other.player_id.y - 30, other.y, 0.8)
						    	other.vsp = other.player_id.vsp
						    }else{
						    	other.vsp = other.player_id.vsp / 2
						    }
			        	}
					    
					    if(other.player_id.move_cooldown[AT_NSPECIAL] > 0){
					    	other.player_id.move_cooldown[AT_NSPECIAL] -= damage * 4
					    	other.player_id.thump = damage / 2
					    	if(other.player_id.move_cooldown[AT_NSPECIAL] <= 0){
					    		other.player_id.move_cooldown[AT_NSPECIAL] = 1
					    	}
					    }
					    
					    other.old_vsp = other.vsp
			        	other.old_hsp = other.hsp
			        	/*
			        	if(attack == AT_FSPECIAL){
			        		with(player_id){
			        			destroy_hitboxes();
			        			window = 3
			        			window_timer = 16

								vsp = -11
								hsp *= 0.8
								old_vsp = vsp
								old_hsp = hsp
								
								thump = 4
					        	move_cooldown[AT_NSPECIAL] = 0
					        	waterBomb_charge_stun = 0
					        	sound_play(asset_get("mfx_star"))
			        		}
				        	
				        	other.hsp = player_id.hsp
				        	other.vsp = player_id.vsp * -0.5
				        	
				        	other.old_vsp = other.vsp
			        		other.old_hsp = other.hsp
			        		
			        		if(other.hsp > 0){
						    	other.spr_dir = 1
						    }else if(hsp < 0){
						    	other.spr_dir = -1
						    }
						    
				            other.image_yscale = 1 - (kb_scale / 2)
							other.image_xscale = 1 + (1 - other.image_yscale)
				            other.image_angle = -35*spr_dir
					    }*/
					    
				    	other.damage += damage
				    	
				    	if(other.hsp > 0){
					    	other.spr_dir = 1
					    }else if(hsp < 0){
					    	other.spr_dir = -1
					    }
					    
					    if(attack != AT_FSPECIAL){
				            other.image_yscale = (1 * player_id.G_modifier) - (kb_scale / 2)
							other.image_xscale = (1 * player_id.G_modifier) + (1 - other.image_yscale)
				            other.image_angle = true_kb_angle
					    }
					    
			            
			            other.last_move = attack
			            other.last_group = hbox_group

						if(attack == AT_FSPECIAL){
							if(hbox_num == 1){
								other.y = y - 5
								other.x = x + 5*spr_dir
								other.hsp = 4*player_id.spr_dir
								other.vsp = -2
								other.old_hsp = 4*player_id.spr_dir
								other.old_vsp = -2
								other.strong = true
								player_id.bomb_hurricane = true
							}
						}
			            //instance_destroy(pHitBox);
			            exit;
				    }
				
				}else if(type == 1 && damage > 0 && kb_value > 0){
					if(kb_angle == 361){
		        		var true_kb_angle = 35
		        	}else{
		        		var true_kb_angle = kb_angle
		        	}
					other.current_owner = player 
					
					var kb_distance = kb_value + damage * kb_scale * (1 + player_id.strong_charge / 60);
				    other.hsp = lengthdir_x( kb_distance, true_kb_angle);
				    other.vsp = ( lengthdir_y(kb_distance, true_kb_angle) );
		            sound_play(sound_effect)
		            var fx = spawn_hit_fx(x, y, hit_effect)
		            fx.pause = 8.58
		            if(!player_id.hitpause){
						player_id.old_hsp = player_id.hsp;
						player_id.old_vsp = player_id.vsp;
					}
		            player_id.hitpause = true
		            player_id.hitstop = hitpause
		            player_id.hitstop_full =  hitpause
		            other.old_vsp = other.vsp
		        	other.old_hsp = other.hsp
		        	other.hitstun = hitpause
		            other.got_hit_timer = hitpause + kb_value
		            
		            if(other.hsp > 0){
				    	other.spr_dir = 1
				    }else if(hsp < 0){
				    	other.spr_dir = -1
				    }
				    
				    other.damage += damage
				    
		            other.image_yscale = 1 - (kb_scale / 2)
					other.image_xscale = 1 + (1 - other.image_yscale)
		            other.image_angle = true_kb_angle
					
		            exit;
				}else if(type == 2 && damage > 0 && kb_value > 0){
					if(kb_angle == 361){
		        		var true_kb_angle = 35
		        	}else{
		        		var true_kb_angle = kb_angle
		        	}
		        	
					other.hsp += ( lengthdir_x( kb_distance, true_kb_angle)) / 2
				    other.vsp += ( lengthdir_y(kb_distance, true_kb_angle)) / 2	
				    
				    if(other.hsp > 0){
				    	other.spr_dir = 1
				    }else if(hsp < 0){
				    	other.spr_dir = -1
				    }
				    
				    sound_play(sound_effect)
		            var fx = spawn_hit_fx(x, y, hit_effect)
		            fx.pause = 8.58
		            
		            if(enemies != 1){
		            	destroyed = true
		            }
				    
				    other.damage += damage
				    other.old_vsp = other.vsp
		        	other.old_hsp = other.hsp
		        	other.hitstun = hitpause
				    other.got_hit_timer = hitpause
				}
			}
		}
	}
	if(lifetime > 2 && got_hit_timer <= 0 && !slow){
	    var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 1, round(x + hsp), round(y + vsp))
	    waterBomb_hitbox.player = current_owner
    }
}else{
	image_xscale = (1 * player_id.G_modifier)
	image_yscale = (1 * player_id.G_modifier)
	image_angle = 0
}

//State 2: Explode Normal

if (state == 2){
	hsp = 0
	vsp = 0
	sprite_index = sprite_get("waterBombExplode");
	if(image_index == 1){
		var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
		waterBomb_hitbox.player = current_owner
		sound_play( sound_get("sfx_explosion_water_large1"));
	}
	image_index += 0.25
	if(image_index == 7){
		instance_destroy();
		exit;
	}
}

//State 3: Explode Strong

if (state == 3){
	hsp = 0
	vsp = 0
	sprite_index = sprite_get("waterBombExplodeMulti");
	if(state_timer == 0){
		image_index = 0
	}
	image_index += 0.25
	if(image_index == 1 || image_index == 7){
		var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
		waterBomb_hitbox.player = current_owner
		sound_play( sound_get("sfx_explosion_water_large1"), false, noone, 0.8);
	}else if(image_index == 2 || image_index == 6 || image_index == 8){
		var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 4, x, y);
		waterBomb_hitbox.player = current_owner
		sound_play( sound_get("sfx_explosion_water_small"));
	}else if(image_index == 10 || image_index == 4){
		var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
		waterBomb_hitbox.player = current_owner
		sound_play( sound_get("sfx_explosion_water_large2"), false, noone, 0.8);
	}
	if(image_index == 16){
		instance_destroy();
		exit;
	}
}

//delete if out of bounds
if (y > room_height + 120 && vsp > 0){
    instance_destroy();
    exit;
}

if (x < -80 || x > room_width + 80){
    instance_destroy();
    exit;
}

//Make time progress
lifetime++;
state_timer++;
hitstun--;
got_hit_timer--