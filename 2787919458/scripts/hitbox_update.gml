if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
	    if(instance_exists(theplanet)){
	    	theplanet.x = x; theplanet.y = y;
	    with(asset_get("pHitBox")){
	    	if(place_meeting(x,y,other.theplanet)){
	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox /*&& player != other.current_player*/ && other != self){
	            	if("sanic_uspec_count" in player_id && attack != AT_BAIR || "sanic_uspec_count" not in player_id){
		            	if(damage > 0 && kb_value > 0 && hit_priority > 0){
		            		other.current_player = player;other.player = player;
		    	                other.hitplayertimer -= 10;
		    	                other.hitlockout = 6;other.hitlockout2 = 10;
		    	        		if(type <= 1 || "sanic_uspec_count" in player_id && attack == AT_DSPECIAL && hbox_num == 1){
		    	        			other.hitpausehit = hitpause;other.in_hitpause = true;
		    	        			if(other.hitpausehit <= 0){
		    	        				other.hitpausehit = 5;
		    	        			}
		    	        			other.hitstop = other.hitpausehit;
		    	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
		                			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
		    	        		}
		            			knockback_angle = kb_angle;
		    	        		other.knockback_power = kb_value;
		    		            other.hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5)*spr_dir;
		    		            if(other.hsp > 0){
		    		            	other.spr_dir = 1;
		    		            }else if(other.hsp < 0){
		    		            	other.spr_dir = -1;
		    		            }
		    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
		    		                other.vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5);
		    		            }else{
		    		                other.vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5);
		    		            }
		    		            if player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player){other.dorito_hp -= 1;sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))}
		    	                spawn_hit_fx(other.x, other.y, hit_effect);
		    					sound_play(sound_effect);
		    	                other.lasthitbox = id;other.hitbox_timer = 0;
		    	                other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
		            	}
		            }
	            }
	        }
	    }
	    }
	    if(hitstop <= 0){
	    	in_hitpause = false;hitlockout -= 1;
	    	if (instance_exists(lasthitbox)) {
	    		hitlockout2 -= 1;
	    	}else{
	    		hitlockout2 = 0;
	    	}
	    }else{
	    	hitstop -= 1;
	    }
		var refresh_time = 15;
		if (hitbox_timer % refresh_time == 0) for (var i = 0; i < 20; i++){
			can_hit[i] = 1;
		}
		if(just_hit){
			if (hitbox_timer % 60 == 0){
				just_hit = false;
			}			
		}
    	proj_angle -=(hsp);
        if(vsp < 6){
            kb_angle = 45;
            kb_value = 5;
            if(kb_scale <= .7){
            	kb_scale = .7;
            }
        }else{
            kb_angle = 315;
            kb_value = 4;
            if(kb_scale == .7 || kb_scale <= .55){
            	kb_scale = .55;
            }
        }
        //I don't fucking know what to do here. Platforms won't allow it to hit even when
        //I use par_jumpthrough so I gave up after 30 mins of troubleshooting
        if(hit_priority != 0 && (!free || place_meeting(x,y+20,asset_get("par_block")))){
            if(!just_landed){
                dorito_hp-=1;
                just_landed = true;
                sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))
            }
        }else if(free){
            just_landed = false;
        }
        switch(dorito_hp){
        	case 0:
        		image_index = 3;
        	break;
        	case 1:
        		image_index = 2;
        	break;
        	case 2:
        		image_index = 1;
        	break;     
        	case 3:
        		image_index = 0;
        	break;        	
        }
        if(dorito_hp <= 0 && !destroyed){
            destroyed = true;
            theplanet.destroyed = true;
            player_id.move_cooldown[AT_NSPECIAL] = 65;
			var shard1 = create_hitbox(AT_NSPECIAL,2,x+0*spr_dir,y);shard1.player = player;
			var shard2 = create_hitbox(AT_NSPECIAL,3,x+0*spr_dir,y);shard2.player = player;
			var shard3 = create_hitbox(AT_NSPECIAL,4,x+0*spr_dir,y);shard3.player = player;
        }
    	if(x > room_width+200 || x < -200 || y >= room_height+300){
        	destroyed = true;
        	theplanet.destroyed = true;
        	player_id.move_cooldown[AT_NSPECIAL] = 0;
        	sound_play(asset_get("sfx_leafy_hit3"))sound_play(asset_get("sfx_leafy_hit1"))
    	}
    }else{
    	if(hbox_num != 5){
	        if(!free){
	            destroyed = true;
	            sound_play(asset_get("sfx_leafy_hit1"))
	        }
	    	if(x > room_width+200 || x < -200 || y >= room_height+300){
	        	destroyed = true;
	        	sound_play(asset_get("sfx_leafy_hit1"))
	    	}
    	}else{
	        if(!instance_exists(theplanet)){
				destroyed = true;
			}
    	}
    }
}else if(attack == AT_FSTRONG){
	if(hbox_num == 1){//door idle
		UnReflectable = true;depth = player_id.depth+4; 
		if(!free && !(x > room_width+200 || x < -200 || y >= room_height+300)){
			if hitbox_timer == length hitbox_timer--;
			image_xscale = 0;image_yscale = 0;
		}
		if(free){
			image_xscale = .3;image_yscale = .1;
		}
    	if(x > room_width+200 || x < -200 || y >= room_height+300){
        	destroyed = true;
        	sound_play(sound_get("airhorn"))
    	}
		if(door_open){
			if(hitbox_timer == 20){
				sound_play(sound_get("somebody_once_told_me"))
				player_id.shrek_door = create_hitbox(AT_FSTRONG,3,x,y);player_id.shrek_door.depth = player_id.depth+4; 
				destroyed = true;
			}
		}
	}else if(hbox_num == 2){
		UnReflectable = true;	
	}else if(hbox_num == 3){
		UnReflectable = true;
		if(hitbox_timer == 31){
			create_hitbox(AT_FSTRONG,2,x+50*spr_dir,y-40);
		}
		if(hitbox_timer >= 80){
			image_index = 8;
		}
		if(hitbox_timer == length - 1){
			destroyed = true;
		}
	}
}else if(attack == AT_DSTRONG){
	if(hbox_num == 1){//boi idle
		if(!free && !(x > room_width+200 || x < -200 || y >= room_height+300)){
			if hitbox_timer == length hitbox_timer--;
			image_xscale = 0;image_yscale = 0;
		}
		if(free){
			image_xscale = .2;image_yscale = .1;
		}
    	if(x > room_width+200 || x < -200 || y >= room_height+300){
        	destroyed = true;
        	sound_play(sound_get("airhorn"))
    	}	
		if hitbox_timer == length hitbox_timer--;
		if(boi_ride){
			if(hitbox_timer == 1){
				var fx = spawn_hit_fx(x-32*spr_dir,y+13,player_id.fx_dust_sharp_big)fx.spr_dir = -spr_dir;
			}
			if(hitbox_timer == 20){
				player_id.dat_boi = create_hitbox(AT_DSTRONG,2,x,y); 
				destroyed = true;
			}
		}
	}else if(hbox_num == 2){
		if(!player_id.was_parried && abs(hsp) < 8){
			if(!player_id.charged_summon){
				hsp = 4*spr_dir;
			}else{
				hsp = 7*spr_dir;
				img_spd = .5;
			}
		}
		if(hitbox_timer == length - 1){
			destroyed = true;
		}
		var refresh_time = 32;
		if (hitbox_timer % refresh_time == 0) for (var i = 0; i < 20; i++){
			can_hit[i] = 1;
		}		
	}
}else if(attack == AT_USTRONG){
	if(hbox_num == 1){//doge
		if(!free && !(x > room_width+200 || x < -200 || y >= room_height+300)){
			if !doge_speak && hitbox_timer == length hitbox_timer--;
			image_xscale = 0;image_yscale = 0;
		}
		if(free){
			image_xscale = .3;image_yscale = .1;
		}
    	if(x > room_width+200 || x < -200 || y >= room_height+300){
        	destroyed = true;
        	sound_play(sound_get("airhorn"))
    	}	
		if(doge_speak){
			if(hitbox_timer == 1){
				depth -= 4;
				switch(get_player_color(player)){
					default:
						sprite_index = sprite_get("doge_bark_alts")
					break;
					case 0:
						sprite_index = sprite_get("doge_bark")
					break;
					case 15:
						sprite_index = sprite_get("doge_bark_weegee")
					break;					
					case 24:
						sprite_index = sprite_get("doge_bark_lolbit")
					break;					
				}
				img_spd = .3;
			}
			if(hitbox_timer == 10){
				sound_play(sound_get("bork"))
				switch(player_id.charged_summon){
					case 0:
						create_hitbox(AT_USTRONG,2,x,y-20);
					break;
					case 1:
						create_hitbox(AT_USTRONG,4,x,y-20);
					break;	
					case 2:
						create_hitbox(AT_USTRONG,5,x,y-20);
					break;					
				}				
				create_hitbox(AT_USTRONG,3,x+5,y-15);
			}
			if(hitbox_timer == 15){
				img_spd = .04;
				switch(get_player_color(player)){
					default:
						sprite_index = sprite_get("doge_idle_alts")
					break;
					case 0:
						sprite_index = sprite_get("doge_idle")
					break;
					case 15:
						sprite_index = sprite_get("doge_idle_weegee")
					break;					
					case 24:
						sprite_index = sprite_get("doge_idle_lolbit")
					break;					
				}
			}
			if(hitbox_timer == 58){
				destroyed = true;
				player_id.charged_summon = 0;
			}			
		}
	}else if(hbox_num == 2 || hbox_num == 4 || hbox_num == 5){
		if(hitbox_timer == 25){
			destroyed = true;
		}	
	}
}else if(attack == AT_DATTACK){
	if(hbox_num == 1){
		if(!free){
			vsp = 0;
			hsp = 0;
		}
	    //NEW REFLECT CODE
	    reflect_target = noone;
	    reflect_type = 0;
	    
	    if(!instance_exists(reflect_target)){
	    	with(pHitBox){
		    	if(place_meeting(x,y,other) && type == 2 && other.reflect_target != self && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article1){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article2){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article3){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article_solid){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }if(!instance_exists(reflect_target)){
	    	with(obj_article_platform){
		    	if(place_meeting(x,y,other) && other.reflect_target != self && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
		    		other.reflect_target = self;
		    	}
	    	}
	    }
	    if(instance_exists(reflect_target)){
	    	with(reflect_target){
	    		//if(abs(hsp) > 0.25){ //checks for minimum speed (unused lol!)
	            		//spr_dir *= -1; //flips it regardless of its direction, wave doesnt use this one
	            spr_dir = other.spr_dir; //forces it to go where wave is facing lol
				hsp = 10*other.spr_dir;
				vsp = -10;
	            image_angle = 0+(45*(spr_dir+1));
		        other.img_spd = .35;
		        other.launched = 30;	            
	    		//}
	    		if("was_parried" in self){
			    	was_parried = true;
				}if("hitbox_timer" in self){
			    	hitbox_timer = 0;
				}if("damage" in self){
			    	damage *= 1.5;
				}if("kb_value" in self){
			    	kb_value *= 1.25;
				}if("hit_priority" in self && hit_priority <= 0){
					hit_priority = 1;
				}
	    	}
	    	spawn_hit_fx(reflect_target.x, reflect_target.y, 305);
	    	sound_play(sound_get("spring"));
	    }	    
		if(hitbox_timer == length - 1){
			destroyed = true;
		}
		if(launched > 0){
			launched--;
		}else if(launched <= 25){
			img_spd = 0;
			image_index = 0;
		}
		var refresh_time = 15;
		if (hitbox_timer % refresh_time == 0 && launched == 0) for (var i = 0; i < 20; i++){
			can_hit[i] = 1;
		}
	}
}else if(attack == AT_USPECIAL){
    hsp *= 0.95;
    vsp -= 0.01;
    if(vsp > 0){
    	vsp *= 0.9;
    }
    if(hitbox_timer > 25){
    	image_xscale = 0;image_yscale = 0;vsp -= 0.01;
    }else if(hitbox_timer > 14){
    	kb_value = 5;kb_scale = .2;
    	damage = 3;kb_angle = 90;
    	image_xscale = .2;image_yscale = .2;
    }else if(hitbox_timer > 3){
    	kb_value = 8;kb_scale = .4;
    	damage = 5;kb_angle = 90;
    	image_xscale = .3;image_yscale = .25;
    	sound_effect = asset_get("sfx_ell_steam_hit");
    }
    if(hitbox_timer == length - 1){
    	destroyed = true;
    }
}else if(attack == AT_DSPECIAL){
	if(hbox_num == 1){
		x = player_id.x+875*spr_dir;
		y = player_id.y-45;
	}/*else if(hbox_num == 2){
		x = player_id.x+775*player_id.spr_dir;
		y = player_id.y-45;	
	}
	*/
}

if(attack != AT_DSPECIAL){
	draw_xscale = spr_dir;
}