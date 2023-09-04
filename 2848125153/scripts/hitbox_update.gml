//hitbox_update

if(attack == AT_NSPECIAL){
    if(hbox_num == 1){
    	dicenum = originalnum;
        if(hit_priority > 0){
            proj_angle -= 5*spr_dir;
        }else{
            proj_angle -= 15*spr_dir;
        }
        if(hsp > 0){
        	spr_dir = 1;
        }else if(hsp < 0){
        	spr_dir = -1;
        }
        if(num2 == 1){
            
        }else if(num2 == 2){
            if(get_gameplay_time() % 2 == 0){
	            var rand_dir = random_func(1, 359, true);
	            fire = spawn_hit_fx((x) + round(lengthdir_x(15, rand_dir)), y + round(lengthdir_y(15, rand_dir)), player_id.fx_fire);fire.depth = depth-1;
	        }
        }
        if(landtimer <= 0 && hit_priority > 0 && vsp > 0 && (position_meeting(x,y+30,asset_get("par_block")) || position_meeting(x,y+30,asset_get("par_jumpthrough")) && !position_meeting(x,y+15,asset_get("par_jumpthrough")))){
        	dust = spawn_hit_fx(x, y+15, player_id.fx_dust);dust.depth = depth-1;
        	sound_play(asset_get("sfx_land_med"));
        	landtimer = 6;dicearmor = round(dicearmororig/4);
        }landtimer -= 1;
        
	    if(instance_exists(thedice)){
	    	thedice.x = x; thedice.y = y;
	    }
	    if(instance_exists(thedice) && hit_priority > 0){
    	    with(asset_get("pHitBox")){
    	    	if(place_meeting(x,y,other.thedice)){
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox
    	            && (player_id == other.lasthitbox_player_id && (attack != other.lasthitbox_attack || attack == other.lasthitbox_attack && (hbox_group != other.lasthitbox_group || hbox_group == -1))
    	            || player_id != other.lasthitbox_player_id)
    	            && other != self && effect != 100){
    	            	
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
	                			if(other.playerurl == player_id.url){ //if the hitbox is from any mr monopoly
	                			    player_id.DairBounce = 1;
	                			}
	    	        		}
	    	        		if(player_id == other.originalplayer || player_id != other.originalplayer && type <= 1
	    	        		&& kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2 || type == 2 && kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2){
    	    		            other.current_player = player;other.player = player;
    	    		            knockback_angle = kb_angle;
	    	        			other.knockback_power = kb_value;
    	    		            other.hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*2)*spr_dir;
    	    		            if(other.hsp > 0){
    	    		            	other.spr_dir = 1;
    	    		            }else if(other.hsp < 0){
    	    		            	other.spr_dir = -1;
    	    		            }
    	    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
    	    		                other.vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*2);
    	    		            }else{
    	    		                other.vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*2);
    	    		            }
	    	        		}other.hit_priority = 4;
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    	                other.lasthitbox = id;other.lasthitbox_player_id = player_id;other.lasthitbox_group = hbox_group;other.lasthitbox_attack = attack;other.hitbox_timer = 0;
	    	                other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
    	            	}
    	            }
    	        }
    	    }
    	    if(instance_exists(lasthitbox_player_id)){
    	    	if(lasthitbox_player_id.state != PS_ATTACK_GROUND && lasthitbox_player_id.state != PS_ATTACK_AIR 
    	    	|| (lasthitbox_player_id.state == PS_ATTACK_GROUND || lasthitbox_player_id.state == PS_ATTACK_AIR) && lasthitbox_player_id.window == 1 && lasthitbox_player_id.window_timer == 1)lasthitbox_player_id = noone;
    	    }
	    }else if(!instance_exists(thedice) && dicetimer >= 10 && !dice_has_hit){
			destroyed = true;
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
	    if(hit_priority > 0 && (x > room_width+400 || x < -400 || y >= room_height+300) || hit_priority <= 0 && (x > room_width || x < 0 || y >= room_height) || y < -2000 || hitbox_timer >= length){
		    destroyed = true;
		    if(instance_exists(thedice)){
		    	thedice.destroyed = true;
		    }
		}
		hitbox_timer = min(hitbox_timer,10);
		dicetimer += 1;
		if(dicetimer >= 240){
			if(player_id.thedice1 == self){
				player_id.thedice1 = noone;
			}if(player_id.thedice2 == self){
				player_id.thedice2 = noone;
			}
		}
		if(hit_priority <= 0){
			grounds = 1;walls = 1;
		}else{
			grounds = 2;walls = 2;
		}
    }else if(hbox_num == 2){
        if(!instance_exists(thedice)){
			destroyed = true;
		}
		hitbox_timer = min(hitbox_timer,10);
    }
}

if(attack == AT_FSPECIAL){
    if(hbox_num <= 2){
        if(hsp > 0){
        	spr_dir = 1;
        }else if(hsp < 0){
        	spr_dir = -1;
        }
        if(hbox_num == 2){
            if(get_gameplay_time() % 4 == 0){
	            var rand_dir = random_func(1, 359, true);
	            fire = spawn_hit_fx((x) + round(lengthdir_x(15, rand_dir)), y + round(lengthdir_y(15, rand_dir)), player_id.fx_shine_small);fire.depth = depth-1;
	        }
        }
        if(hitstop <= 0){
        if(vsp > 8 || token_num == 7 && vsp > 2){ //spike
			kb_angle = 270;
			if(player_id.runeJ){random_angle();}
			if(abs(hsp) < 8 && abs(vsp) < 8){
				kb_value = 4;kb_scale = 0.5+(statboost/3)*critboost_kb_scale;damage = originaldamage*critboost_dmg;
				hitpause = 8;hitpause_growth = .7;hitstun_factor = 0.9;
            	sound_effect = asset_get("sfx_shovel_hit_heavy2");hit_effect = 302;
			}else{
				kb_value = 6;kb_scale = 0.6+(statboost/3)*critboost_kb_scale;damage = originaldamage+(2+(statboost*10))*critboost_dmg;
				hitpause = 12;hitpause_growth = 1;hitstun_factor = 1;
            	sound_effect = asset_get("sfx_shovel_hit_heavy1");hit_effect = 304;
			}
		}else{
			if(abs(hsp) < 8 && abs(vsp) < 8){
				kb_value = 6;kb_scale = 0.6+statboost*critboost_kb_scale;damage = originaldamage*critboost_dmg;
				hitpause = 8;hitpause_growth = .7;hitstun_factor = 0.9;
            	sound_effect = asset_get("sfx_shovel_hit_heavy2");hit_effect = 302;
			}else{
				kb_value = 7;kb_scale = 0.8+statboost*critboost_kb_scale;damage = originaldamage+(2+(statboost*10))*critboost_dmg;
				hitpause = 12;hitpause_growth = 1;hitstun_factor = 1;
            	sound_effect = asset_get("sfx_shovel_hit_heavy1");hit_effect = 304;
			}
		}
		if(hbox_num == 1 && (token_num == 0 || token_num == 5 || token_num == 6 || token_num == 7) && abs(hsp) < 8 && abs(vsp) < 8){ //lower hitstun for certain normal tokens when moving slowly (hat, iron, duck, shoe)
        	hitstun_factor = 0.7;
        }
		
		if(vsp < -8){ //up angle
			kb_angle = 90;if(player_id.runeJ){random_angle();}
		}else if(vsp < 8 && token_num != 7){ //horizontal angle
			kb_angle = 45;if(player_id.runeJ){random_angle();}
		}
        token_num = originalnum;
        if(token_num == 0){ //top hat
        	if(!free){
        		vsp = -6;
        	}
        }else if(token_num == 1){ //dog
        	if(abs(hsp) < 4){
				hsp += 0.5*spr_dir;
			}
        	if(!free){
	        	if(hit_priority > 0 && ((position_meeting(x,y+30,asset_get("par_block")) || position_meeting(x,y+30,asset_get("par_jumpthrough"))) && (!position_meeting(x+45*spr_dir,y+30,asset_get("par_block")) && !position_meeting(x+45*spr_dir,y+30,asset_get("par_jumpthrough"))))){
		        	hsp += 3*spr_dir;vsp = -10;can_hit[1] = true;can_hit[2] = true;can_hit[3] = true;can_hit[4] = true;
		        }else if(hit_priority > 0){
		        	vsp = -2;
		        }
	        }
        }else if(token_num == 2){ //cat
        	if(abs(hsp) < 3){
				hsp += 0.5*spr_dir;
			}
        	if(!free){
	        	if(hit_priority > 0 && ((position_meeting(x,y+30,asset_get("par_block")) || position_meeting(x,y+30,asset_get("par_jumpthrough"))) && (!position_meeting(x+45*spr_dir,y+30,asset_get("par_block")) && !position_meeting(x+45*spr_dir,y+30,asset_get("par_jumpthrough"))))){
		        	hsp += 1*spr_dir;vsp = -12;can_hit[1] = true;can_hit[2] = true;can_hit[3] = true;can_hit[4] = true;
		        }else if(hit_priority > 0){
		        	vsp = -1.5;
		        }
	        }
        	if(landtimer > 0 && (position_meeting(x,y+20,asset_get("par_block")) || position_meeting(x,y+20,asset_get("par_jumpthrough")))){
	        	landtimer = 20;
	        }
        }else if(token_num == 3){ //car
			if(abs(hsp) < 20){
				if(abs(hsp) < 2){
					hsp += 0.025*spr_dir;
        		}else{
        			hsp += 0.5*spr_dir;
        		}
			}
        }else if(token_num == 4){ //plane
        	if(abs(hsp) < 20){
        		if(abs(hsp) < 1){
					hsp += 0.025*spr_dir;
        		}else{
        			hsp += 0.5*spr_dir;
        		}
			}if(num2 == 0){
				vsp += 0.2;
				if(vsp > 0){
					num2 = 1;
				}
			}else if(num2 == 1){
				if(vsp > -3){
					if(abs(hsp) >= 1){
						vsp -= 0.15;
					}else{
						if(vsp > 0){
							vsp -= 0.075;
						}
					}
				}
			}
        	grav = 0;
        }else if(token_num == 5){ //duck
        	if(abs(hsp) < 4){
				hsp += 0.05*spr_dir;
			}if(num2 == 0){
				vsp -= 0.2;
				if(vsp < -4){
					num2 = 1;
				}
			}else if(num2 == 1){
				vsp += 0.2;
				if(vsp > 3){
					num2 = 0;
				}
			}
        	grav = 0;
        }else if(token_num == 6){ //iron
        	if(abs(hsp) < 5 && !free){
				hsp += 0.25*spr_dir;
			}
        }else if(token_num == 7){ //shoe
        	if(abs(hsp) < 1){
				hsp += 0.1*spr_dir;
			}
        	if(!free){
        		vsp = -6;
        	}if(vsp > 0){
        		vsp += 1.5;
        		if(num2 == 0 && vsp > 3){
        			can_hit[1] = true;can_hit[2] = true;can_hit[3] = true;can_hit[4] = true;
        			num2 = 1;
        		}
        	}else{
        		num2 = 0;
        	}
        }
        
        if(hittimer > -1){
	        hittimer -= 1;
	        if(hittimer == 0){
	        	can_hit[1] = true;can_hit[2] = true;can_hit[3] = true;can_hit[4] = true;
	        }
        }
        
        if(landtimer <= 0 && hit_priority > 0 && vsp > 0 && (position_meeting(x,y+30,asset_get("par_block")) || position_meeting(x,y+30,asset_get("par_jumpthrough")) && !position_meeting(x,y+15,asset_get("par_jumpthrough")))){
        	dust = spawn_hit_fx(x, y+15, player_id.fx_dust);dust.depth = depth-1;
        	sound_play(asset_get("sfx_land_med"));
        	landtimer = 20;
        }//if(free){
        	landtimer -= 1;
        //}
        }
        if(instance_exists(thedice)){
	    	thedice.x = x; thedice.y = y;
	    }
	    if(instance_exists(thedice) && hit_priority > 0){
    	    with(asset_get("pHitBox")){
    	    	if(place_meeting(x,y,other.thedice)){
    	    		if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox
    	            && (player_id == other.lasthitbox_player_id && (attack != other.lasthitbox_attack || attack == other.lasthitbox_attack && (hbox_group != other.lasthitbox_group || hbox_group == -1))
    	            || player_id != other.lasthitbox_player_id)
    	            && other != self && effect != 100){
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
	                			if(other.playerurl == player_id.url){ //if the hitbox is from any mr monopoly
	                			    player_id.DairBounce = 1;
	                			}
	    	        		}
	    	        		if(player_id == other.originalplayer || player_id != other.originalplayer && type <= 1
	    	        		&& kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2 || type == 2 && kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2){
    	    		            other.current_player = player;other.player = player;
    	    		            knockback_angle = kb_angle;
	    	        			other.knockback_power = kb_value;
    	    		            other.hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*2)*spr_dir;
    	    		            if(other.hsp > 0){
    	    		            	other.spr_dir = 1;
    	    		            }else if(other.hsp < 0){
    	    		            	other.spr_dir = -1;
    	    		            }
    	    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
    	    		                other.vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*2);
    	    		            }else{
    	    		                other.vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*2);
    	    		            }
	    	        		}other.hit_priority = 4;
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    	                other.lasthitbox = id;other.lasthitbox_player_id = player_id;other.lasthitbox_group = hbox_group;other.lasthitbox_attack = attack;other.hitbox_timer = 0;
	    	                other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
    	            	}
    	            }
    	        }
    	    }
    	    if(instance_exists(lasthitbox_player_id)){
    	    	if(lasthitbox_player_id.state != PS_ATTACK_GROUND && lasthitbox_player_id.state != PS_ATTACK_AIR 
    	    	|| (lasthitbox_player_id.state == PS_ATTACK_GROUND || lasthitbox_player_id.state == PS_ATTACK_AIR) && lasthitbox_player_id.window == 1 && lasthitbox_player_id.window_timer == 1)lasthitbox_player_id = noone;
    	    }
	    }else if(!instance_exists(thedice) && dicetimer >= 10 && hit_priority > 0){
			destroyed = true;
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
	    if(hit_priority > 0 && (x > room_width+400 || x < -400 || y >= room_height+300) || hit_priority <= 0 && (x > room_width || x < 0 || y >= room_height) || y < -2000 || hitbox_timer >= length){
		    destroyed = true;
		    if(instance_exists(thedice)){
		    	thedice.destroyed = true;
		    }
		}
		hitbox_timer = min(hitbox_timer,10);
		dicetimer += 1;
		if(dicetimer >= 90){
			if(player_id.thetoken == self){
				player_id.thetoken = noone;
			}
		}
		if(hit_priority <= 0){
			grounds = 1;walls = 1;
		}else{
			grounds = 0;walls = 2;
		}
    }
}

if(attack == AT_USPECIAL){
	if(hbox_num == 2){
		if(!Pocketed){
		hitbox_timer = 0;
		
		if(free){
			if(num == 0 && (abs(hsp) > 3 || abs(vsp) > 3) || num == 1 && (abs(hsp) > 7 || vsp > 7 || vsp < -7)){
				hit_priority = 2;
			}else{
				hit_priority = 0;
			}
			//num = 0;
			if(vsp > 3){ //spike
				kb_angle = 270;if(player_id.runeJ){random_angle();}
				if(num == 0){
		    		kb_value = 8;kb_scale = 0.8*critboost_kb_scale;damage = 12*critboost_dmg;dicearmor = 10;dicearmor2 = 10;
				}else{
					kb_value = 6;kb_scale = 0.6*critboost_kb_scale;damage = 8*critboost_dmg;dicearmor = 5;dicearmor2 = 5;
				}
			}else{
				if(num == 0){
					kb_value = 8;kb_scale = 1.0*critboost_kb_scale;damage = 12*critboost_dmg;dicearmor = 10;dicearmor2 = 10;
				}else{
					kb_value = 8;kb_scale = 0.9*critboost_kb_scale;damage = 8*critboost_dmg;dicearmor = 5;dicearmor2 = 5;
				}
			}
			if(vsp < -5){ //up angle
				kb_angle = 90;if(player_id.runeJ){random_angle();}
			}else if(vsp < 3){ //horizontal angle
				kb_angle = 45;if(player_id.runeJ){random_angle();}
			}num2 = 0;
		}else{
			/*num += 1;
			if(num >= 1200){
				destroyed = true;
			}*/
			num = 1;
			dicearmor = 5;dicearmor2 = 5;
			hit_priority = 0;
			if(hitstop <= 0){
				hsp *= 0.8;
			}
			if(num2 == 0){
				num2 = 1;
				shake_camera(10,8);sound_play(player_id.moneybaghitsfx2,false,noone,1);
				sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.5);sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.75);
			}
		}
		if(instance_exists(thedice)){
			thedice.x = x;thedice.y = y-45;thedice.spr_dir = spr_dir;
			thedice.hsp = round(hsp);thedice.vsp = round(vsp);
		}
		if (y >= room_height+500 || y < -2000 || x >= room_width+1000 || x < -1000) {
			destroyed = true;
		}
		
		/*if(instance_exists(thedice) && hit_priority > 0){*/
	    	//thedice.x = x; thedice.y = y;
    	    with(asset_get("pHitBox")){
    	    	if(place_meeting(x,y,other/*.thedice*/)){
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox
    	            && (player_id == other.lasthitbox_player_id && (attack != other.lasthitbox_attack || attack == other.lasthitbox_attack && (hbox_group != other.lasthitbox_group || hbox_group == -1))
    	            || player_id != other.lasthitbox_player_id)
    	            && other != self && effect != 100){
    	            	
    	            	if(damage > 0 && kb_value > 0 && hit_priority > 0){
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
	                			if(other.playerurl == player_id.url){ //if the hitbox is from any mr monopoly
	                			    player_id.DairBounce = 1;
	                			}
	    	        		}
	    	        		if(player_id == other.originalplayer || player_id != other.originalplayer && type <= 1
	    	        		&& kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2 || type == 2 && kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2){
    	    		            other.current_player = player;other.player = player;
    	    		            knockback_angle = kb_angle;
	    	        			other.knockback_power = kb_value;
    	    		            other.hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1)*spr_dir;
    	    		            if("ilovemychoochoo" in self && ilovemychoochoo){
    	    		            	other.hsp = hsp*2;other.hitlockout = 6;
    	    		            }
    	    		            if(other.hsp > 0){
    	    		            	other.spr_dir = 1;
    	    		            }else if(other.hsp < 0){
    	    		            	other.spr_dir = -1;
    	    		            }
    	    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
    	    		                other.vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*1);
    	    		            }else{
    	    		                other.vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1);
    	    		            }
    	    		            //if(other.vsp < 0 && !other.free){
    	    		            	//other.y -= 5;
    	    		            //}
	    	        		}
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    					if("ilovemychoochoo" not in self){
	    	                	other.lasthitbox = id;other.lasthitbox_player_id = player_id;other.lasthitbox_group = hbox_group;other.lasthitbox_attack = attack;
	    					}
	    	                other.hitbox_timer = 0;
	    	                other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
    	            	}
    	            }
    	        }
    	    }
    	    if(instance_exists(lasthitbox_player_id)){
    	    	if(lasthitbox_player_id.state != PS_ATTACK_GROUND && lasthitbox_player_id.state != PS_ATTACK_AIR 
    	    	|| (lasthitbox_player_id.state == PS_ATTACK_GROUND || lasthitbox_player_id.state == PS_ATTACK_AIR) && lasthitbox_player_id.window == 1 && lasthitbox_player_id.window_timer == 1)lasthitbox_player_id = noone;
    	    }
	    //}
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
		}else if(Pocketed){
			if(instance_exists(thedice)){
				thedice.x = x;thedice.y = y-9999;thedice.spr_dir = spr_dir;
				thedice.hsp = round(hsp);thedice.vsp = vsp;
			}
		}
	}else if(hbox_num == 3){
		depth = -2;hsp = 0;vsp = 0;hitbox_timer = 0;spr_dir = 1;
		/*if((!free || place_meeting(x,y,asset_get("par_block")) && hit_priority > 0) || y >= room_height+500 || x >= room_width+1000 || x < -1000){
            destroyed = true;
        }*/
        with(player_id){
        	if(state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_RESPAWN || state == PS_DEAD){
        		other.destroyed = true;
        		spawn_hit_fx(round(other.x) , round(other.y), 302);
        	}
        }
	}
}

if(attack == AT_DSPECIAL){
	if(hbox_num == 1 || hbox_num == 2 || hbox_num == 3){
		hitbox_timer = 0;
		//num = originalnum;
		//spr_dir = 1;
		moneytimer += 1;
		if(hbox_num == 1){
			if(housemoney >= 10000){
				destroyed = true;
				player_id.property = create_hitbox(AT_DSPECIAL, 2, round(x), round(y));player_id.property.housemoney2 = housemoney;
			}
			if(moneytimer >= 300){
				sound_play(sound_get("soldsfx"),false,noone,1.5);spawn_hit_fx(round(x), round(y), 302);
		    	player_id.current_money += 1000*income_boost;moneytimer = 0;
			}
		}else if(hbox_num == 2){
			if(housemoney >= 30000){
				destroyed = true;
				player_id.property = create_hitbox(AT_DSPECIAL, 3, round(x), round(y));player_id.property.housemoney2 = housemoney;
			}
			if(moneytimer >= 300){
				sound_play(sound_get("soldsfx"),false,noone,1.5);spawn_hit_fx(round(x), round(y), 304);
		    	player_id.current_money += 2000*income_boost;moneytimer = 0;
			}
		}else if(hbox_num == 3){
			if(moneytimer >= 600){
				sound_play(sound_get("soldsfx"),false,noone,1.5);spawn_hit_fx(round(x), round(y), 304);
		    	housemoney += 500*income_boost;moneytimer = 0;
			}
		}
		if(hbox_num == 1 && housemoney >= 10000 || hbox_num == 2 && housemoney >= 30000){
			with(player_id){
				rand = random_func(0, 2, true);
		    	if(rand <= 1){
		    		sound_stop(voice);voice = sound_play(sound_get("lets upgrade"));
		    	}
			}
		}
		if(free){
			if(abs(vsp) > 3){
				hit_priority = 2;
			}else{
				hit_priority = 0;
			}num2 = 0;
			Bounceable = true;
		}else{
			depth = -1;
			hit_priority = 0;
			if(num2 == 0){
				num2 = 1;
				shake_camera(10,8);sound_play(player_id.moneybaghitsfx2,false,noone,1);
				hsp = 0;vsp = 0;
			}
			if(destroysoon){
				destroying = true;
			}
			Bounceable = false;
		}
		if(instance_exists(thedice)){
			thedice.x = x;thedice.spr_dir = spr_dir;
			thedice.hsp = round(hsp);thedice.vsp = round(vsp);
			if(hbox_num == 1){
				thedice.y = y-26;
			}else if(hbox_num == 2){
				thedice.y = y-58;
			}else if(hbox_num == 3){
				thedice.y = y-58;
			}
		}
		if (hp <= 0 || y >= room_height || x >= room_width+1000 || x < -1000) {
			destroying = true;
		}
		
		/*if(instance_exists(thedice) && hit_priority > 0){*/
	    	//thedice.x = x; thedice.y = y;
    	    with(asset_get("pHitBox")){
    	    	if(place_meeting(x,y,other/*.thedice*/)){
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox
    	            && (player_id == other.lasthitbox_player_id && (attack != other.lasthitbox_attack || attack == other.lasthitbox_attack && (hbox_group != other.lasthitbox_group || hbox_group == -1))
    	            || player_id != other.lasthitbox_player_id)
    	            && player != other.player && get_player_team(player) != get_player_team(other.player) && other != self && effect != 100){
    	            	if(damage > 0 && kb_value > 0 && hit_priority > 0 && type <= 1){
    	            		if(throws_rock < 1 && type <= 1 && !other.player_id.runeF){
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
	                			if(other.playerurl == player_id.url){ //if the hitbox is from any mr monopoly
	                			    player_id.DairBounce = 1;
	                			}
	    	        		}
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    	                other.lasthitbox = id;other.lasthitbox_player_id = player_id;other.lasthitbox_group = hbox_group;other.lasthitbox_attack = attack;other.hitbox_timer = 0;
	    	                //other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
    	            	}
    	            }
    	            if(get_player_team(player) == get_player_team(other.player) && "current_money" in player_id && attack == AT_JAB && hbox_num >= 10 && hbox_num < 12 && !other.destroying){
    	            	if(other.hbox_num == 1 && other.housemoney < 10000 || other.hbox_num == 2 && other.housemoney < 30000 || other.hbox_num == 3){
	    	            	//other.num3 = 0;
	    	            	//with(other){
			                    destroyed = true;
			                    rand = random_func(0, 3, true);                    
			                    sound_play(sound_get("money_pickup"+string(rand+1)));
			                //}
			                other.housemoney += value;
    	            	}
    	            }
    	        }
    	    }
    	    if(instance_exists(lasthitbox_player_id)){
    	    	if(lasthitbox_player_id.state != PS_ATTACK_GROUND && lasthitbox_player_id.state != PS_ATTACK_AIR 
    	    	|| (lasthitbox_player_id.state == PS_ATTACK_GROUND || lasthitbox_player_id.state == PS_ATTACK_AIR) && lasthitbox_player_id.window == 1 && lasthitbox_player_id.window_timer == 1)lasthitbox_player_id = noone;
    	    }
	    //}
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
	    
	    if(hbox_num <= 2){
		    playermoneytimer -= 1;
		    with(oPlayer){
	    		if(place_meeting(x,y,other) && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) && other.playermoneytimer <= 0 && other.lastplayer != self && other.player_id != self){
	    			other.lastplayer = self;
	    			with(other){
		    	    	sound_play(sound_get("money_pickup2"),false,noone,2);sound_play(sound_get("soldsfx"),false,noone,2);
		    	    	spawn_hit_fx(round(x), round(y), 302);
		    	    	if(hbox_num == 1){
		    	    		player_id.current_money += 1000*income_boost;
		    	    	}else if(hbox_num == 2){
		    	    		player_id.current_money += 3000*income_boost;
		    	    	}
		    	    	playermoneytimer = 6;
	    			}
	    			if("current_money" in self){
	    				if(other.hbox_num == 1){
		    	    		current_money -= 1000*income_boost;
		    	    	}else if(other.hbox_num == 2){
		    	    		current_money -= 3000*income_boost;
		    	    	}
		    	    	if(current_money < 0){
		    	    		current_money = 0;
		    	    	}
	                }
	    		}
		    }
		    if(instance_exists(lastplayer)){
		    	with(lastplayer){
		    		if(state != PS_HITSTUN && state != PS_HITSTUN_LAND){
		    			other.lastplayer = noone;
		    		}
		    	}
		    }
		    if(hp < originalhp/2 || destroying){
		    	if(get_gameplay_time() % 6 == 0 || get_gameplay_time() % 2 == 0 && destroying){
		            var dust = spawn_hit_fx(round(x+(-40+random_func(0, 80, true))), round(y+(-50+random_func(1, 80, true))), player_id.fx_dust);dust.depth = depth-1;
		        }
		    }if(hp < originalhp/4 || destroying){
		    	if(get_gameplay_time() % 3 == 0 || get_gameplay_time() % 2 == 0 && destroying){
		            var fire = spawn_hit_fx(round(x+(-40+random_func(2, 80, true))), round(y+(-50+random_func(3, 80, true))), player_id.fx_fire);fire.depth = depth-1;
		        }
		    }
	    }else{
	    	if(hp < originalhp/2 || destroying){
		    	if(get_gameplay_time() % 6 == 0 || get_gameplay_time() % 2 == 0 && destroying){
		            var dust = spawn_hit_fx(round(x+(-50+random_func(0, 100, true))), round(y+(-90+random_func(1, 120, true))), player_id.fx_dust);dust.depth = depth-1;
		        }
		    }if(hp < originalhp/4 || destroying){
		    	if(get_gameplay_time() % 3 == 0 || get_gameplay_time() % 2 == 0 && destroying){
		            var fire = spawn_hit_fx(round(x+(-50+random_func(2, 100, true))), round(y+(-90+random_func(3, 120, true))), player_id.fx_fire);fire.depth = depth-1;
		        }
		    }
	    }
	    
	    if(destroying){
	    	if(hbox_num <= 2){
		    	if(get_gameplay_time() % 2 == 0){
		            var fire2 = spawn_hit_fx(round(x+(-60+random_func(4, 120, true))), round(y+(-60+random_func(5, 100, true))), player_id.fx_fire2);fire2.depth = depth-1;
		        }
	    	}else{
	    		if(get_gameplay_time() % 2 == 0){
		            var fire2 = spawn_hit_fx(round(x+(-70+random_func(4, 140, true))), round(y+(-100+random_func(5, 140, true))), player_id.fx_fire2);fire2.depth = depth-1;
		        }
	    	}
	    	if(housemoney > 0 && (hbox_num <= 2 || playerdead || was_parried2) && y < room_height){
	    		sound_play(player_id.moneysfx1,false,noone,2);
				sound_play(player_id.moneysfx2,false,noone,2);
	    		if(housemoney >= 600){
					var money = create_hitbox(AT_JAB, 10, round(x), round(y-25));money.hsp = 5-random_func(0, 10, true);money.vsp = -2-random_func(1, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;
					if(housemoney >= 3600 && housemoney >= 20000){
						money.value = 3600;housemoney -= 3600;
					}else if(housemoney >= 3000 && housemoney >= 15000){
						money.value = 3000;housemoney -= 3000;
					}else if(housemoney >= 2400 && housemoney >= 10000){
						money.value = 2400;housemoney -= 2400;
					}else if(housemoney >= 1800){
						money.value = 1800;housemoney -= 1800;
					}else if(housemoney >= 1200){
						money.value = 1200;housemoney -= 1200;
					}else{
						money.value = 600;housemoney -= 600;
					}
					if(housemoney >= 600){
						var money = create_hitbox(AT_JAB, 10, round(x), round(y-25));money.hsp = 5-random_func(1, 10, true);money.vsp = -2-random_func(2, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;
						if(housemoney >= 3600 && housemoney >= 20000){
							money.value = 3600;housemoney -= 3600;
						}else if(housemoney >= 3000 && housemoney >= 15000){
							money.value = 3000;housemoney -= 3000;
						}else if(housemoney >= 2400 && housemoney >= 10000){
							money.value = 2400;housemoney -= 2400;
						}else if(housemoney >= 1800){
							money.value = 1800;housemoney -= 1800;
						}else if(housemoney >= 1200){
							money.value = 1200;housemoney -= 1200;
						}else{
							money.value = 600;housemoney -= 600;
						}
						if(housemoney >= 600){
							var money = create_hitbox(AT_JAB, 10, round(x), round(y-25));money.hsp = 5-random_func(2, 10, true);money.vsp = -2-random_func(3, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;
							if(housemoney >= 3600 && housemoney >= 20000){
								money.value = 3600;housemoney -= 3600;
							}else if(housemoney >= 3000 && housemoney >= 15000){
								money.value = 3000;housemoney -= 3000;
							}else if(housemoney >= 2400 && housemoney >= 10000){
								money.value = 2400;housemoney -= 2400;
							}else if(housemoney >= 1800){
								money.value = 1800;housemoney -= 1800;
							}else if(housemoney >= 1200){
								money.value = 1200;housemoney -= 1200;
							}else{
								money.value = 600;housemoney -= 600;
							}
							if(housemoney >= 600){
								var money = create_hitbox(AT_JAB, 10, round(x), round(y-25));money.hsp = 5-random_func(3, 10, true);money.vsp = -2-random_func(4, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;
								if(housemoney >= 3600 && housemoney >= 20000){
									money.value = 3600;housemoney -= 3600;
								}else if(housemoney >= 3000 && housemoney >= 15000){
									money.value = 3000;housemoney -= 3000;
								}else if(housemoney >= 2400 && housemoney >= 10000){
									money.value = 2400;housemoney -= 2400;
								}else if(housemoney >= 1800){
									money.value = 1800;housemoney -= 1800;
								}else if(housemoney >= 1200){
									money.value = 1200;housemoney -= 1200;
								}else{
									money.value = 600;housemoney -= 600;
								}
							}
						}
					}
	    		}else{
	    			var money = create_hitbox(AT_JAB, 10, round(x), round(y-25));money.hsp = 5-random_func(0, 10, true);money.vsp = -2-random_func(1, 8, true);money.hitbox_timer = 20;money.hit_priority = 0;
	    			money.value = housemoney;housemoney = 0;
	    		}
			}else{
				destroytimer += 1;
				if(destroytimer >= 60 || y >= room_height){
					destroyed = true;
					if(hbox_num == 1){
						var explode = spawn_hit_fx(round(x) , round(y), player_id.fx_explosion);explode.draw_angle = random_func(0, 360, true);spawn_hit_fx(round(x) , round(y), 304);
						sound_play(sound_get("explosion"));sound_play(player_id.moneybaghitsfx2,false,noone,1);shake_camera(12, 7);
						create_hitbox(AT_DSPECIAL, 4, round(x), round(y));
					}else if(hbox_num == 2){
						var explode = spawn_hit_fx(round(x) , round(y-20), player_id.fx_explosion);explode.draw_angle = random_func(0, 360, true);spawn_hit_fx(round(x) , round(y-20), 304);
						sound_play(sound_get("explosion"));sound_play(player_id.moneybaghitsfx2,false,noone,1);shake_camera(15, 10);
						create_hitbox(AT_DSPECIAL, 5, round(x), round(y-20));
					}else if(hbox_num == 3){
						var explode = spawn_hit_fx(round(x) , round(y-45), player_id.fx_explosion_big);explode.draw_angle = random_func(0, 360, true);spawn_hit_fx(round(x) , round(y-45), 304);
						sound_play(sound_get("explosion"));sound_play(player_id.moneybaghitsfx2,false,noone,1);shake_camera(20, 12);
						create_hitbox(AT_DSPECIAL, 6, round(x), round(y-45));
						if(y < room_height && !was_parried2){
							player_id.current_money += housemoney;
							sound_play(player_id.moneysfx1,false,noone,2);sound_play(player_id.soldsfx,false,noone,3);
						}
					}
				}
			}
	    }
	}
}

if(attack == AT_JAB){
	through_platforms = 999;
    fall_through = true;
	if(hbox_num == 10){
		hsp *= 0.95;vsp *= 0.95;
		if(hitbox_timer >= 10){
			hit_priority = 0;image_xscale = 0.2;image_yscale = 0.2;
		}if(hitbox_timer >= 100)depth = -2;
		if(!free){
			destroyed = true;
			//create_hitbox(AT_JAB, 11, round(x), round(y+8));
			var pile = create_hitbox(AT_JAB, 11, round(x), round(y+8));
            pile.value = value;pile.hitbox_timer = hitbox_timer;
			sound_play(sound_get("money_land"),false,noone,2);
		}
		var distance = point_distance(x, y, player_id.x, player_id.y - 30);
		if(hitbox_timer >= 70 && (!player_id.runeK && distance < 90 || player_id.runeK && distance < 300)
		&& player_id.state != PS_HITSTUN && player_id.state != PS_HITSTUN_LAND && player_id.state != PS_PRATFALL && player_id.state != PS_PRATLAND && player_id.state != PS_DEAD && player_id.state != PS_RESPAWN){
			var angle = point_direction(x, y, player_id.x, player_id.y - 30);
			hsp = lengthdir_x(5, angle);
			vsp = lengthdir_y(5, angle);
		}
		if (y >= room_height+500 || x >= room_width+1000 || x < -1000) {
			destroyed = true;
		}
	}else if(hbox_num == 11){
		if(hitbox_timer >= 100)depth = -2;
		if(free){
			num += 1;
			if(num >= 10 && !destroyed){
				var money = create_hitbox(AT_JAB, 10, round(x), round(y-8));
				money.hsp = hsp*0.5;money.vsp = vsp*0.25;money.hitbox_timer = 90;money.hit_priority = 0;money.value = value;
				destroyed = true;
			}
		}else{
			num = 0;
		}
		if(hitbox_timer >= 180){
			if(hitbox_timer >= 120 && hitbox_timer < 240 && hitbox_timer % 12 == 0 || hitbox_timer >= 240 && hitbox_timer % 5 == 0){
		    	if(num2 == 0){
		    		sprite_index = asset_get("empty_sprite");num2 = 1;
		    	}else{
		    		sprite_index = sprite_get("moneypile");num2 = 0;
		    	}
			}
		}else{
			if(num2 != 0){
				sprite_index = sprite_get("moneypile");num2 = 0;
			}
		}
	}
	if(!destroyed && (hbox_num == 10 && hitbox_timer >= 60 && hitbox_timer % 10 == 0 || hbox_num == 11 && hitbox_timer <= 10)){
		with(asset_get("pHitBox")){
			var dist = point_distance(other.x, other.y, x, y); //distance
	    	if(self != other && ((other.hbox_num == 10 && dist < 65 || other.hbox_num == 11 && dist < 50) || place_meeting(x,y,other))){
	            if(/*get_player_team(player) == get_player_team(other.player) &&*/ "current_money" in player_id && attack == AT_JAB && hbox_num == other.hbox_num && !destroyed && !other.destroyed){
	            	other.destroyed = true;
		            value += other.value;
		            if(hbox_num == 11){
		            	hitbox_timer = 0;
		            }
	            }
	        }
	    }
	}
	
	if((hbox_num == 10 || hbox_num == 11) && value >= 1000){
		if(value >= 1000 && get_gameplay_time() % 14 == 0 || value >= 2000 && get_gameplay_time() % 10 == 0 || value >= 3000 && get_gameplay_time() % 6 == 0 || value >= 4000 && get_gameplay_time() % 2 == 0){
	    	var rand_dir = random_func(1, 359, true);
	    	var sparkle = spawn_hit_fx((x) + round(lengthdir_x(15, rand_dir)), y + round(lengthdir_y(15, rand_dir)), player_id.fx_shine_small);sparkle.depth = depth-1;
		}
	}
	if((hbox_num == 10 || hbox_num == 11) && hitbox_timer >= 70){
        with(oPlayer){
            //var dist = point_distance(other.x, other.y+50, x, y); //distance
            //if(dist <= 60 && !other.destroyed && hitstun <= 0){
            if(place_meeting(x,y,other) && !other.destroyed && /*hitstun <= 0*/ state != PS_HITSTUN && state != PS_HITSTUN_LAND && state != PS_PRATFALL && state != PS_PRATLAND && state != PS_DEAD && state != PS_RESPAWN
            && (get_player_team(player) == get_player_team(other.player) && other.hitbox_timer >= 70 || get_player_team(player) != get_player_team(other.player) && other.hitbox_timer >= 100)){
                with(other){
                    destroyed = true;
                    rand = random_func(0, 3, true);                    
                    sound_play(sound_get("money_pickup"+string(rand+1)));
                }
                if(get_player_team(player) == get_player_team(other.player) && self != other.player_id){
                    other.player_id.current_money += other.value;
                }
                if("current_money" in self){
                    current_money += other.value;
                }
            }
        }    
    }
}

if(attack == AT_DATTACK){
	if("Pocketed" not in self){Pocketed = false;}
	if(hbox_num == 4 && !Pocketed){
		hitbox_timer = 0;
		
		with(player_id){
			move_cooldown[AT_DATTACK] = 30;
		}
		/*if(abs(hsp) < 10){
			hsp += 0.3*spr_dir;
		}else if(abs(hsp) < 16){
			hsp += 0.15*spr_dir;*/
		//}else{
			hsp += 0.05*spr_dir;
		//}
		if(abs(hsp) > 14 || abs(vsp) > 14){
			kb_value = 8;kb_scale = 1.0*critboost_kb_scale;
            hitstun_factor = 1;damage = 8*critboost_dmg;kb_angle = 361;if(player_id.runeJ){random_angle();}
            hitpause = 12;hitpause_growth = 1;
            sound_effect = asset_get("sfx_shovel_hit_heavy1");
			hit_priority = 2;num = 1;hit_effect = 304;
		}else if(abs(hsp) > 7 || abs(vsp) > 7){
			kb_value = 7;kb_scale = 0.9*critboost_kb_scale;
            hitstun_factor = 0.9;damage = 6*critboost_dmg;kb_angle = 361;if(player_id.runeJ){random_angle();}
            hitpause = 8;hitpause_growth = .7;
            sound_effect = asset_get("sfx_shovel_hit_heavy1");
			hit_priority = 2;num = 2;hit_effect = 304;
		}else if(abs(hsp) > 3 || abs(vsp) > 3){
			kb_value = 6;kb_scale = 0.5*critboost_kb_scale;
            hitstun_factor = 0.5;damage = 3*critboost_dmg;kb_angle = 361;if(player_id.runeJ){random_angle();}
            hitpause = 6;hitpause_growth = .5;
            sound_effect = asset_get("sfx_shovel_hit_heavy2");
			hit_priority = 2;num = 3;hit_effect = 302;
		}else{
			num = 3;
			hit_priority = 0;
		}
		/*if(!instance_exists(thedice) || instance_exists(thedice) && thedice.hbox_num != num+4){
			if(instance_exists(thedice)){
				thedice.destroyed = true;
			}
			thedice = create_hitbox(AT_DATTACK, num+4, x, y);
		}*/
		if(instance_exists(thedice)){
			thedice.x = x;thedice.y = y-16;thedice.spr_dir = spr_dir;
			thedice.hsp = round(hsp);thedice.vsp = vsp;
		}
		if(!free && (num = 1 && get_gameplay_time() % 2 == 0 || num = 2 && get_gameplay_time() % 4 == 0 || num = 3 && get_gameplay_time() % 6 == 0)){
			var dusteff = spawn_hit_fx(x-15*spr_dir,y+27,player_id.fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			dusteff = spawn_hit_fx(x+40*spr_dir,y-23,player_id.fx_dust);dusteff.depth = depth-1;
		}
		if (y >= room_height+500 || x >= room_width+1000 || x < -1000) {
			destroyed = true;
		}
		
		/*if(instance_exists(thedice) && hit_priority > 0){*/
	    	//thedice.x = x; thedice.y = y;
    	    with(asset_get("pHitBox")){
    	    	if(place_meeting(x,y,other/*.thedice*/)){
    	            if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox
    	            && (player_id == other.lasthitbox_player_id && (attack != other.lasthitbox_attack || attack == other.lasthitbox_attack && (hbox_group != other.lasthitbox_group || hbox_group == -1))
    	            || player_id != other.lasthitbox_player_id)
    	            && other != self && effect != 100){
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
	                			if(other.playerurl == player_id.url){ //if the hitbox is from any mr monopoly
	                			    player_id.DairBounce = 1;
	                			}
	    	        		}
	    	        		if(player_id == other.originalplayer || player_id != other.originalplayer && type <= 1
	    	        		&& kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2 || type == 2 && kb_value+(kb_scale*6) > other.dicearmor+other.dicearmor2){
    	    		            other.current_player = player;other.player = player;
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
    	    		            //if(other.vsp < 0 && !other.free){
    	    		            	//other.y -= 5;
    	    		            //}
	    	        		}
	    	                spawn_hit_fx(other.x, other.y, hit_effect);
	    					sound_play(sound_effect);
	    	                other.lasthitbox = id;other.lasthitbox_player_id = player_id;other.lasthitbox_group = hbox_group;other.lasthitbox_attack = attack;other.hitbox_timer = 0;
	    	                other.can_hit[1] = true;other.can_hit[2] = true;other.can_hit[3] = true;other.can_hit[4] = true;
    	            	}
    	            }
    	        }
    	    }
    	    if(instance_exists(lasthitbox_player_id)){
    	    	if(lasthitbox_player_id.state != PS_ATTACK_GROUND && lasthitbox_player_id.state != PS_ATTACK_AIR 
    	    	|| (lasthitbox_player_id.state == PS_ATTACK_GROUND || lasthitbox_player_id.state == PS_ATTACK_AIR) && lasthitbox_player_id.window == 1 && lasthitbox_player_id.window_timer == 1)lasthitbox_player_id = noone;
    	    }
	    //}
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
	}else if(Pocketed){
		if(instance_exists(thedice)){
			thedice.x = x;thedice.y = y-9999;thedice.spr_dir = spr_dir;
			thedice.hsp = round(hsp);thedice.vsp = vsp;
		}
	}
	if(hbox_num == 10){
		hitbox_timer = 0;
		x = player_id.x+(65*player_id.spr_dir);y = player_id.y-35;
    	with(asset_get("pHitBox")){
			if(place_meeting(x,y,other) && other.player_id.state != PS_HITSTUN && other.player_id.state != PS_HITSTUN_LAND){
				if(other.hitlockout <= 0 && other.hitlockout2 <= 0 && self != other.lasthitbox
	            && (player_id == other.lasthitbox_player_id && (attack != other.lasthitbox_attack || attack == other.lasthitbox_attack && (hbox_group != other.lasthitbox_group || hbox_group == -1))
	            || player_id != other.lasthitbox_player_id)
	            && player != other.player && other != self && effect != 100){
			    	if(damage > 0 && kb_value > 0 && hit_priority > 0 && player != other.player){
				    	other.hitlockout = 6;other.hitlockout2 = 10;
	        			other.hitpausehit = hitpause;other.in_hitpause = true;
	        			if(other.hitpausehit <= 0){
	        				other.hitpausehit = 5;
	        			}
	        			other.hitstop = other.hitpausehit;
						other.player_id.hitpause = true;other.player_id.hitstop = hitpause;
						if(kb_value+(kb_scale*6) > other.armor){
	                		knockback_angle = kb_angle;
		        			other.knockback_power = kb_value;
	    		            other.player_id.old_hsp = cos(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5)*spr_dir;
	    		            if(other.player_id.old_hsp > 0){
	    		            	other.spr_dir = 1;
	    		            }else if(other.player_id.old_hsp < 0){
	    		            	other.spr_dir = -1;
	    		            }
	    		            if(!other.free && (knockback_angle > 180 && knockback_angle < 360)){
	    		                other.player_id.old_vsp = -sin(degtorad(-knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5);
	    		            }else{
	    		                other.player_id.old_vsp = -sin(degtorad(knockback_angle))*(other.knockback_power+(kb_scale*6)*1.5);
	    		            }
						}
						if(type == 1){
	    	        		player_id.hitpause = true;player_id.hitstop = hitpause;
	                		player_id.old_hsp = player_id.hsp;player_id.old_vsp = player_id.vsp;
						}
						spawn_hit_fx(other.x, other.y, hit_effect);
						sound_play(sound_effect);
		                other.lasthitbox = id;other.lasthitbox_player_id = player_id;other.lasthitbox_group = hbox_group;other.lasthitbox_attack = attack;other.hitbox_timer = 0;
			    	}
	            }
			}
		}
		if(instance_exists(lasthitbox_player_id)){
	    	if(lasthitbox_player_id.state != PS_ATTACK_GROUND && lasthitbox_player_id.state != PS_ATTACK_AIR 
	    	|| (lasthitbox_player_id.state == PS_ATTACK_GROUND || lasthitbox_player_id.state == PS_ATTACK_AIR) && lasthitbox_player_id.window == 1 && lasthitbox_player_id.window_timer == 1)lasthitbox_player_id = noone;
	    }
		if(player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR || (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.window >= 6){
			destroyed = true;
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
	}
}

if(attack == AT_BAIR){
	if(hbox_num >= 3){
		angle = darctan2(-vsp * spr_dir, hsp * spr_dir);proj_angle = angle;
		
		if(vsp > 5){ //spike
			kb_angle = 270;if(player_id.runeJ){random_angle();}
	    	if(hbox_num == 3){
	    		kb_value = 4;kb_scale = 0.3*critboost_kb_scale;
	    	}else if(hbox_num == 4){
	    		kb_value = 5;kb_scale = 0.5*critboost_kb_scale;
	    	}else if(hbox_num == 5){
	    		kb_value = 6;kb_scale = 0.6*critboost_kb_scale;
	    	}
		}else{
			if(hbox_num == 3){
	    		kb_value = 6;kb_scale = 0.3*critboost_kb_scale;
	    	}else if(hbox_num == 4){
	    		kb_value = 7;kb_scale = 0.75*critboost_kb_scale;
	    	}else if(hbox_num == 5){
	    		kb_value = 8;kb_scale = 1.0*critboost_kb_scale;
	    	}
		}
		if(vsp < -5){ //up angle
			kb_angle = 90;if(player_id.runeJ){random_angle();}
		}else if(vsp < 5){ //horizontal angle
			kb_angle = 45;if(player_id.runeJ){random_angle();}
		}
		
		with(asset_get("pHitBox")){
	        if(player != other.player && get_player_team(player) != get_player_team(other.player)){
	            if(place_meeting(x,y,other)){
	            	if(damage > 0 && kb_value > 0 && hit_priority > 0 && !proj_break){
	            		other.destroyed = true;
	            	}
	            }
	        }
	    }
		
		if((!free || place_meeting(x,y,asset_get("par_block")) && hit_priority > 0) || y >= room_height+500 || x >= room_width+1000 || x < -1000){
            destroyed = true;
        }
        
        if(destroyed){
        	if(hbox_num >= 3){
        		sound_play(player_id.moneysfx1,false,noone,2)
				sound_play(player_id.moneysfx2,false,noone,2)
				var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(0, 10, true);money.vsp = -2-random_func(1, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
				money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(1, 10, true);money.vsp = -2-random_func(2, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
				if(hbox_num >= 4){
					var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(1, 10, true);money.vsp = -2-random_func(2, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
					money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(2, 10, true);money.vsp = -2-random_func(3, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
					if(hbox_num >= 5){
						var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(4, 10, true);money.vsp = -2-random_func(5, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
						money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(5, 10, true);money.vsp = -2-random_func(6, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
						money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 5-random_func(6, 10, true);money.vsp = -2-random_func(7, 12, true);money.hitbox_timer = 20;money.hit_priority = 0;
		        	}
	        	}
	        	if(hbox_num == 3){
		    		shake_camera(2,3);sound_play(player_id.moneybaghitsfx2,false,noone,1);
		    	}else if(hbox_num == 4){
		    		shake_camera(3,5);sound_play(player_id.moneybaghitsfx,false,noone,1.5);
		    	}else if(hbox_num == 5){
		    		shake_camera(8,7);sound_play(player_id.moneybaghitsfx,false,noone,1.5);sound_play(player_id.moneybagsfx,false,noone,1);
		    	}
        	}
        }
        //print(Pocket_hud_imageindex);
	}
}

//REFLECT
if(attack == AT_DSTRONG && hbox_num == 6){
    //NEW REFLECT CODE
    reflect_target = noone;
    reflect_type = 0;
    
    if(!instance_exists(reflect_target)){
    	with(pHitBox){
	    	if(place_meeting(x,y,other) && type == 2 && other.reflect_target != self && (other.player != player || other.player == player && attack == AT_BAIR && hbox_num >= 3 && vsp > 0) && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article1){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article2){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article3){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article_solid){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
	    		other.reflect_target = self;
	    	}
    	}
    }if(!instance_exists(reflect_target)){
    	with(obj_article_platform){
	    	if(place_meeting(x,y,other) && other.reflect_target != self && other.player != player && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
	    		other.reflect_target = self;
	    	}
    	}
    }
    if(instance_exists(reflect_target)){
    	with(reflect_target){
    		player = other.player;
    		spr_dir = other.spr_dir; //flips it to monopoly's direction
    		var oldspeed = abs(hsp)+abs(vsp);
			hsp = (10+(oldspeed/2))*other.spr_dir;vsp = -(10+(oldspeed/2));
    		if("was_parried" in self){
		    	was_parried = true;
			}if("hitbox_timer" in self){
		    	hitbox_timer = 0;
			}if("damage" in self){
		    	damage *= 1.5;
			}if("kb_scale" in self){
			    kb_scale *= 1.25;
			}if("hit_priority" in self && hit_priority <= 0){
				hit_priority = 1;
			}
    	}
    	spawn_hit_fx(reflect_target.x, reflect_target.y, 194);
    	sound_play(sound_get("reflect"));
    }
}

draw_xscale = spr_dir;

#define random_angle
	kb_angle = random_func(0, 360, true);
	hit_flipper = random_func(1, 11, true);