//hitbox_update
if("VillagerHitbox" in self && player_id.player == orig_player){
if (attack == AT_NSPECIAL){
	depth = 4;
	x = player_id.x+55*player_id.spr_dir;y = player_id.y-25;
    if(hbox_num == 1 && !destroyed && hitbox_timer <= 15){
    	with(pHitBox){
    		//var ispocketable = "Pocketable" not in self || "Pocketable" in self && Pocketable;
			if(type == 2 && self != other && !instance_exists(other.player_id.Pocketed_Projectile) && (((damage > 0 && hit_priority > 0 &&
			("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self) || "MattStar" in self && MattStar) && "Pocketable" not in self || "Pocketable" in self && Pocketable) &&
			("PocketableByOwner" in self && PocketableByOwner != other.player || "PocketableByOwner" not in self) &&
			("Pocketed" in self && !Pocketed || "Pocketed" not in self) && (sprite_index != asset_get("empty_sprite") || "Pocketable" in self && Pocketable) || other.player_id.runeI)){
	            if(place_meeting(x,y,other) && other.player_id.state != PS_HITSTUN && other.player_id.state != PS_HITSTUN_LAND
	            && ("KoB_grabbed" in self && !KoB_grabbed || "KoB_grabbed" not in self)){
	            	hitbox_timer = 0;hit_priority = 0;
	            	
	            	other.player_id.pocket_buff = player == other.player ? false : true;
	            	
	            	player = other.player;last_player_id = other.player_id;
	            	if("current_player" in self){current_player = player;}
			    	if("Pocket_Player" not in self){Pocket_Player = noone;}
			    	Pocket_Player = other.player_id;
			    	other.player_id.Pocketed_Projectile = self;
			    	other.player_id.pocket_projectile_sprite_imageindex = image_index;
			    	other.player_id.pocket_projectile_sprite = sprite_index;
			    	
			    	//velocity stuff
			    	if("Pocket_hsp" not in self){  //if no defined hsp, then use defaults
			    		other.player_id.pocket_hsp = 5//abs(hsp);
			    	}else{
			    		other.player_id.pocket_hsp = abs(Pocket_hsp);
			    	}if("Pocket_vsp" not in self){ //if no defined vsp, then use defaults
			    		other.player_id.pocket_vsp = -5//vsp;
			    	}else{
			    		other.player_id.pocket_vsp = Pocket_vsp;
			    	}
			    	if(other.player_id.pocket_hsp <= 0.5 && abs(other.player_id.pocket_vsp) <= 0.5){ //if it has no speed in any direction then just default to having some lol (unused, done above instead)
			    		//if("Pocket_hsp" not in self){other.player_id.pocket_hsp = 5;}
			    		//if("Pocket_vsp" not in self){other.player_id.pocket_vsp = -5;}
			    	}
			    	other.player_id.pocket_transcendent = transcendent;transcendent = 1;
			    	other.player_id.pocket_grounds = grounds;other.player_id.pocket_walls = walls;grounds = 1;walls = 1;
			    	other.player_id.pocket_projectile = true;other.player_id.pocket_article = false;
			    	Pocketed = true;
			    	if("Pocket_hud" in self){
			    		if(Pocket_hud != -1){ //has sprites defined
				    		other.player_id.pocket_projectile_hud_sprite = Pocket_hud;
			    		}else{ //if set to -1, use generic icons
			    			other.player_id.pocket_projectile_hud_sprite = other.player_id.pocket_projectile_hud_sprite_basic;
			    		}
			    		if("Pocket_hud_imageindex" in self){
				    		other.player_id.pocket_projectile_hud_sprite_imageindex = Pocket_hud_imageindex;
				    	}
			    	}else{
			    		other.player_id.pocket_projectile_hud_sprite = other.player_id.pocket_projectile_hud_sprite_original;
			    		other.player_id.pocket_projectile_hud_sprite_imageindex = 0;
			    	}
			    	//some villager specific stuff
			    	if("Is_Lloid_Rocket" in self){
			    		timer = 0;
			    		if(self == other.player_id.Lloid_Rocket){
			    			other.player_id.Lloid_Rocket = noone;
			    		}
			    	}if("Villager_Bowling_Ball" in self){
			    		if(!waspocketed && !waspocketed2 && player_id == other.player_id){ //if its your own bowling ball and it hasnt been pocketed or anything yet, make it weaker
			    			damage = 8;kb_value = 7;kb_scale = 0.9;waspocketed2 = true;
			    		}
			    	}
			    	//check if villager is gonna mess with the 'state' variable or not, to avoid at least some bugs
			    	if("is_KOB" in player_id && player_id.is_KOB){
			    		other.player_id.pocket_handle_state = true;
			    	}else{
			    		other.player_id.pocket_handle_state = false;
			    	}
			    	
			    	with(other.player_id){
			    		invincible = true;invince_time = 10;
			    		sound_play(sound_get("pocket"),false,noone,1);
			    		sound_stop(sfx);
			    	}
			    	other.img_spd = 2;
	        	}
	    	}
		}
    }
    if(image_index > 10 || player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR){
		destroyed = true;
	}
}else if (attack == AT_FSPECIAL){
	if(hbox_num == 1){
		if(hit_priority > 0 || player == orig_player){
			if((player == orig_player || player != orig_player && hit_priority > 0) && !Pocketed && !KoB_grabbed){
	        	timer += 1;
			}else if(player != orig_player && hit_priority < 0 || Pocketed || !KoB_grabbed){
				timer = 0;sound = false;
			}
	        if(timer >= 40){
	        	if(!Pocketed && !KoB_grabbed)hit_priority = 5;
	        	if(timer < 90){
		        	if(abs(hsp) < 7){
		        		hsp += 0.5*spr_dir;
		        	}
	        	}else if(timer >= 80){
	        		if(abs(hsp) > 2){
		        		hsp -= 0.1*spr_dir;
		        	}
		        	if(damage == 7){
		        		damage = 5;
		        	}
		        	grav = .01;
		        	if(timer >= 150){
		        		hashitplayer = true;
		        	}anim = 2;
	        	}
	        	if(!sound){
	        		sound = true;
	        		startsound = sound_play(sfx_start,false,noone,1);
	        	}
	        }else{
	        	if(abs(hsp) < 0.1){
		        	hsp += 0.01*spr_dir;
		    	}
	        }
	    }else if(player != orig_player){
	    	if(self == player_id.Lloid_Rocket){
				player_id.Lloid_Rocket = noone;
			}
			if(hit_priority > 0){
				if(!sound){
	        		sound = true;
	        		startsound = sound_play(sfx_start,false,noone,1);
	        	}
			}else if(Pocketed || KoB_grabbed){
				timer = 0;sound = false;
			}
	    }
	    //SFX
	    if(sound){
	    	if(soundtimer <= 0){
	    		soundtimer = 57;loopsound = sound_play(sfx_loop,false,noone,1);
	    	}else{
	    		soundtimer -= 1;
	    	}
	    }else{
	    	soundtimer = 0;
	    	sound_stop(startsound);sound_stop(loopsound);
	    }
        
        if(anim == 0){
        	if(image_index >= 4){
        		anim = 1;
        	}
        }else if(anim >= 1){
        	if(anim == 1){
	        	if(image_index < 4 || image_index > 11){
	        		image_index = 4;
	        	}
	        }else if(anim == 2){
	        	if(image_index < 12 || image_index > 19){
	        		image_index = 12;
	        	}
	        	if(get_gameplay_time() % 4 == 0){
		            var dust = spawn_hit_fx(round(x+(-26+random_func(0, 50, true))), round(y+(-26+random_func(1, 50, true))), player_id.fx_dust);dust.depth = depth-1;
		        }
	        }
        	if(hit_priority > 0){
        		img_spd = .4;
        	}else{
        		img_spd = .2;
        	}
        }
        
        if(vsp < -6 || vsp < -1 && abs(hsp) < 1){
        	kb_angle = 90;
        }else if(vsp > 6 || vsp > 1 && abs(hsp) < 1){
        	kb_angle = 300;
        }else{
        	kb_angle = 55;
        }
        if(get_gameplay_time() % 3 == 0 && hit_priority > 0){
	        var dust = spawn_hit_fx(x,y,player_id.fx_dust);dust.depth = depth+1;
	    }
        
	    if(instance_exists(theotherhitbox)){
	    	theotherhitbox.x = x; theotherhitbox.y = y;
	    }
	    if(instance_exists(theotherhitbox) /*&& (hit_priority > 0 || player = orig_player || )*/){
    	    with(pHitBox){
    	    	if(place_meeting(x,y,other.theotherhitbox)){
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox /*&& player != other.current_player*/ && other != self && effect != 100){
    	            	if(damage > 0 && kb_value > 0 && hit_priority > 0 /*&& !proj_break*/){
	    	                other.hitplayertimer -= 10;
	    	                other.hitlockout = 6;other.hitlockout2 = 10;
	    	        		if(type <= 1){
	    	        			other.hitpausehit = hitpause;other.in_hitpause = true;
	    	        			if(other.hitpausehit <= 0){
	    	        				other.hitpausehit = 5;
	    	        			}
	    	        			other.hitstop = other.hitpausehit;
	    	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
	                			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
	                			player_id.has_hit = true;
	                			if(get_player_team(player) != get_player_team(other.player)){
	                				other.hp -= round(damage*(1+(player_id.strong_charge/100)));
	                			}else{
	                				other.hp -= round((damage*(1+(player_id.strong_charge/100)))/4);
	                			}
	                			//to make certain characters bounce
				        		if("dairhitbox" in player_id && player_id.dairhitbox == self){with(player_id){
				   		    		if(!up_down && !down_down){vsp = -9;old_vsp = vsp;}else if(up_down){vsp = -12;old_vsp = vsp;}else if(down_down){vsp = -7;old_vsp = vsp;}     				
				        		}}if("DairBounce" in player_id){player_id.DairBounce = 1;}
	    	        		}else{
	    	        			if(get_player_team(player) != get_player_team(other.player)){
	    	        				other.hp -= round(damage);
	    	        			}else{
	    	        				other.hp -= round(damage/4);
	    	        			}
	    	        		}
	    	        		
	    	        		other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
	    	        		if(other.hp > 0 && (player_id == other.originalplayer || player_id != other.originalplayer && type <= 1
	    	        		&& kb_value+(kb_scale*6) > 6 || type == 2 && kb_value+(kb_scale*6) > 6)){
    	    		            //other.current_player = player;other.player = player;
    	    		            knockback_angle = kb_angle;
	    	        			other.knockback_power = kb_value;
    	    		            other.hsp += cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*0.025)*spr_dir;
    	    		            if(other.hsp > 0){
    	    		            	other.spr_dir = 1;
    	    		            }else if(other.hsp < 0){
    	    		            	other.spr_dir = -1;
    	    		            }
    	    		            other.vsp -= -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*0.025);
    	    		            other.can_hit[player] = false;other.lastplayerhit = player;
	    	        		}
	    	        		other.hit_priority = 4;
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    	                other.lasthitbox = id;other.hitbox_timer = 0;
    	            	}
    	            }
    	        }
    	    }
	    }
	    if(hsp > 0){
			spr_dir = 1;
	    }else if(hsp < 0){
	    	spr_dir = -1;
		}
	    if(hitstop <= 0){
	    	in_hitpause = false;hitlockout -= 1;
	    	if (instance_exists(lasthitbox)) {
	    		hitlockout2 -= 1;
	    	}else{
	    		hitlockout2 = 0;
	    	}
	    	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
	    }else{
	    	hitstop -= 1;
	    }
	    if(hp <= 0 || x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000 || hitbox_timer >= length || hashitplayer){
	        var explode = spawn_hit_fx(x,y,player_id.fx_explosion);explode.draw_angle = random_func(0, 360, true);
	        var lightbeams = spawn_hit_fx(x,y,player_id.fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(0, 360, true);
	        lightbeams = spawn_hit_fx(x,y,player_id.fx_lightbeams_small);lightbeams.draw_angle = random_func(10, 720, true);
	        sound_play(sfx_explode,false,noone,1);shake_camera(10, 5);
	        if(hp <= 0){ //stronger explosion as the rocket was destroyed by an attack
	        	var explosionhitbox = create_hitbox(AT_FSPECIAL, 4, round(x), round(y));
	        	explosionhitbox.player = player;explosionhitbox.init = false;
	        }else{ //weaker, normal explosion
	        	var explosionhitbox = create_hitbox(AT_FSPECIAL, 3, round(x), round(y));
	        	explosionhitbox.player = player;explosionhitbox.init = false;
	        	if(lastplayerhit != -1){
	        		explosionhitbox.can_hit[lastplayerhit] = false;
	        	}
	        }
	        if(thehit_player != -1){
	        	explosionhitbox.can_hit[thehit_player] = false;
	        }
	        if(PocketBuff > 0){
				explosionhitbox.damage = ceil(explosionhitbox.damage*(power(1.5,PocketBuff)));explosionhitbox.kb_scale = explosionhitbox.kb_scale*(power(1.25,PocketBuff));
				explosionhitbox.damage = min(explosionhitbox.damage,999);explosionhitbox.kb_scale = min(explosionhitbox.kb_scale,2);
			}
		    sound_stop(startsound);sound_stop(loopsound);
		    if(instance_exists(rider)){
		    	player_id.window = 10;player_id.window_timer = 0;
		    	player_id.hsp = 4*spr_dir;player_id.vsp = -9;
		    	rider = noone;
		    }
		    destroyed = true;
		    if(instance_exists(theotherhitbox)){
		    	theotherhitbox.destroyed = true;
		    }
		}
		hitbox_timer = min(hitbox_timer,10);
		if(hit_priority <= 0){
			grounds = 1;walls = 1;
		}else{
			grounds = 2;walls = 1;
			if (position_meeting(x+30,y,asset_get("solid_32_obj")) || position_meeting(x-30,y,asset_get("par_block"))){
	            hashitplayer = true;
	        }
		}
		
		if(instance_exists(rider)){
			proj_angle = angle;
			if(rider.state == PS_DEAD || rider.state == PS_RESPAWN){
		        rider = noone;
		    }
		    if(instance_exists(rider)){
		    	rider.x = x-(22*spr_dir);rider.y = y-16;rider.hurtboxID.x = rider.x;rider.hurtboxID.y = rider.y;rider.spr_dir = spr_dir;
		    	rider.hsp = hsp;rider.vsp = vsp;rider.spr_dir = spr_dir;
		    	depth = rider.depth+1;can_hit[rider.player] = false;
		    	if(timer >= 40 && (spr_dir == 1 && player_id.right_down || spr_dir == -1 && player_id.left_down)){
					if(abs(hsp) < 12 || player_id.runeL && abs(hsp) < 18){
						hsp += (0.35*speedmod)*spr_dir;
					}
				}else if(timer >= 40 && (spr_dir == -1 && player_id.right_down || spr_dir == 1 && player_id.left_down)){
					if(abs(hsp) > 1 || player_id.runeL && abs(hsp) > 0){
						hsp -= (0.35*speedmod)*spr_dir;
					}
				}
				if(timer >= 40 && player_id.up_down){
					if(vsp > -2 || player_id.runeL && vsp > -8){
						vsp -= (0.25*speedmod);
					}
				}else if(timer >= 40 && player_id.down_down){
					if(vsp < 2 || player_id.runeL && vsp < 8){
						vsp += (0.25*speedmod);
					}
				}
				if(player_id.window < 6 && (player_id.special_pressed || player_id.jump_pressed || player_id.shield_pressed) && jumpoff_timer <= 0){
					player_id.window = 6;player_id.window_timer = 0;
				}
				with(rider){
					if(window == 6 && window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH)-1 || state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || state == PS_HITSTUN){
						other.old_rider = other.rider;other.rider = noone;other.jumpoff_timer = 5;
						other.damage = 7;other.kb_scale = 0.8;
						if(state != PS_HITSTUN){
							hsp = -2*other.spr_dir;vsp = -7;
						}
					}
				}
		    }
		    Pocketable = false;
		    MattCanGrab = false;
		    MorshuCanGrab = false;
		    CalCanSnack = 0;
		    if(player_id.runeM){
		    	timer = min(timer,50);
		    }
		    if(prev_player != player)jumpoff_timer = 60;
		}else{
			Pocketable = true;
	    	MattCanGrab = true;
	    	MorshuCanGrab = true;
	    	CalCanSnack = 1;
	    	depth = -7;
	    	if(jumpoff_timer <= 0 && instance_exists(old_rider)){
	    		can_hit[old_rider.player] = true;old_rider = noone;
	    	}
		}
		jumpoff_timer -= 1;
		if(prev_player != player)prev_player = player;
	}
}else if (attack == AT_USPECIAL){
    if(hbox_num == 1){ //balloon
    	if(num2 == 0){
    		if(image_index >= 2){
    			num2 = 1;
    		}
    	}else if(num2 == 1){
    		if(image_index >= 5){
    			image_index = 2;
    		}
    		if(!attached){
    			num2 = 2;
    		}
    	}else if(num2 == 2){
    		if(image_index <= 4 || image_index >= 8){
    			image_index = 5;
    		}
    	}
		if(instance_exists(theotherhitbox)){
	    	theotherhitbox.x = x; theotherhitbox.y = y-10;
	    }
	    if(instance_exists(theotherhitbox)){
    	    with(pHitBox){
    	    	if(place_meeting(x,y,other.theotherhitbox)){
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox && other != self && effect != 100 && 
    	            (player_id != other.player_id || player_id == other.player_id && (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR ||
    	            (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack != AT_USPECIAL))){
    	            	if(damage > 0 && kb_value > 0 && hit_priority > 0 && throws_rock < 1/*&& !proj_break*/){
    	            		other.hitplayertimer -= 10;
    	    	                other.hitlockout = 6;other.hitlockout2 = 10;
    	    	        		if(type <= 1){
    	    	        			other.hitpausehit = hitpause*2;other.in_hitpause = true;
    	    	        			if(other.hitpausehit <= 0){
    	    	        				other.hitpausehit = 5;
    	    	        			}
    	    	        			other.hitstop = other.hitpausehit;
    	    	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
    	                			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
    	                			if(player_id.free && player_id.old_vsp > -7){
    	                				player_id.old_vsp = -7;	
    	                			}
    	                			player_id.has_hit = true;
    	                			if(other.attached){
    	                				other.player_id.hitpause = true;other.player_id.hitstop = other.hitpausehit;
	    	                			other.player_id.old_hsp = other.player_id.hsp;other.player_id.old_vsp = other.player_id.vsp;
	    	                			other.player_id.has_hit = true;
    	                			}
    	                			//to make certain characters bounce
					        		if("dairhitbox" in player_id && player_id.dairhitbox == self){with(player_id){
					   		    		if(!up_down && !down_down){vsp = -9;old_vsp = vsp;}else if(up_down){vsp = -12;old_vsp = vsp;}else if(down_down){vsp = -7;old_vsp = vsp;}     				
					        		}}if("DairBounce" in player_id){player_id.DairBounce = 1;}
    	    	        		}
    	    	        		other.hp = 0;
    	    	        		
    	    	                spawn_hit_fx(other.x, other.y, hit_effect);
    	    					sound_play(sound_effect);
    	    	                other.lasthitbox = id;other.hitbox_timer = 0;
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
	    if(hp <= 0 && !in_hitpause || x > room_width+1000 || x < -1000 || y >= room_height+1000 || y < -2000 || hitbox_timer >= length){
	        sound_play(pop_sfx,false,noone,1);spawn_hit_fx(x, y-10, 302);
	        if(runeD){
	        	var explosionhitbox = create_hitbox(AT_FSPECIAL, 4, round(x), round(y));explosionhitbox.player = player;
	        	var explode = spawn_hit_fx(x,y,player_id.fx_explosion);explode.draw_angle = random_func(0, 360, true);
		        var lightbeams = spawn_hit_fx(x,y,player_id.fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(0, 360, true);
		        lightbeams = spawn_hit_fx(x,y,player_id.fx_lightbeams_small);lightbeams.draw_angle = random_func(10, 720, true);
		        sound_play(sfx_explode,false,noone,1);shake_camera(10, 5);
	        }
		    destroyed = true;
		    if(instance_exists(theotherhitbox)){
		    	theotherhitbox.destroyed = true;
		    }
		}
		if(attached){
			hitbox_timer = 0;
			if((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && (player_id.attack == AT_USPECIAL && player_id.window >= 6 || player_id.attack != AT_USPECIAL)
			|| player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR || Pocketed || player != orig_player){
				attached = false;
				hsp = -3+random_func(num3,6,true);vsp = 2-random_func(num3+1,2,true);hitbox_timer = random_func(num3+2,60,true);
				if(player_id.balloon1 == self){
					player_id.balloon1 = noone;
				}else if(player_id.balloon2 == self){
					player_id.balloon2 = noone;
				}
			}
		}else{
			vsp -= 0.075;hsp *= 0.9;
			vsp = min(vsp,4);vsp = max(vsp,-5);
		}depth = 4;
	}else if(hbox_num == 2){ //balloon hit collision
		
	}
}else if (attack == AT_DSPECIAL){
    if(hbox_num == 1){ //seed
		hitbox_timer = 0;timer += 1;
		if(num == 0){ //planted
			Bounceable = false;
			if(get_gameplay_time() % 3 == 0){
				image_index += 1;
				if(image_index >= 6){
					num = 1;image_index = 6;
				}
			}
		}else if(num == 1){ //planted, idle
			Bounceable = false;depth = 4;
			if(timer >= 840 || watr >= 40){
				num = 100;image_index = 6;
			}
			if(player_id.runeG){
				hit_timer -= 1;
				if(hit_timer <= 0){
		    	    with (asset_get("oPlayer")) {
						if(place_meeting(x,y,other) && /*state != PS_HITSTUN && state != PS_HITSTUN_LAND &&*/ get_player_team(player) != get_player_team(other.player)){
							with (other) {
								var dspechit = create_hitbox(AT_DSPECIAL, 10, x, y);
								hit_timer = 60;
							}
						}
			    	}
				}
    	    }
		}else if(num == 100){ //destroy seed
			if(get_gameplay_time() % 4 == 0){
				if(image_index == 1){
					if(watr >= 40){
						player_id.tree = create_hitbox(AT_DSPECIAL, 3, x, y+7);player_id.tree.player = player;
						with(player_id){
	    	            	sound_play(sound_get("dspecial_tree"),false,noone,1);
	    	        	}
					}
					destroyed = true;
				}else{
					image_index -= 1;
				}
			}
		}
		if(free){
			airtime += 1;
			if(airtime <= 3){
				num = 100;image_index = 6;
			}
		}else{
			airtime = 0;
		}
	}else if(hbox_num == 2){ //water
		angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
		if(hitbox_timer >= 7){
        	hit_priority = 0;
        }
		with(pHitBox){
			if("Is_Villager_Sapling" in self){
				if(place_meeting(x,y,other)){
					watr += 1;player = other.player;
				}
			}
		}
	}else if(hbox_num == 3){ //tree
		hitbox_timer = 0;
		depth = -6;
		
		timer += 1;
		
		if(num >= 1 && num <= 4){ //the states tree can be hit in
			if(instance_exists(hitcollision) && hp > 0 && timer2 < 840){
	    		hitcollision.x = x; hitcollision.y = y-45;
	    	    with(pHitBox){
	    	    	if(place_meeting(x,y,other.hitcollision)){
	    	            if(self != other.lasthitbox /*&& player != other.current_player*/ && other != self && effect != 100){
	    	            	if(damage > 0 && kb_value > 0 && hit_priority > 0){
	    	            		var axehit = 0;
	    	            		if(/*|| "Villager" in player_id && attack == AT_DSPECIAL && hbox_num == 9 ||*/ type == 1 && "VillagerTreeCut" in player_id && player_id.VillagerTreeCut > 0 || type == 2 && "VillagerTreeCut" in self && VillagerTreeCut > 0){
	    	            			if(type == 1){
	    	            				axehit = player_id.VillagerTreeCut;
	    	            			}else if(type == 2){
	    	            				axehit = VillagerTreeCut;
	    	            			}
	    	            		}
	    	            		if(other.num == 1  && other.hitlockout <= 0 && other.hitlockout2 <= 0 || axehit > 0){ //extra check to let axe specifically hit in all states, while all other hits can only hit in state 1
		    	            		if(axehit > 0){
		    	            			/*axehit = true;*/other.player = player;
		    	            			if(axehit >= 2 || other.cuts == 1 && (type == 1 && (attack != AT_BAIR && other.spr_dir == player_id.spr_dir || attack == AT_BAIR)
		    	            			|| type == 2 && (x > other.x && other.spr_dir == -1 || x < other.x && other.spr_dir == 1)) || other.cuts >= 2){
		    	            				other.cuts = 10;
		    	            				if(type == 1){
			    	            				other.spr_dir = player_id.spr_dir;
			    	            				if(attack == AT_BAIR)other.spr_dir = -player_id.spr_dir;
		    	            				}else{
		    	            					if(x > other.x){
			    	            					other.spr_dir = -1;
			    	            				}else{
			    	            					other.spr_dir = 1;
			    	            				}
		    	            				}
		    	            			}
		    	            			other.cuts += 1;
		    	            			if(type == 1 && other.cuts == 1 && (attack != AT_BAIR && other.spr_dir != player_id.spr_dir || attack == AT_BAIR && other.spr_dir == player_id.spr_dir)
		    	            			|| type == 2 && other.cuts == 1){
		    	            				if(type == 1){
			    	            				other.spr_dir = -other.spr_dir;
		    	            				}else{
		    	            					if(x > other.x){
			    	            					other.spr_dir = -1;
			    	            				}else{
			    	            					other.spr_dir = 1;
			    	            				}
		    	            				}
		    	            			}
		    	            			sound_play(other.chopsfx,false,noone,1);
		    	            			if("Villager" in player_id && attack == AT_DSPECIAL && hbox_num == 9){ //if villager and specifically his axe then do some specific stuff
			    	            			with(player_id){
			    	            				if(strong_charge < 30){
				    	            				window = 10;window_timer = 0;hsp = 0;
				    	            				set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 11);
				    	            			}
			    	            			}
			    	            			if(player_id.strong_charge < 30){
			    	            				var dist = abs(other.x-player_id.x); //distance
				    	            			if(dist < 60){
				    	            				player_id.x -= (60-dist)*spr_dir;
				    	            			}
			    	            			}
		    	            			}
		    	            		}
		    	            		if(axehit <= 0 /*get_player_team(player) != get_player_team(other.player)*/){
		    	            			other.hp -= round(damage*(1+(player_id.strong_charge/100)));
		    	            		}
	    	    	                other.hitplayertimer -= 10;
	    	    	                other.hitlockout = 6;other.hitlockout2 = 10;
	    	    	        		if(type <= 1){
	    	    	        			other.hitpausehit = hitpause;other.in_hitpause = true;
	    	    	        			if(other.hitpausehit <= 0){
	    	    	        				other.hitpausehit = 5;
	    	    	        			}
	    	    	        			other.hitstop = other.hitpausehit;
	    	    	        			player_id.hitpause = true;player_id.hitstop = other.hitpausehit;
	    	                			player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
	    	                			player_id.has_hit = true;
	    	                			//to make certain characters bounce
						        		if("dairhitbox" in player_id && player_id.dairhitbox == self){with(player_id){
						   		    		if(!up_down && !down_down){vsp = -9;old_vsp = vsp;}else if(up_down){vsp = -12;old_vsp = vsp;}else if(down_down){vsp = -7;old_vsp = vsp;}     				
						        		}}if("DairBounce" in player_id){player_id.DairBounce = 1;}
	    	                			with(other){
	    	                				if(player_id.runeG){
	    	                					var treecounter = create_hitbox(AT_DSPECIAL, 11, x, y-55);treecounter.player = player;
	    	                					var hitboxpower = round(other.damage*(1+(other.player_id.strong_charge/100)));
	    	                					treecounter.damage += hitboxpower;treecounter.kb_scale += (hitboxpower/24);
	    	                				}
	    	                			}
	    	    	        		}
	    	    	                spawn_hit_fx(other.x, other.y-45, hit_effect);
	    	    					sound_play(sound_effect);
	    	    	                other.lasthitbox = id;other.hitbox_timer = 0;
	    	    	                if(other.cuts == 0){
	    	    	                	other.num = 2;other.image_index = 10;
	    	    	                }else if(other.cuts == 1){
	    	    	                	other.num = 3;other.image_index = 14;
	    	    	                }else if(other.cuts == 2){
	    	    	                	other.num = 4;other.image_index = 18;
	    	    	                }else{
	    	    	                	with(other){
		    	    	                	if(instance_exists(hitcollision)){
												hitcollision.destroyed = true;
											}destroyed = true;
											var tree = create_hitbox(AT_DSPECIAL, 7, x, y-75);tree.spr_dir = spr_dir;tree.player = player;
											create_hitbox(AT_DSPECIAL, 8, x, y);
	    	    	                	}sound_play(other.fallsfx,false,noone,1);shake_camera(4, 14);
	    	    	                }
	    	    	                with(other){
	    	    	                	var leaves = spawn_hit_fx(x+(70-random_func(0,140,true)), y+(50-random_func(1,100,true))-50, player_id.fx_leaves);
	        							leaves = spawn_hit_fx(x+(70-random_func(2,140,true)), y+(50-random_func(3,100,true))-50, player_id.fx_leaves);leaves.spr_dir = -spr_dir;
	    	    	                }
	    	            		}
	    	            	}
	    	            }
	    	        }
	    	    }
			}
		}
		
		if(num == 0){ //appearing
			if(timer % 5 == 0 && image_index < 2 || timer % 3 == 0 && image_index >= 2 && image_index < 9){
				image_index += 1;
				if(image_index == 3){
					var hitbox = create_hitbox(AT_DSPECIAL, 5, x, y-65);hitbox.player = player;hitbox.tree = self;
				}else if(image_index == 4){
					var hitbox = create_hitbox(AT_DSPECIAL, 6, x, y-55);hitbox.player = player;hitbox.tree = self;
				}
			}
			if(image_index >= 9){
				num = 1;image_index = 9;timer = 0;
			}
		}else if(num == 1){ //idle
			timer2 += 1;
			if(instance_exists(hitcollision) && hp > 0 && timer2 < 840){
	    		
			}else{
				num = 100;image_index = 8;
			}
		}else if(num == 2){ //hit
			if(timer % 3 == 0 && !in_hitpause){
				image_index += 1;
				if(image_index >= 14){
					num = 1;image_index = 9;
				}
			}
		}else if(num == 3){ //hit, 1 cut
			if(timer % 2 == 0 && !in_hitpause){
				image_index += 1;
				if(image_index >= 18){
					num = 1;image_index = 17;
				}
			}
		}else if(num == 4){ //hit, 2 cuts
			if(timer % 2 == 0 && !in_hitpause){
				image_index += 1;
				if(image_index >= 22 || image_index <= 1){
					num = 1;image_index = 21;
				}
			}
		}else if(num == 100){ //disappear
			if(instance_exists(hitcollision)){
				hitcollision.destroyed = true;
			}
			if(timer % 3 == 0){
				image_index -= 1;
				if(image_index <= 0){
					destroyed = true;
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
	}else if(hbox_num == 4){ //tree hit collision
        if(!instance_exists(theplant)){
			destroyed = true;
		}
		hitbox_timer = min(hitbox_timer,10);
    }else if(hbox_num == 7){ //tree falling
    	if(!in_hitpause){
    	if (landtimer <= 0 && !despawning && hit_priority > 0
    	&& (!free || prev_vsp > 0 && vsp < 0 && (position_meeting(x,y+30+prev_vsp,asset_get("par_block")) || position_meeting(x+30,y+30+prev_vsp,asset_get("par_block")) || position_meeting(x-30,y+30+prev_vsp,asset_get("par_block"))
    	|| position_meeting(x,y+30+prev_vsp,asset_get("par_jumpthrough")) || position_meeting(x+30,y+30+prev_vsp,asset_get("par_jumpthrough")) || position_meeting(x-30,y+30+prev_vsp,asset_get("par_jumpthrough"))))){
            spawn_hit_fx(x, y+15, player_id.fx_dust);sound_play(landsfx);shake_camera(12, 7);
            landtimer = 3;//hit_priority = 0;
            vsp *= 0.5;hsp *= 0.75;
            //if(!waspocketed){
            	timer = 0;despawning = true;
            //}
        }landtimer -= 1;
        angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
        if(!free){
        	hsp *= 0.85;
        }
        if(timer2 > 13){
        	if(timer2 > 22){
        		grav = 0.4;
        	}
        	if(timer2 <= 60 && (!despawning || despawning && timer < 14)){
        		proj_angle -= 2*spr_dir;
        		if(abs(proj_angle*spr_dir) < 75){
        			proj_angle -= 2*spr_dir;
        		}
        	}
        	if(timer2 == 20){ //sourspot
        		if(damage == 20 && !waspocketed){
	        		damage = 12;kb_value = 8;kb_scale = 1.1;
	        	}
        	}
        }else{
        	proj_angle -= 0.5*spr_dir;vsp *= 0.75;hsp *= 0.95;
        	if(timer2 >= 6){
        		proj_angle -= 1*spr_dir;hsp += 0.25*spr_dir;
	    	}
        	if(timer2 == 13){ //activate hitbox
        		hit_priority = 8;hsp += 0.75*spr_dir;
        		grav = 0.2;
        	}else if(timer2 < 13){
        		hit_priority = 0;
        	}
        }
        if(timer >= 10 && !Pocketed){
        	if(timer >= 35){
	        	if(vsp >= 6){
	        		kb_angle = 280;
	        		if(!waspocketed){
	        			kb_value = 7;kb_scale = 1.0;
	        		}
	        	}else{
	        		kb_angle = 45;
	        		if(!waspocketed){
	        			kb_value = 8;kb_scale = 1.1;
	        		}
	        	}
	        }
        }
        //print_debug(string(kb_scale));
        if(get_gameplay_time() % 3 == 0 && (abs(vsp) >= 2 || abs(hsp) >= 2)){
            var fallfx = spawn_hit_fx(x, y, player_id.fx_tree_fall);fallfx.draw_angle = angle;
            var leaves = spawn_hit_fx(x+(50-random_func(0,100,true)), y+(50-random_func(1,100,true)), player_id.fx_leaves);
            //leaves = spawn_hit_fx(x+(60-random_func(2,120,true)), y+(60-random_func(3,120,true)), player_id.fx_leaves);leaves.spr_dir = -spr_dir;
        }
		hitbox_timer = 0;timer += 1;timer2 += 1;
		if(Pocketed || player != orig_player){
			waspocketed = true;
			if(Pocketed){
				despawning = false;grounds = 2;timer = 0;timer2 = 0;proj_angle = 0;kb_angle = 45;
			}
		}
		if(despawning && timer >= 4){
			grounds = 0;hit_priority = 0;
		}else{
			grounds = 2;
		}
		prev_vsp = vsp;
    	}
		if(hitstop <= 0){
			in_hitpause = false;
		}else{
			hitstop -= 1;
		}
		if(x > room_width+6000 || x < -6000 || y >= room_height+6000 || despawning && timer >= 50){
        	spawn_hit_fx(x, y, player_id.fx_dust);
			destroyed = true;
		}
		if(despawning && (prev_player != player || KoB_grabbed)){despawning = false;timer = 0;timer2 = 0;}prev_player = player;
		if(KoB_was_grabbed != KoB_grabbed && !KoB_grabbed && hit_priority <= 0){despawning = true;}KoB_was_grabbed = KoB_grabbed;
    }else if(hbox_num == 8){ //tree stump
    	depth = 4;
    	if(hitbox_timer == length){
        	spawn_hit_fx(x, y-10, player_id.fx_dust);
		}
    }
    if(hbox_num != 1 && hbox_num != 3 && hbox_num <= 9 && (x > room_width+2000 || x < -2000 || y >= room_height+2000)){
		destroyed = true;
	}
}else if (attack == AT_FSTRONG){
    if(hbox_num == 1){
        if (landtimer <= 0 && !despawning && hit_priority > 0 && vsp >= 0 &&
        (position_meeting(x,y+20+vsp,asset_get("par_block")) || position_meeting(x+10,y+20+vsp,asset_get("par_block")) || position_meeting(x-10,y+20+vsp,asset_get("par_block")) ||
        (position_meeting(x,y+20+vsp,asset_get("par_jumpthrough")) || position_meeting(x+10,y+20+vsp,asset_get("par_jumpthrough")) || position_meeting(x-10,y+20+vsp,asset_get("par_jumpthrough"))) && !position_meeting(x,y+5,asset_get("par_jumpthrough")))){
            spawn_hit_fx(x, y+15, player_id.fx_dust);sound_play(landsfx);shake_camera(6, 5);
            if(player_id.sol){
        		var star = spawn_hit_fx(x+40*spr_dir, y-5, player_id.fx_star_tiny);star = spawn_hit_fx(x-40*spr_dir, y-5, player_id.fx_star_tiny);star.spr_dir = -spr_dir;
			}
            landtimer = 6;hit_priority = 0;
            vsp *= 0.5;hsp *= 0.75;
            //create_hitbox(AT_FSTRONG, 2, x, y);
            //destroyed = true;
            //if(!waspocketed){
            	timer = 0;despawning = true;
            //}
        }landtimer -= 1;
        angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
        proj_angle -= 2*hsp;
        if(!free){
        	hsp *= 0.95;
        }
        if(timer >= 10 && !Pocketed){
        	if(damage < 12 && damage != 12 && !waspocketed2){
        		damage = 12;kb_value = 9;kb_scale = 1.15;
        	}
        	if(timer >= 20){
	        	if(vsp >= 6){
	        		kb_angle = 270;
	        		if(!waspocketed){
	        			kb_value = 6;kb_scale = 0.8;
	        		}
	        	}else{
	        		kb_angle = 45;
	        		if(damage != 8){
	        			kb_value = 9;kb_scale = 1.15;
	        		}
	        	}
	        }
        }
        //print_debug(string(kb_scale));
        if(get_gameplay_time() % 3 == 0 && (abs(vsp) >= 2 || abs(hsp) >= 2)){
            var fallfx = spawn_hit_fx(x, y, player_id.fx_bowlingball_fall);fallfx.draw_angle = angle;
        }
		hitbox_timer = 0;timer += 1;
		if(Pocketed || player != orig_player){
			waspocketed = true;
			if(Pocketed){
				despawning = false;grounds = 2;
			}
		}
		if(despawning && timer >= 4){
			grounds = 0;
		}else{
			grounds = 2;
		}
		if(timer >= 4){image_xscale = 0.2;image_yscale = 0.2;}
		if(x > room_width+2000 || x < -2000 || y >= room_height+2000 || despawning && timer >= 50 && abs(hsp) < 2 && abs(vsp) < 2){
        	spawn_hit_fx(x, y, player_id.fx_dust);
			destroyed = true;
		}
		if(despawning && (prev_player != player || KoB_grabbed)){despawning = false;timer = 0;timer2 = 0;}prev_player = player;
		if(KoB_was_grabbed != KoB_grabbed && !KoB_grabbed && hit_priority <= 0){despawning = true;}KoB_was_grabbed = KoB_grabbed;
    }
}else if (attack == AT_USTRONG){
	if(hbox_num == 4){ //fireworks
		hitbox_timer = min(hitbox_timer,10);
		depth = 4;
		timer += 1;
		hit_priority = 0;
		if(hitbox_timer <= 1){
			timer = 0;
		}
		
		if(num2 == 0){ //wait
			if(timer <= 1){
				image_index = 0;
			}
			if(timer % 2 == 0 && image_index < 1){
				image_index += 1;
			}
			if(!used && (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_USTRONG && player_id.window >= 2 || player_id.state != PS_ATTACK_GROUND)
			|| used && timer >= 6){
				num2 = 1;image_index = 2;timer = 0;Pocketable = false;
				if(used){
					var hit = create_hitbox(AT_USTRONG, 5, round(x), round(y));hit.player = player;
				}
			}
			playercharge = player_id.strong_charge;
		}else if(num2 == 1){ //release
			if(timer == 8){
				num2 = 2;image_index = 3;timer = 0;sound_stop(thechargesfx);
				if(player_id.state != PS_HITSTUN && player_id.state != PS_HITSTUN_LAND || used){
					var fireworks = create_hitbox(AT_USTRONG, 2, round(x), round(y-80));fireworks.explosionnumber = 0;fireworks.used = used;fireworks.player = player;
					fireworks.PocketBuff = PocketBuff;
					if(PocketBuff > 0){
						fireworks.damage = ceil(fireworks.damage*(power(1.5,PocketBuff)));fireworks.kb_scale = fireworks.kb_scale*(power(1.25,PocketBuff));
						fireworks.damage = min(fireworks.damage,999);fireworks.kb_scale = min(fireworks.kb_scale,2);
					}
					var eff = spawn_hit_fx(round(x)-30+(random_func(0,60,true)), round(y-110+(random_func(1,60,true))), player_id.fx_fireworks_blue);eff.depth = -5;
					eff = spawn_hit_fx(round(x)-30+(random_func(2,60,true)), round(y-110+(random_func(3,60,true))), player_id.fx_fireworks_purple);eff.depth = -5;
					eff = spawn_hit_fx(round(x)-30+(random_func(4,60,true)), round(y-110+(random_func(5,60,true))), player_id.fx_fireworks_blue);eff.depth = -5;
					eff = spawn_hit_fx(round(x), round(y-44), player_id.fx_fireworks_shot);eff.depth = -5;
				}shake_camera(5, 8);
				if(used){sound_play(fireworks_sfx);}
				hsp = 0;vsp = 0;
			}
		}else if(num2 == 2){ //stop
			if(image_index >= 3 && image_index < 8){
				hsp = 0;vsp = 0;
			}
			if(timer % 3 == 0 && image_index < 9 && image_index != 0){
				image_index += 1;
			}
			//after stopping once, it becomes interactible
			used = true;
			if(timer >= 20 || waspocketed && timer >= 60){
				Pocketable = true;
			}
			MattCanGrab = true;
			MorshuCanGrab = true;
		    CalCanSnack = 2;
			UnReflectable = false;
		}
		if(!used && (num2 == 0 || num2 == 1)){
			if(player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_USTRONG){
				x = player_id.x+(30*player_id.spr_dir);y = player_id.y-16;
			}
			if(player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND){
				num2 = 2;image_index = 0;timer = 0;sound_stop(thechargesfx);
			}
			chargesfx += 1;
			if(chargesfx >= 80){
				thechargesfx = sound_play(fireworks_sfx2,false,noone,0.5);chargesfx = 0;
			}
		}
		if(!free){
			hsp *= 0.5;
		}
		if(x > room_width+2000 || x < -2000 || y >= room_height+2000 || num2 == 2 && timer >= 90){
			sound_stop(thechargesfx);
			spawn_hit_fx(x, y, player_id.fx_dust);
			destroyed = true;
		}
		if(Pocketed || KoB_grabbed){
			num2 = 0;image_index = 0;timer = 0;waspocketed = true;
		}
	}else if(hbox_num != 1 && hbox_num != 5){ //fireworks explosions
		if(hitbox_timer >= 2){
			hit_priority = 0;Pocketable = false;
			if(hitbox_timer == 2 && hbox_num == 3){
				var eff = spawn_hit_fx(round(x)-30+(random_func(0,60,true)), round(y-30+(random_func(1,60,true))), player_id.fx_fireworks_blue);eff.depth = -5;
				eff = spawn_hit_fx(round(x)-30+(random_func(2,60,true)), round(y-30+(random_func(3,60,true))), player_id.fx_fireworks_purple);eff.depth = -5;
				eff = spawn_hit_fx(round(x)-30+(random_func(4,60,true)), round(y-30+(random_func(5,60,true))), player_id.fx_fireworks_yellow_slow);eff.depth = -5;
			}
		}else{
			Pocketable = true;
		}
		if("explosionnumber" in self && hitbox_timer == 5){
			var eff = spawn_hit_fx(round(x)-30+(random_func(0,60,true)), round(y-30+(random_func(1,60,true))), player_id.fx_fireworks_blue);eff.depth = -5;
			eff = spawn_hit_fx(round(x)-30+(random_func(2,60,true)), round(y-30+(random_func(3,60,true))), player_id.fx_fireworks_purple);eff.depth = -5;
			eff = spawn_hit_fx(round(x)-30+(random_func(4,60,true)), round(y-30+(random_func(5,60,true))), player_id.fx_fireworks_blue);eff.depth = -5;
			if(explosionnumber < 2){
				var fireworks = create_hitbox(AT_USTRONG, 2, round(x), round(y));fireworks.explosionnumber = explosionnumber+1;fireworks.used = used;fireworks.player = player;
				fireworks.PocketBuff = PocketBuff;
				if(PocketBuff > 0){
					fireworks.damage = ceil(fireworks.damage*(power(1.5,PocketBuff)));fireworks.kb_scale = fireworks.kb_scale*(power(1.25,PocketBuff));
					fireworks.damage = min(fireworks.damage,999);fireworks.kb_scale = min(fireworks.kb_scale,2);
				}
				if(explosionnumber <= 1){
					eff = spawn_hit_fx(round(x), round(y+44), player_id.fx_fireworks_shot);eff.depth = -5;
				}
			}else{
				eff = spawn_hit_fx(round(x), round(y), player_id.fx_fireworks_yellow);eff.depth = -4;
				eff = spawn_hit_fx(round(x)-30+(random_func(6,60,true)), round(y-30+(random_func(7,60,true))), player_id.fx_fireworks_yellow);eff.depth = -5;
				eff = spawn_hit_fx(round(x)-30+(random_func(8,60,true)), round(y-30+(random_func(9,60,true))), player_id.fx_fireworks_yellow);eff.depth = -5;
				var finisher = create_hitbox(AT_USTRONG, 3, round(x), round(y));finisher.player = player;
				if(used){
					finisher.kb_value = 7;finisher.kb_scale = 0.95;
				}
				finisher.PocketBuff = PocketBuff;
				if(PocketBuff > 0){
					finisher.damage = ceil(finisher.damage*(power(1.5,PocketBuff)));finisher.kb_scale = finisher.kb_scale*(power(1.25,PocketBuff));
					finisher.damage = min(finisher.damage,999);finisher.kb_scale = min(finisher.kb_scale,2);
				}
			}
		}
		if(Pocketed || KoB_grabbed){
			hitbox_timer = 0;
		}
	}
}else if (attack == AT_FAIR || attack == AT_BAIR){
	angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
	if((abs(vsp) >= 2 || abs(hsp) >= 2) || get_gameplay_time() % 2 == 0 ){
    	var fallfx = spawn_hit_fx(x, y, player_id.fx_slingshot_projectile_trail);fallfx.draw_angle = angle;
	}
	if (attack == AT_FAIR){
		if(hsp > 0){
			spr_dir = 1;
		}else{
			spr_dir = -1;
		}
	}else{
		if(hsp > 0){
			spr_dir = -1;
		}else{
			spr_dir = 1;
		}
	}
    if(hitbox_timer < 3){
    	if (attack == AT_FAIR){
        	damage = 5;kb_value = 6;kb_scale = 0.9;
    	}else{
    		damage = 8;kb_value = 7;kb_scale = 1.0;
    	}
        hitstun_factor = 1;
        image_xscale = 0.25;image_yscale = 0.25;
        sound_effect = asset_get("sfx_blow_heavy1");hit_effect = 304;
    }else if(hitbox_timer < 9){
    	if (attack == AT_FAIR){
        	damage = 3;kb_value = 5;kb_scale = 0.6;
    	}else{
    		damage = 4;kb_value = 5;kb_scale = 0.65;
    	}
        hitstun_factor = 0.6;
        image_xscale = 0.15;image_yscale = 0.15;
        sound_effect = asset_get("sfx_blow_medium3");hit_effect = 302;
    }else{
        damage = 2;kb_value = 4;kb_scale = 0.25;
        hitstun_factor = 0.25;
        image_xscale = 0.1;image_yscale = 0.1;
        sound_effect = asset_get("sfx_blow_medium2");hit_effect = 302;
    }
    if(hit_priority <= 0){
	    grounds = 1;walls = 1;
	    hitbox_timer = 0;
	    if(vsp < 0){
	        grav = 0.3;
	    }else{
	        grav = 0.7;
	    }
    }else{
	    grounds = 2;walls = 2;grav = 0.25;
	    with(pHitBox){
    	    if(place_meeting(x,y,other)){
    	        if(/*other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox &&*/ player != other.player && other != self){
    	            if(damage > 0 && kb_value > 0 && hit_priority > 0 && !proj_break && other.hit_priority > 0 || "ShieldHitbox" in self && ShieldHitbox){
    	                other.hit_priority = 0;other.hitbox_timer = 0;
    	                other.hsp = -0.5*other.spr_dir;other.vsp = -4;
    	    	        /*spawn_hit_fx(other.x, other.y, hit_effect);*/spawn_hit_fx(other.x, other.y, other.hit_effect);
    	    		    /*sound_play(sound_effect);*/sound_play(asset_get("sfx_blow_medium3"));
    	            }
    	        }
    	    }
	    }
    }
    if(x > room_width+2000 || x < -2000 || y >= room_height+2000){
		destroyed = true;
	}
}else if(attack == AT_DATTACK){
	if(!free){
		hsp *= .95;
		destroyed = true;
		with(player_id){
			sound_play(sound_get("dattack_break"),false,noone,0.7);
		}
	}
	proj_angle -= 2*spr_dir;
    if(hitbox_timer <= 4){
    	damage = 8;kb_angle = 70;
		kb_value = 7;kb_scale = .6;
		image_xscale = .2;image_yscale = .2;
		//sound_effect = asset_get("sfx_blow_medium3");
	}else{
    	if(vsp < 8){
			damage = 5;kb_angle = 70;
			kb_value = 7;kb_scale = .5;
			image_xscale = .15;image_yscale = .15;    
    	}else{
    		damage = 5;kb_angle = 300;
			kb_value = 5;kb_scale = .4;
			image_xscale = .15;image_yscale = .15;    
    	}
	}
}

//windboxes pushing projectiles
if (attack == AT_DSPECIAL && hbox_num == 2){
    with(pHitBox){
	    if(place_meeting(x,y,other)){
	    	if((player == other.player || "Villager" in player_id || other.player_id.op) && other != self && other.attack != attack && abs(hsp) < 10){
	            hsp += cos(degtorad(other.kb_angle))*((6+(3.6))*0.075)*other.spr_dir;
	            vsp -= -sin(degtorad(-other.kb_angle))*((6+(3.6))*0.075);
	            
	            if("Villager" in player_id){
	            	if (attack == AT_FSTRONG){
	            		hit_priority = 1;timer = 0;landtimer = 6;despawning = false;
	            		waspocketed = true;waspocketed2 = true;
        				damage = 8;kb_value = 7;kb_scale = 0.9;
	            	}
	            }
	        }
	    }
    }
}

if(attack == AT_TAUNT){
	with(pHitBox){
	    if(place_meeting(x,y,other)){
	        if(attack == AT_TAUNT && other != self)x += 100;
	    }
    }
}

stop_effect = false;
if(KoB_destroy){hitbox_timer = length;destroyed = true;}
draw_xscale = spr_dir;

}