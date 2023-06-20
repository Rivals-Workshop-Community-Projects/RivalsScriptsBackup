//article1_update

if(player_id.state == PS_DEAD || player_id.state == PS_RESPAWN){
	if(hp > 0)hp = 0;
	state = 4;
}/*if(player_id.state == PS_HITSTUN && !runeL && armor < 999){
	hitstun = 10;
}*/

timer += 1;
timer2 += 1;

if(timer >= 600){
	if(player_id.the_eggpawn == self){
		player_id.the_eggpawn = noone;
	}if(player_id.the_eggpawn2 == self){
		player_id.the_eggpawn2 = noone;
	}
}

if(hitstop <= 0 && (state <= 2 || state == 4) && !Pocketed){
	if(hp <= 0){
    	state = 4;
	}
    if(robot == 0){ //egg pawn
    	if(hp > 0 && hitstun <= 0){
    		if(!attacking){
		    	if(anim == 0){ //idle
			       	if(!free){
			        	if(timer2 % 6 == 0){
				        	image_index += 1;
				        }if(image_index > 3){
				        	image_index = 0;
				       	}
			        	hsp *= 0.8;
			        }else{
			        	image_index = 21;
			        }
			        idletimer -= 1;
			        if(idletimer <= 0 || instance_exists(eggpawn_target) && (free || !free && (position_meeting(x+50*spr_dir,y+50,asset_get("par_block")) || position_meeting(x-20*spr_dir,y+50,asset_get("par_jumpthrough"))))){
			        	anim = 1;image_index = 6;idletimer = 180;
			        }
		    	}else if(anim == 1){ //walk
		    		if(!free){
				    	if(timer2 % 10 == 0 && !instance_exists(eggpawn_target) || timer2 % 5 == 0 && instance_exists(eggpawn_target)){
				        	image_index += 1;
				        }if(image_index > 11 || image_index < 6){
				        	image_index = 6;
				        }
		    		}else{
			        	image_index = 21;
			        }
			        if(!instance_exists(eggpawn_target)){
			    		if(abs(hsp) < 1 || hsp*spr_dir < 0){hsp += 0.2*spr_dir;}else{hsp *= 0.8;}
			    	}else{
			    		if(abs(hsp) < 2 || hsp*spr_dir < 0){hsp += 0.35*spr_dir;}else{hsp *= 0.8;}
			    		if (!free && !position_meeting(x+50*spr_dir,y+50,asset_get("par_block")) && !position_meeting(x-20*spr_dir,y+50,asset_get("par_jumpthrough"))){ //stop at ledge
							anim = 0;image_index = 0;
						}
			    	}
			    	if (((!position_meeting(x+50*spr_dir,y+50,asset_get("par_block")) && !position_meeting(x+50*spr_dir,y+50,asset_get("par_jumpthrough")) && !position_meeting(x,y+40,asset_get("par_jumpthrough"))) || position_meeting(x+50*spr_dir,y-20,asset_get("par_block"))) && !instance_exists(eggpawn_target)
			    	|| instance_exists(eggpawn_target) && (eggpawn_target.x < x && spr_dir == 1 || eggpawn_target.x > x && spr_dir == -1)){
						if(!instance_exists(eggpawn_target))hsp = -hsp;
						spr_dir = -spr_dir;
					}idletimer -= 1;
			        if(idletimer <= 0 && !instance_exists(eggpawn_target)){
			        	anim = 0;image_index = 0;idletimer = 45+random_func(0,45,true);
			        }
		    	}
		    	if(!instance_exists(eggpawn_target)){
		    		
		    	}else{
		    		attack_cooldown -= 1;
		    		var dist = point_distance(x,y,eggpawn_target.x,eggpawn_target.y);
		    		if(dist <= 85 && attack_cooldown <= 0 && !attacking){
			    		attacking = true;anim = 0;image_index = 12;timer2 = 0;
			    		hsp *= 0.5;
			    	}
		    	}
    		}else{ //attacking
    			hsp *= 0.75;
    			if(anim == 0){
    				if(timer2 % 6 == 0){
			        	image_index += 1;
			        }if(image_index >= 15){
			        	anim = 1;sound_play(asset_get("sfx_swipe_medium2"));
			        	var hitbox = create_hitbox(AT_DSPECIAL, 1, x+50*spr_dir, y-5);hitbox.spr_dir = spr_dir;hitbox.egg_pawn = self;hitbox.player = original_player;
			        }
    			}else if(anim == 1){
    				if(timer2 % 4 == 0 && image_index < 17 || timer2 % 7 == 0 && image_index >= 17){
			        	image_index += 1;
			        	if(image_index >= 21){
			        		anim = 0;attacking = false;image_index = 0;attack_cooldown = 60;timer2 = 0;
			        	}
			        }
    			}
    		}
    	}else{
    		if(free){
	    		image_index = 5;
	    	}else{
	    		image_index = 4;hsp *= 0.8;
	    	}if(hitstop <= 0){
	    		hitstun -= 1;
	    		if(hitstun == 0 && hp > 0){
	    			anim = 0;attacking = false;image_index = 0;timer2 = 0;
	    		}
	    	}
    	}if(free){
    		vsp += .5;
    	}if(anim != 4){
			vsp = min(vsp, 10);
    	}//print(image_index);
    }else if(robot == 1){ //egg flapper
    	if(hp > 0 && hitstun <= 0){
    		if(x > room_width-200){
    			if(hsp > -1)hsp -= 0.25;
    		}else if(x < 200){
    			if(hsp < 1)hsp += 0.25;
    		}
    		if(y >= room_height-200){
    			if(vsp > -1)vsp -= 0.25;
    		}else if(y <= 250){
    			if(vsp < 1)vsp += 0.25;
    		}
	        if(!attacking){
	        	if(timer2 % 4 == 0){
		        	image_index += 1;
		        	if(image_index > 3){
		        		image_index = 0;
		        	}
		        }
		        if(!instance_exists(eggpawn_target)){
		    		
		    	}else{
		    		attack_cooldown -= 1;
		    		if(attack_cooldown <= 0){
			    		attacking = true;anim = 0;image_index = 5;timer2 = 0;
			    		sound_play(sfx_shoot,false,noone,0.75);
				        var hitbox = create_hitbox(AT_DSPECIAL, 3, x+10*spr_dir, y+25);hitbox.spr_dir = spr_dir;hitbox.player = original_player;
				        hitbox.egg_pawn = self;hitbox.target = eggpawn_target;
			    	}
			    	if (eggpawn_target.x < x && spr_dir == 1 || eggpawn_target.x > x && spr_dir == -1){
						spr_dir = -spr_dir;
					}
		    	}
	        }else{
	        	if(timer2 % 4 == 0){
		        	image_index += 1;
		        	if(image_index >= 9){
		        		anim = 0;attacking = false;image_index = 0;attack_cooldown = 130;timer2 = 0;
		        	}
		        }
	        }
	    	hsp *= 0.95;
	    	if(y < room_height-200 && y > 250)vsp = ease_sineInOut(-1, 1, timer, 60);
    	}else{
    		image_index = 4;
	    	if(hitstop <= 0){
	    		hitstun -= 1;
	    		if(hitstun == 0 && hp > 0){
	    			anim = 0;attacking = false;image_index = 0;timer2 = 0;
	    		}
	    	}
	    	hsp *= 0.975;vsp *= 0.975;
    	}
    }
    
    if(!instance_exists(eggpawn_target)){ //look for targets
    	seen = 0;
		with(oPlayer){
			var dist = point_distance(x,y,other.x,other.y);
			if(get_player_team(player) != get_player_team(other.original_player) && (x > other.x && other.spr_dir == 1 || x < other.x && other.spr_dir == -1
			|| other.robot == 0 && dist < 150 || other.robot == 1 && dist < 250)){
				var y_dif = abs(y-other.y);
				if(other.robot == 0 && y_dif <= 75 || other.robot == 1 && y_dif <= 200){
					if(other.robot == 0 && dist < 250 || other.robot == 1 && dist < 300){
						if(state != PS_DEAD && state != PS_RESPAWN){
							other.eggpawn_target = self;other.eggpawn_target_follow = 120;other.eggpawn_target_lose = 120;
							other.seen = 90;other.seen_x = 2.0;other.seen_y = 0;
							with(other)sound_play(sfx_seen,false,noone,0.75);
						}
					}
				}
			}
		}
	}else{
		if(hitstun <= 0){
			eggpawn_target_follow -= 1;
		}
		seen -= 1;
		if(seen >= 86){
			seen_x -= 0.25;seen_y += 0.25;
		}else if(seen <= 4){
			seen_x += 0.25;seen_y -= 0.25;
		}
		if(eggpawn_target_follow <= 0){
			with(eggpawn_target){
				var dist = point_distance(x,y,other.x,other.y);
				var y_dif = abs(y-other.y);
				if(other.robot == 0 && (x < other.x && other.spr_dir == 1 || x > other.x && other.spr_dir == -1) || (other.robot == 0 && dist > 275 || other.robot == 1 && dist > 375)
				|| (other.robot == 0 && (y_dif >= 125 && y < other.y || y_dif >= 250 && y > other.y))
				|| state == PS_DEAD || state == PS_RESPAWN){
					if(other.eggpawn_target_lose > 0 && state != PS_DEAD && state != PS_RESPAWN){
						other.eggpawn_target_lose -= 1;
					}else{
						other.eggpawn_target = noone;other.idletimer = 0;other.attack_cooldown = 120;
					}
				}
			}
		}
	}
    
    if(robot >= 2 && (!attacking || attacking && robot != 4) &&
    (hsp > 8 || hsp < -8 || vsp > 8 || vsp < -8)){ //big monsters
    	if(!instance_exists(thehitbox_flying)){
			thehitbox_flying = create_hitbox(AT_DSTRONG, 4, round(x), round(y-30));
		}
		if(instance_exists(thehitbox_flying)){
			thehitbox_flying.player = current_player2;thehitbox_flying.spr_dir = spr_dir;
	    	thehitbox_flying.x = x;thehitbox_flying.y = y-30;thehitbox_flying.can_hit[current_player] = false;
	    	if(hsp > 0){
	    		thehitbox_flying.spr_dir = 1;
	    	}else{
	    		thehitbox_flying.spr_dir = -1;
	    	}
			if(vsp < 8){
				thehitbox_flying.kb_angle = 361;
		        thehitbox_flying.kb_value = 7;thehitbox_flying.kb_scale = 0.7;
			}else{
				thehitbox_flying.kb_angle = 270;
		        thehitbox_flying.kb_value = 5;thehitbox_flying.kb_scale = 0.5;
			}
		}
    }else{
    	if(instance_exists(thehitbox_flying)){
	        instance_destroy(thehitbox_flying);
	    }
	    if(hitstop <= 0){
	    	//current_player2 = current_player;
	    }
    }
}else{
	if(instance_exists(thehitbox)){
        instance_destroy(thehitbox);
    }if(instance_exists(thehitbox_flying)){
		instance_destroy(thehitbox_flying);
	}
	if(hitstop <= 0){
		//current_player2 = current_player;
	}
}

if(attacking){
	
}else{
	armor = armor_original;armor_projectiles = armor_original_projectiles;
}

landingcooldown -= 1;

if(state == 0){
    
}else if(state == 1){ //idle
	
}else if(state == 2){ //has been hit or thrown
	hp -= 1;state = 1;
}else if(state == 3){ //grabbed
	hitstun = 10;
    if(instance_exists(thehitbox)){
        instance_destroy(thehitbox);
    }if(instance_exists(thehitbox_flying)){
		instance_destroy(thehitbox_flying);
	}
    if(robot == 0){ //egg pawn
    	if(free){
	    	image_index = 5;
	    }else{
	    	image_index = 4;
	    }
    }
}else if(state == 4){ //commit kill
	if(hitstop <= 0)hp -= 1;
}

if(state != 3 && !Pocketed){
    playerurl = real(player_id.url);
    with(asset_get("pHitBox")){
        if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox && self != other.thehitbox && self != other.thehitbox_flying && get_player_team(player) != get_player_team(other.original_player)){
            if(place_meeting(x,y,other)){
            	if(damage > 0 && kb_value > 0 && hit_priority > 0 && throws_rock != 2){
            		if(get_player_team(orig_player) != get_player_team(other.original_player)){
            			if(other.eggpawn_target != player_id){
            				other.seen = 90;other.seen_x = 2.0;other.seen_y = 0;
            				with(other)sound_play(sfx_seen,false,noone,0.75);
            			}
	            		other.eggpawn_target = player_id;
	            		other.eggpawn_target_follow = 120;
	            		if(other.robot == 1)other.attack_cooldown += 10;
	            	}
        			//if(player != other.player){
            	        other.hp -= damage;other.hp = max(other.hp, 0);
            	        other.current_player2 = player;
            	        if(other.hp <= 0){
            	        	other.hp = 0;
            	        	other.state = 4;
            	        }
        			//}
	                other.hitlockout = 6;other.hitlockout2 = 10;
	        		if(type <= 1){
	        			other.hitpausehit = hitpause;
	        			if(other.hitpausehit <= 0){
	        				other.hitpausehit = 5;
	        			}
	        			other.hitstop = other.hitpausehit;
	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
            			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
	        		}
	        		if(throws_rock == 0){
	        			spawn_hit_fx(x, y, hit_effect);
	        		}
					sound_play(sound_effect);
	                other.lasthitbox = id;
	                if(type <= 1 && kb_value+(kb_scale*6) > other.armor || type == 2 && kb_value+(kb_scale*6) > other.armor_projectiles){
	                	//if (!other.runeL) {
	                		other.hitstun = 15+damage//)*hitstun_factor;
	                	//}
	                }
	                if(type <= 1 && kb_value+(kb_scale*6) > other.armor || type == 2 && kb_value+(kb_scale*6) > other.armor_projectiles || other.hp <= 0){
            			knockback_angle = kb_angle;
    	        		if(knockback_angle == 361){
    	        			knockback_angle = 45;
    	        		}other.knockback_power = kb_value;
    	        		var kbmod = .5;
    		            other.hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*14)*kbmod)*spr_dir;
    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
    		                other.vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*14)*kbmod);
    		            }else{
    		                other.vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*14)*kbmod);
    		            }
    	                if(instance_exists(other.thehitbox)){
                            instance_destroy(other.thehitbox);
                        }other.hitboxtimer = 30;
        			}
            	    //}
            	}
            }
        }
    }
    if(hitstop <= 0){
    	hitlockout -= 1;
    	if (instance_exists(lasthitbox)) {
    		hitlockout2 -= 1;
    	}else{
    		hitlockout2 = 0;
    	}
    }
}

if(x > room_width+100 || x < -100 || y >= room_height+100 || y <= -200 || destroymonster || hp <= -30){
    if(instance_exists(thehitbox)){
        instance_destroy(thehitbox);
    }if(instance_exists(thehitbox_flying)){
		instance_destroy(thehitbox_flying);
	}
	var explode = spawn_hit_fx(x,y-10,player_id.fx_explosion);explode.draw_angle = random_func(0, 360, true);
	var hitbox = create_hitbox(AT_DSPECIAL, 2, x, y-10);hitbox.spr_dir = spr_dir;hitbox.player = current_player2;
    sound_play(sfx_explode);shake_camera(5, 5);
    
    if(hp <= -30){
	    if(eggpawn_num == 0){
			player_id.eggpawn_cooldown += 300;
			if(robot == 1)player_id.eggpawn_cooldown += 60;
		}else if(eggpawn_num == 1){
			player_id.eggpawn_cooldown2 += 300;
			if(robot == 1)player_id.eggpawn_cooldown2 += 60;
		}
		player_id.eggpawn_destroyed = true;
    }
    
    instance_destroy();
    exit;
}