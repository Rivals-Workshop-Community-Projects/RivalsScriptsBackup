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
}else if(!(hsp == 0 && vsp == 0)){
	older_hsp = old_hsp
	older_vsp = old_vsp
	old_hsp = hsp
	old_vsp = vsp
}

if(type == 0){
	if (state == 1){
		//Regrab bomb
		with(player_id){
			if(attack == AT_NSPECIAL && window == 1 && window_timer < 8 && window_timer > 1){
				if(distance_to_object(other) < 25 && other.state == 1 && other.current_owner == player){
					regrab_damage = other.damage
					window = 2
					window_timer = 0
					sound_play(asset_get("sfx_frog_dspecial_hit"))
					instance_destroy(other);
					exit;
				}
			}
		}
		
		if(hsp > 1 || hsp < -1){
	    	image_angle += (hsp * -2)
		}else{
			image_angle += (abs(vsp) * spr_dir * -1)
		}
		
		if(image_yscale != size || image_xscale != size){
			if(hitstun <= 0){
				image_yscale = lerp(image_yscale, size, 0.35)
				image_xscale = size + (size - image_yscale)
			}
		}
		
		if(vsp < 12 && !slow){
	    	vsp += 0.24
		}else if(slow){
			if(current_owner == player_id.player){
				vsp *= 0.93
				hsp *= 0.93
			}
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
	    
	    if(hit_wall == true && free && !place_meeting(x, y + 16, asset_get("par_block"))){
	    	hsp = older_hsp * -1
	    	vsp = older_vsp
	    	sound_play(sound_get("sfx_waterhit_bomb_weak"))
	    	spawn_hit_fx(x, y, vfx_waterhit_small)
	    }else if(!free && vsp >= 0){
	    	if(!slow){
	    		if(bounces > 0){
	    			vsp = min(older_vsp * -0.75, -1)
	    			hsp = older_hsp
	    			y -= 4
	    			sound_play(sound_get("sfx_waterhit_bomb_weak"))
	    			spawn_hit_fx(x, y, vfx_waterhit_small)
	    			bounces -= 1
	    		}else{
			    	if(!strong){
				    	state = 2
				    	state_timer = 0
			    	}else{
			    		state = 3
			    		state_timer = 0
			    	}
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
					            other.image_yscale = other.size - (kb_scale / 2)
								other.image_xscale = other.size + (other.size - other.image_yscale)
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
						other.enemy_hitboxID = id
						
		        		with(other){
	        				temp_hitbox_angle = get_hitbox_angle(enemy_hitboxID)
		        		}
	        			var true_kb_angle = other.temp_hitbox_angle
	        			
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
					    
			            other.image_yscale = other.size - (kb_scale / 2)
						other.image_xscale = other.size + (other.size - other.image_yscale)
			            other.image_angle = true_kb_angle
						
			            exit;
					}else if(type == 2 && damage > 0 && kb_value > 0){
						other.enemy_hitboxID = id
						
						other.current_owner = player 
						
						if(player_id.url == 2853556003 || player_id.url == 2794570829){
							if(instance_exists(other.player_id.waterBomb)){
								if(attack == AT_NSPECIAL){
									if(!other.player_id.waterBomb.strong){
										other.player_id.waterBomb.state = 2
										other.player_id.waterBomb.state_timer = 0
									}else{
										other.player_id.waterBomb.state = 3
										other.player_id.waterBomb.state_timer = 0
									}
								}
							}
						}
						
		        		with(other){
	        				temp_hitbox_angle = get_hitbox_angle(enemy_hitboxID)
		        		}
	        			var true_kb_angle = other.temp_hitbox_angle
			        	
			        	var kb_distance = kb_value + damage * kb_scale;
			        	
						other.hsp = ( lengthdir_x( kb_distance, true_kb_angle))
					    other.vsp = ( lengthdir_y(kb_distance, true_kb_angle))
					    
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
		    waterBomb_hitbox.parent_article = self
		    waterBomb_hitbox.image_xscale *= size
			waterBomb_hitbox.image_yscale *= size
	    }
	}else{
		image_xscale = size
		image_yscale = size
		image_angle = 0
	}
	
	//State 2: Explode Normal
	
	if (state == 2){
		hsp = 0
		vsp = 0
		if(!(has_rune("F") || player_id.all_runes)){
			sprite_index = sprite_get("waterBombExplode");
		}else{
			sprite_index = sprite_get("waterBombExplode_cheese");
		}
		if(image_index == 1){
			var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
			waterBomb_hitbox.player = current_owner
			waterBomb_hitbox.parent_article = self
			waterBomb_hitbox.image_xscale *= size
			waterBomb_hitbox.image_yscale *= size
			if(has_rune("F") || player_id.all_runes){
				waterBomb_hitbox.hit_effect = player_id.vfx_cheesehit_medium
				waterBomb_hitbox.damage += 1
			}
			waterBomb_hitbox.damage = round(waterBomb_hitbox.damage * size)
			sound_play( sound_get("sfx_explosion_water_large1"));
		}
		image_index += 0.25
		if(image_index == 7){
			instance_destroy();
			exit;
		}
		
		//Runes
		if(splits > 0 && split_amount > 0 && state_timer == 0){
			for(i = 0; i < split_amount; i++){
				var split_waterBomb = instance_create(x, y,"obj_article2");
				split_waterBomb.strong = strong
				split_waterBomb.damage = damage
				split_waterBomb.spr_dir = 1
				split_waterBomb.current_owner = current_owner
				split_waterBomb.y -= 4
				split_waterBomb.splits = splits - 1
				split_waterBomb.got_hit_timer = 16
				if(size > 0.5){
					if(split_amount > 1){
						split_waterBomb.size = clamp(size / 1.25, 0.5, 2)
					}else{
						split_waterBomb.size = size - 0.25
					}
				}
				if(split_amount == 1){
					split_waterBomb.hsp = 0
				}else if(split_amount == 2){
					split_waterBomb.hsp = -2 + (4 * i)
				}else{
					if(i < 2){
						split_waterBomb.hsp = -2 + (4 * i)
					}else{
						split_waterBomb.hsp = -2 + random_func_2(i, 4, true)
					}
				}
				split_waterBomb.hsp += -1.5 + random_func_2(i, 3, false)
				
				if(has_rune("G") || player_id.all_runes){
					split_waterBomb.vsp = min(older_vsp * -0.9, -4)
					split_waterBomb.hsp *= 0.5
				}else{
					split_waterBomb.vsp = min(older_vsp * -0.75, -2.5)
				}
			}
			splits = 0
		}
	}
	
	//State 3: Explode Strong
	
	if (state == 3){
		hsp = 0
		vsp = 0
		if(!(has_rune("F") || player_id.all_runes)){
			sprite_index = sprite_get("waterBombExplodeMulti");
		}else{
			sprite_index = sprite_get("waterBombExplodeMulti_cheese");
		}
		if(state_timer == 0){
			image_index = 0
		}
		image_index += 0.25
		if(image_index == 1 || image_index == 7){
			var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
			waterBomb_hitbox.player = current_owner
			waterBomb_hitbox.parent_article = self
			waterBomb_hitbox.image_xscale *= size
			waterBomb_hitbox.image_yscale *= size
			if(has_rune("F") || player_id.all_runes){
				waterBomb_hitbox.hit_effect = player_id.vfx_cheesehit_medium
				waterBomb_hitbox.damage += 1
			}
			waterBomb_hitbox.damage = round(waterBomb_hitbox.damage * size)
			sound_play( sound_get("sfx_explosion_water_large1"), false, noone, 0.8);
		}else if(image_index == 2 || image_index == 6 || image_index == 8){
			var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 4, x, y);
			waterBomb_hitbox.player = current_owner
			waterBomb_hitbox.parent_article = self
			waterBomb_hitbox.image_xscale *= size
			waterBomb_hitbox.image_yscale *= size
			if(has_rune("F") || player_id.all_runes){
				waterBomb_hitbox.hit_effect = player_id.vfx_cheesehit_small
				waterBomb_hitbox.damage += 1
			}
			waterBomb_hitbox.damage = round(waterBomb_hitbox.damage * size)
			sound_play( sound_get("sfx_explosion_water_small"));
		}else if(image_index == 10 || image_index == 4){
			var waterBomb_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
			waterBomb_hitbox.player = current_owner
			waterBomb_hitbox.parent_article = self
			waterBomb_hitbox.image_xscale *= size
			waterBomb_hitbox.image_yscale *= size
			if(has_rune("F") || player_id.all_runes){
				waterBomb_hitbox.hit_effect = player_id.vfx_cheesehit_medium
				waterBomb_hitbox.damage += 1
			}
			waterBomb_hitbox.damage = round(waterBomb_hitbox.damage * size)
			sound_play( sound_get("sfx_explosion_water_large2"), false, noone, 0.8);
		}
		if(image_index == 16){
			instance_destroy();
			exit;
		}
		
		//Runes
		if(splits > 0 && split_amount > 0 && state_timer == 0){
			for(i = 0; i < split_amount; i++){
				var split_waterBomb = instance_create(x, y,"obj_article2");
				split_waterBomb.strong = strong
				split_waterBomb.damage = damage
				split_waterBomb.splits = splits
				split_waterBomb.spr_dir = 1
				split_waterBomb.current_owner = current_owner
				split_waterBomb.y -= 4
				split_waterBomb.splits = splits - 1
				split_waterBomb.got_hit_timer = 16
				if(size > 0.5){
					if(split_amount > 1){
						split_waterBomb.size = clamp(size / 1.25, 0.5, 2)
					}else{
						split_waterBomb.size = size - 0.25
					}
				}
				if(split_amount == 1){
					split_waterBomb.hsp = 0
				}else if(split_amount == 2){
					split_waterBomb.hsp = -2 + (4 * i)
				}else{
					if(i < 2){
						split_waterBomb.hsp = -2 + (4 * i)
					}else{
						split_waterBomb.hsp = -2 + random_func_2(i, 4, true)
					}
				}
				split_waterBomb.hsp += -1.5 + random_func_2(i, 3, false)
				
				if(has_rune("G") || player_id.all_runes){
					split_waterBomb.vsp = min(older_vsp * -0.9, -4)
					split_waterBomb.hsp *= 0.5
				}else{
					split_waterBomb.vsp = min(older_vsp * -0.75, -2.5)
				}
			}
			splits = 0
		}
	}
}else{
	sprite_index = sprite_get("empty");
	mask_index = sprite_get("sawblade_mask");
	collision_sprite = sprite_get("sawblade_mask");
	
	if(state == 0){ //Grounded
		if(big){
			if(strong){
				draw_index = sprite_get("sawblade_strong_ground")
			}else{
				draw_index = sprite_get("sawblade_big_ground")
			}
		}else{
			draw_index = sprite_get("sawblade_small")
		}
		
		if(hitstun <= 0){
			draw_angle = 0
			if(!slow){
				if(strong){
					hsp = lerp(hsp, player_id.sawblade_speed * 1.15 * spr_dir, 0.1)
				}else{
					hsp = lerp(hsp, player_id.sawblade_speed * spr_dir, 0.075)
				}
				vsp = 0
			}else{
				hsp = lerp(hsp, 0, 0.05)
			}
			if(!place_meeting(x + 30 *spr_dir, y + 10, asset_get("par_block")) && !place_meeting(x + 30 *spr_dir, y + 10, asset_get("par_jumpthrough")) ||
			place_meeting(x + 30 *spr_dir, y + 10, asset_get("par_jumpthrough")) && place_meeting(x + 30 *spr_dir, y - 5, asset_get("par_jumpthrough")) || 
			!place_meeting(x, y + 10, asset_get("par_block")) && !place_meeting(x, y + 10, asset_get("par_jumpthrough"))
			&& state_timer >= 2){
				state = 1
				state_timer = 0
				free = true
				
				if(!slow){
					hsp /= 2
					if(strong){
						vsp = player_id.sawblade_jumpspeed * 1.15
						strong = false
						var waterbomb_explosion = instance_create(x, y, "obj_article2")
						waterbomb_explosion.state = 3
						waterbomb_explosion.current_owner = current_owner
					}else{
						vsp = player_id.sawblade_jumpspeed
					}
					sound_play(asset_get("sfx_spin"))
					sound_play(asset_get("sfx_watergun_fire"))
					var splash_fx = spawn_hit_fx(x - 20 * spr_dir, y + 22, player_id.vfx_dattack_jumpfx)
					splash_fx.spr_dir = spr_dir
				}
			}else if(state_timer mod max(round(6 - (3 * abs(hsp / 10))), 1) == 0 && !slow && !strong){ 
				sound_play(asset_get("sfx_waterhit_weak"), false, noone, 0.75, clamp(abs(hsp) / 8, 0.75, 2))
				for(i = 0; i < 2; i++){
					spawn_hit_fx(x - 20 + random_func_2(i, 40, true), y - 20 + random_func_2(i + 10, 30, true), player_id.vfx_waterfx_small)
				}
				
				var multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
				multihit_hitbox.parent_article = self
				multihit_hitbox.player = current_owner
				multihit_hitbox.image_xscale *= size
				multihit_hitbox.image_yscale *= size
			}else if(state_timer mod max(round(4 - (2 * abs(hsp / 10))), 1) == 0 && !slow && strong){
				sound_play(asset_get("sfx_waterhit_weak"), false, noone, 0.75, clamp(abs(hsp) / 8, 0.75, 2))
				for(i = 0; i < 3; i++){
					spawn_hit_fx(x - 20 + random_func_2(i, 40, true), y - 20 + random_func_2(i + 10, 30, true), player_id.vfx_waterfx_small)
				}
				
				var multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
				multihit_hitbox.hitbox_timer = 1
				multihit_hitbox.player = current_owner
				multihit_hitbox.image_xscale *= size
				multihit_hitbox.image_yscale *= size
			}
			drawframe_index += abs(hsp / 4)
		}
	}else if(state == 1){ //Airborne
		if(big){
			if(strong){
				draw_index = sprite_get("sawblade_strong_air")
			}else{
				draw_index = sprite_get("sawblade_big_air")
			}
		}else{
			draw_index = sprite_get("sawblade_small")
		}
		
		if(hitstun <= 0){
			if(vsp < 12 && !slow){
		    	vsp += 0.24 * player_id.sawblade_gravity_multiplier
			}else if(slow){
				if(current_owner == player_id.player){
					vsp *= 0.93
					hsp *= 0.93
				}
			}
			
		    if(hsp > 0){
		    	spr_dir = 1
		    }else if(hsp < 0){
		    	spr_dir = -1
		    }
		    
		    if(hsp > 1 || hsp < -1){
		    	draw_angle += (hsp * -3)
			}else{
				draw_angle += (abs(vsp) * spr_dir * -3)
			}
			
			if((place_meeting(x, y + 10, asset_get("par_block")) || (place_meeting(x, y + 10, asset_get("par_jumpthrough")))) && !(place_meeting(x, y, asset_get("par_block")) || (place_meeting(x, y, asset_get("par_jumpthrough")))) && vsp > 0){
				if(big){
					state = 0
					state_timer = 0
					free = false
					y += 2
					vsp = 4
					sound_play(asset_get("sfx_ell_dspecial_hit"))
				}else{
					spawn_hit_fx(x, y, player_id.vfx_waterhit_small)
					sound_play(asset_get("sfx_waterwarp_start"), false, noone, 0.75, 1.1)
					instance_destroy();
					exit;
				}
			}else if(hsp == 0 && (place_meeting(x - 30, y - 10, asset_get("par_block")) && spr_dir == -1 || place_meeting(x + 30, y - 10, asset_get("par_block")) && spr_dir == 1)){
				state = 2
				state_timer = 0
				sound_play(asset_get("sfx_ell_dspecial_hit"))
			}else if(state_timer mod 3 == 0 && !slow && !strong){
				for(i = 0; i < 2; i++){
					spawn_hit_fx(x - 20 - hsp + random_func_2(i, 40, true), y - 20 + vsp + random_func_2(i + 10, 40, true), player_id.vfx_waterfx_small)
				}
				var multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
				multihit_hitbox.player = current_owner
				multihit_hitbox.image_xscale *= size
				multihit_hitbox.image_yscale *= size
			}else if(state_timer mod 2 == 0 && !slow && strong){
				for(i = 0; i < 3; i++){
					spawn_hit_fx(x - 20 - hsp + random_func_2(i, 40, true), y - 20 + vsp + random_func_2(i + 10, 40, true), player_id.vfx_waterfx_small)
				}
				var multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
				multihit_hitbox.hitbox_timer = 1
				multihit_hitbox.player = current_owner
				multihit_hitbox.image_xscale *= size
				multihit_hitbox.image_yscale *= size
			}
		}
	}else if(state == 2){ //Wallclimb
		if(place_meeting(x - 30, y - 30, asset_get("par_block")) && spr_dir == -1 || place_meeting(x + 30, y - 30, asset_get("par_block")) && spr_dir == 1){
			draw_angle = 90 * spr_dir
			hsp = 0
			if(strong){
				vsp = lerp(vsp, player_id.sawblade_speed * -1.15, 0.05)
			}else{
				vsp = lerp(vsp, player_id.sawblade_speed * -1, 0.05)
			}
			drawframe_index += abs(vsp / 4)
		}else{
			state = 1
			state_timer = 0
			y -= 30
			hsp = 3 * spr_dir
		}
		if(big){
			if(strong){
				draw_index = sprite_get("sawblade_strong_ground")
			}else{
				draw_index = sprite_get("sawblade_big_ground")
			}
		}else{
			draw_index = sprite_get("sawblade_small")
		}
		
		if(state_timer mod max(round(6 - (3 * abs(hsp / 10))), 1) == 0 && !slow && !strong){
			sound_play(asset_get("sfx_waterhit_weak"), false, noone, 0.75, clamp(abs(vsp) / 6, 0.75, 2))
			for(i = 0; i < 2; i++){
				spawn_hit_fx(x - 20 + random_func_2(i, 40, true), y - 20 + random_func_2(i + 10, 20, true), player_id.vfx_waterfx_small)
			}
			
			var multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
			multihit_hitbox.player = current_owner
			multihit_hitbox.image_xscale *= size
			multihit_hitbox.parent_article = self
				multihit_hitbox.image_yscale *= size
		}else if(state_timer mod max(round(4 - (2 * abs(vsp / 10))), 1) == 0 && !slow && strong){
			sound_play(asset_get("sfx_waterhit_weak"), false, noone, 0.75, clamp(abs(vsp) / 6, 0.75, 2))
			for(i = 0; i < 3; i++){
				spawn_hit_fx(x - 20 + random_func_2(i, 40, true), y - 20 + random_func_2(i + 10, 20, true), player_id.vfx_waterfx_small)
			}
			
			var multihit_hitbox = create_hitbox(AT_FSPECIAL, 3, x, y)
			multihit_hitbox.hitbox_timer = 1
			multihit_hitbox.player = current_owner
			multihit_hitbox.parent_article = self
			multihit_hitbox.image_xscale *= size
				multihit_hitbox.image_yscale *= size
		}
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
if(hitstun <= 0){
	state_timer++;
}
lifetime++;
hitstun--;
got_hit_timer--