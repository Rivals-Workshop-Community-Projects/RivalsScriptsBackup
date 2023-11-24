//hitbox_update
if(attack == AT_FSPECIAL){
	if(!Pocketed){
		if(instance_exists(target) && player == orig_player && (!fspec_target_player || fspec_target_player && target.state != PS_DEAD && target.state != PS_RESPAWN)){
			var distance3 = point_distance(x, y, target.x, target.y - 30);
			var angle3 = point_direction(x, y, target.x, target.y - 30);
			hsp += lengthdir_x(0.5, angle3);
			vsp += lengthdir_y(0.5, angle3);
		}else{
			target = noone;
		}
		if(hsp > 0){spr_dir = 1;}else if(hsp < 0)spr_dir = -1;
		
		if(!was_parried && (kb_value == 6 || kb_value = 4)){
			kb_value = 6;kb_scale = .6;
			if(vsp > 5){ //spike
				kb_value = 4;kb_scale = 0.4;
				vsp*=1.01;
			}
		}
		kb_angle = (vsp<5 && abs(hsp)>.5)?45:(vsp<2)?90:(abs(hsp)>2)?315:270;
		
		angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
		
		//if(abs(hsp) > 5 || abs(vsp) > 5){
			var particletiming = round(6-((abs(hsp)+abs(vsp))/4));
			particletiming = max(2,particletiming);
			if(hitbox_timer % particletiming == 0){
		        if(abs(hsp) > 7 || abs(vsp) > 7){
		        	var trail = spawn_hit_fx(x, y, player_id.fx_fspec_projectile_trail);trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
		        }else{
		        	var trail = spawn_hit_fx(x, y, player_id.fx_fspec_projectile_trail2);trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
		        }
		    }
		//}
	}
}else if (attack == AT_USPECIAL){
	if(hbox_num == 1){
        /*if(vsp < -6 || vsp < -1 && abs(hsp) < 1){
        	kb_angle = 90;
        }else if(vsp > 6 || vsp > 1 && abs(hsp) < 1){
        	kb_angle = 300;
        }else{
        	kb_angle = 55;
        }*/
        if(hitbox_timer % 10 == 0 && image_index < 3){
	        image_index += 1;
	    }
	    depth = 4;
        if(get_gameplay_time() % 5 == 0){
	        var eff = spawn_hit_fx(x-50+random_func(0, 100, true),y-50+random_func(1, 100, true),player_id.fx_dust_dark);eff.depth = depth-1;
	    }if(get_gameplay_time() % 4 == 0){
	        var eff = spawn_hit_fx(x-50+random_func(2, 100, true),y-50+random_func(3, 100, true),player_id.fx_fire);eff.depth = depth-1;
	    }if(get_gameplay_time() % 3 == 0){
	        var eff = spawn_hit_fx(x-50+random_func(4, 100, true),y-50+random_func(5, 100, true),player_id.fx_lightning);eff.depth = depth-1;
	        eff = spawn_hit_fx(x-50+random_func(6, 100, true),y-50+random_func(7, 100, true),player_id.fx_lightning_fast);eff.depth = depth-1;
	    }
        
	    if(hsp > 0){
			spr_dir = 1;
	    }else if(hsp < 0){
	    	spr_dir = -1;
		}
		
	    if(x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000 || hitbox_timer >= length){
	        var explode = spawn_hit_fx(x,y,player_id.fx_explosion);explode.draw_angle = random_func(0, 360, true);
	        //var lightbeams = spawn_hit_fx(x,y,player_id.fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(0, 360, true);
	        //lightbeams = spawn_hit_fx(x,y,player_id.fx_lightbeams_small);lightbeams.draw_angle = random_func(10, 720, true);
	        sound_play(sfx_explode,false,noone,1);shake_camera(10, 5);

	        var explosionhitbox = create_hitbox(AT_USPECIAL, 2, round(x), round(y));
	        explosionhitbox.player = player;
	        
	        if(PocketBuff > 0){
				explosionhitbox.damage = ceil(explosionhitbox.damage*(power(1.5,PocketBuff)));explosionhitbox.kb_scale = explosionhitbox.kb_scale*(power(1.25,PocketBuff));
				explosionhitbox.damage = min(explosionhitbox.damage,999);explosionhitbox.kb_scale = min(explosionhitbox.kb_scale,2);
			}
		    destroyed = true;
		}
		//hitbox_timer = min(hitbox_timer,10);
	}
}else if (attack == AT_DSPECIAL){
	if(hbox_num == 3){
        if(!Pocketed){
			if(hsp > 0){spr_dir = 1;}else if(hsp < 0)spr_dir = -1;
			
			if(!was_parried && (kb_value == 5 || kb_value = 3)){
				kb_value = 5;kb_scale = .4;
				if(vsp > 5){ //spike
					kb_value = 3;kb_scale = 0.3;
					vsp*=1.01;
				}
			}
			kb_angle = (vsp<5 && abs(hsp)>.5)?45:(vsp<2)?90:(abs(hsp)>2)?315:270;
			
			angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
			
			//if(abs(hsp) > 5 || abs(vsp) > 5){
				var particletiming = round(6-((abs(hsp)+abs(vsp))/4));
				particletiming = max(2,particletiming);
				if(hitbox_timer % particletiming == 0){
			        if(abs(hsp) > 7 || abs(vsp) > 7){
			        	var trail = spawn_hit_fx(x, y, player_id.fx_fspec_projectile_trail);trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
			        }else{
			        	var trail = spawn_hit_fx(x, y, player_id.fx_fspec_projectile_trail2);trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
			        }
			    }
			//}
		}
	}
}else if (attack == AT_UAIR){
	if(hbox_num == 7){
        if(!Pocketed){
			if(hsp > 0){spr_dir = 1;}else if(hsp < 0)spr_dir = -1;
			
			angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
			
			//if(abs(hsp) > 5 || abs(vsp) > 5){
				var particletiming = round(6-((abs(hsp)+abs(vsp))/4));
				particletiming = max(2,particletiming);
				if(hitbox_timer % particletiming == 0){
			        if(abs(hsp) > 7 || abs(vsp) > 7){
			        	var trail = spawn_hit_fx(x, y, player_id.fx_fspec_projectile_trail);trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
			        }else{
			        	var trail = spawn_hit_fx(x, y, player_id.fx_fspec_projectile_trail2);trail.spr_dir = spr_dir;trail.draw_angle = proj_angle;
			        }
			    }
			//}
		}
	}
}else if(attack == AT_DATTACK){
    if(hbox_num == 10){
    	if(player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR
    	|| (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) &&
    	(player_id.attack != AT_DATTACK || player_id.attack == AT_DATTACK && (/*player_id.window == 4 && player_id.window_timer >= 8 ||*/ player_id.window >= 5))){
    		destroyed = true;
    	}else{
			if (player_id.window == 2){
				x = player_id.x+55*player_id.spr_dir;y = player_id.y-65;
			}else if (player_id.window == 3){
				x = player_id.x+55*player_id.spr_dir;y = player_id.y-55;
			}else if (player_id.window == 4){
				x = player_id.x+55*player_id.spr_dir;y = player_id.y-45;
			}
	    	with(asset_get("pHitBox")){
				if(place_meeting(x,y,other) && other.player_id.state != PS_HITSTUN && other.player_id.state != PS_HITSTUN_LAND){
			    	if(damage > 0 && kb_value > 0 && hit_priority > 0 && player != other.player){
			    		if(other.player_id.soft_armor <= 0){
					    	var eff = spawn_hit_fx(other.x, other.y, hit_effect);eff.pause = 8.58;
					    	sound_play(sound_effect);
					    	var dmg = round(damage*(1+(player_id.strong_charge/100)));
					    	other.player_id.hitpause = true;other.player_id.hitstop = hitpause;
		                	other.player_id.old_hsp = other.player_id.hsp;other.player_id.old_vsp = other.player_id.vsp;
		                	if(other.player_id.old_hsp*other.player_id.spr_dir < 0){
		                		other.player_id.old_hsp -= (dmg/5)*other.player_id.spr_dir;
		                	}else{
		                		if(dmg > 2 && dmg < 6){
		                			other.player_id.old_hsp *= 0.5;
		                		}else if(dmg >= 6){
		                			other.player_id.old_hsp *= 0.25;other.player_id.dattack_hit = true;
		                			other.player_id.can_hit[player] = false;
		                		}
			                	other.player_id.old_hsp -= (dmg/1.25)*other.player_id.spr_dir;
			            	}
			            	if(other.player_id.old_hsp*other.player_id.spr_dir < -15){
			            		other.player_id.old_hsp = -15*other.player_id.spr_dir;
			            	}
			            	with(other.player_id){
			            		sound_play(sound_get("mech sfx"));
					    	}
				    	}
			        	if(type == 2){
				        	if(!plasma_safe || !transcendent){
					        	destroyed = true;
					    	}
					    	with(other.player_id){
					        	soft_armor = 5;armor_timer = 10;
					    	}
				    	}else{
				    		if(other.player_id.soft_armor <= 0){
				    			var dmg = round(damage*(1+(player_id.strong_charge/100)));
		    	        		player_id.hitpause = true;player_id.hitstop = hitpause;
		                		player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
				            	if(player_id.free){
			                		player_id.old_hsp = (dmg/6)*other.player_id.spr_dir;
			                	}else{
				                	player_id.old_hsp = (dmg/1.5)*other.player_id.spr_dir;
				            	}
				            	if(other.player_id.spr_dir == 1 && player_id.x > other.player_id.x || other.player_id.spr_dir == -1 && player_id.x < other.player_id.x){
						    		with(other.player_id){
							    		soft_armor = 5;armor_timer = 10;
						    		}
				            	}else{
				            		with(other.player_id){
							    		soft_armor = 5;armor_timer = 10;
						    		}
				            	}
				    		}
				    	}
			    	}
				}
			}
    	}
    }
}


//deflector stuff
if(attack == AT_FTILT && hbox_num >= 4){
    
    if(attack == AT_FTILT){x = player_id.x+115*player_id.spr_dir;y = player_id.y-35;}
    
    if(player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR || player_id.attack != attack || player_id.attack == attack && player_id.window_timer >= 5)destroyed = true;
    
    //NEW REFLECT CODE
    reflect_target = noone;reflect_target2 = noone;
	reflect_target3 = noone;reflect_target4 = noone;
	reflect_target5 = noone;
	reflect_type = 0;
    
    //if(!instance_exists(reflect_target)){
    	with(pHitBox){
    		if(place_meeting(x,y,other) && type == 2 && other.reflect_target != self){
	    		if(can_hit[other.player] && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		with(other){add_reflect_target(other);}
		    	}
	    	}
    	}
    if(!instance_exists(reflect_target)){
    	with(obj_article1){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable /*|| "UnReflectable" not in self*/)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article2){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable /*|| "UnReflectable" not in self*/)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article3){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable /*|| "UnReflectable" not in self*/)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article_solid){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable /*|| "UnReflectable" not in self*/)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article_platform){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable /*|| "UnReflectable" not in self*/)){
	    		other.reflect_target = self;
	    	}
    	}
    }
    if(instance_exists(reflect_target) /*&& (attack == AT_DSPECIAL && reflect_target.player_id )*/){
    	reflect_projectile(reflect_target);
    }if(instance_exists(reflect_target2)){
		reflect_projectile(reflect_target2);
	}if(instance_exists(reflect_target3)){
		reflect_projectile(reflect_target3);
	}if(instance_exists(reflect_target4)){
		reflect_projectile(reflect_target4);
	}if(instance_exists(reflect_target5)){
		reflect_projectile(reflect_target5);
	}
}

draw_xscale = spr_dir;

#define add_reflect_target(target)
	if(!instance_exists(reflect_target)){
		reflect_target = target;
	}else if(!instance_exists(reflect_target2) && target != reflect_target){
		reflect_target2 = target;
	}else if(!instance_exists(reflect_target3) && target != reflect_target && target != reflect_target2){
		reflect_target3 = target;
	}else if(!instance_exists(reflect_target4) && target != reflect_target && target != reflect_target2 && target != reflect_target3){
		reflect_target4 = target;
	}else if(!instance_exists(reflect_target5) && target != reflect_target && target != reflect_target2 && target != reflect_target3 && target != reflect_target4){
		reflect_target5 = target;
	}

#define reflect_projectile(target)
	if(instance_exists(target) && (player_id == target.player_id && (target.hsp > 0 && target.x < x || target.hsp < 0 && target.x > x || target.vsp > 0 && target.y < y || target.vsp < 0 && target.y > y) || player_id != target.player_id)){
		if(target == reflect_target){
			sound_play(sound_get("bumper"),false,noone,1.25);
		}
    	with(target){
    		if(other.attack == AT_FTILT){
    			player = other.player;
    		//if(abs(hsp) > 0.25){ //checks for minimum speed (unused lol!)
        		spr_dir = other.spr_dir; //forces it to go where eggman is facing
        		
    			if(other.attack == AT_FTILT){hsp = abs(hsp*1.1)*spr_dir;}
    			
    			if(abs(hsp) < 1){ ///gives minimum speed
        			hsp = (10+(other.player_id.strong_charge/100)+abs(vsp*0.5))*spr_dir;
        		}
    			vsp *= 0.5;
    		//}
    		}
    		if("was_parried" in self){
		    	was_parried = true;
			}if("hitbox_timer" in self){
		    	hitbox_timer = 0;
			}/*if(buff){
				if(!other.player_id.runeD){
					if("damage" in self){
				    	damage *= 1.5;
					}if("kb_scale" in self){
				    	kb_scale *= 1.25;
					}
				}else{
					if("damage" in self){
				    	damage *= 2;
					}if("kb_scale" in self){
				    	kb_scale *= 1.5;
					}
				}
			}*/if("hit_priority" in self && hit_priority <= 0){
				hit_priority = 1;
			}
			
			with(oPlayer){
				if(get_player_team(player) == get_player_team(other.player)){
			    	other.can_hit[player] = false;
				}
			}
    	}
    	spawn_hit_fx(target.x, target.y, 302);
    }