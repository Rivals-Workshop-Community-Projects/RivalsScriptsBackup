//

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	if(window < 2 && b_reversed == false){
    	KoB_reverse();
	}
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		sfx = sound_play(sound_get("pocket2"),false,noone,0.7);
		Pocket_Hitbox = create_hitbox(AT_NSPECIAL, 1, x+55*spr_dir, y-25);
	}
	if(window == 1 && window_timer >= 4 || window == 2 && window_timer < 10 || window <= 2 && runeF){
		invincible = true;//invince_time = 6;
	}
	if(window == 3 && window_timer >= 22 || window == 4 && window_timer >= 18 || window == 7 && window_timer >= 8){
		cancelattack2();
	}
	if(!instance_exists(Pocketed_Projectile) && (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || window == 2 && window_timer < 15)){
		with(obj_article1)pocket_article_if_valid();
    	with(obj_article2)pocket_article_if_valid();
    	with(obj_article3)pocket_article_if_valid();
    	with(obj_article_solid)pocket_article_if_valid();
    	with(obj_article_platform)pocket_article_if_valid();
	}
	
	if(instance_exists(Pocketed_Projectile)){
		if(window <= 3){
			Pocketed_Projectile.x = ease_expoOut(round(Pocketed_Projectile.x), round(x+(40*spr_dir)), 1, 20);
			Pocketed_Projectile.y = ease_expoOut(round(Pocketed_Projectile.y), round(y-25), 1, 20);
			Pocketed_Projectile.hsp = hsp;Pocketed_Projectile.vsp = vsp;
		}
		var dist = point_distance(x+40*spr_dir, y-25, Pocketed_Projectile.x, Pocketed_Projectile.y); //distance
	    if(dist <= 20 || window >= 3){
	    	Pocketed_Projectile.sprite_index = asset_get("empty_sprite");
	    	if(window < 4){
	    		window = 4;window_timer = 0;
	    		sound_play(sound_get("pocket3"),false,noone,0.7);
	    	}
	    }
	}else{
		if(window == 3 && window_timer == 18 && !hitpause){
			sound_play(sound_get("pocket_miss"),false,noone,1);
		}
	}
	if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if(instance_exists(Pocketed_Projectile)){
			sound_play(sound_get("pocket_throw"),false,noone,1);
			thepocketedprojectile = Pocketed_Projectile;Pocketed_Projectile = noone;
			thepocketedprojectile.player = player;
			if("current_player" in thepocketedprojectile){
				thepocketedprojectile.current_player = player;
			}
			thepocketedprojectile.spr_dir = spr_dir;thepocketedprojectile.hsp = pocket_hsp*spr_dir;thepocketedprojectile.vsp = pocket_vsp;
        	thepocketedprojectile.y = y-30;thepocketedprojectile.x = x+40*spr_dir;
	        thepocketedprojectile.sprite_index = pocket_projectile_sprite;thepocketedprojectile.image_index = pocket_projectile_sprite_imageindex;
	        thepocketedprojectile.transcendent = pocket_transcendent;thepocketedprojectile.grounds = pocket_grounds;thepocketedprojectile.walls = pocket_walls;
        	if(pocket_projectile){
        		thepocketedprojectile.hit_priority = 4;
        		if(pocket_buff /*thepocketedprojectile.player_id != self*/ || (has_rune("O") || runeO)){ //only buff if it isnt your own, cuz blnce
	            	thepocketedprojectile.damage = ceil(thepocketedprojectile.damage*1.5);thepocketedprojectile.kb_scale *= 1.25;
	            	thepocketedprojectile.damage = min(thepocketedprojectile.damage,999);thepocketedprojectile.kb_scale = min(thepocketedprojectile.kb_scale,2);
        		}
            	thepocketedprojectile.can_hit[1] = true;thepocketedprojectile.can_hit[2] = true;thepocketedprojectile.can_hit[3] = true;thepocketedprojectile.can_hit[4] = true;
            	with(thepocketedprojectile){
	            	if("MattStar" in self && MattStar){
	                	hit_effect = player_id.fx_starhit_big;sound_effect = player_id.starheavyhitsfx;
		        	}
            	}
        	}else{
	        	with(thepocketedprojectile){
			    	if(other.pocket_handle_state){
			        	state = 2;
			    	}
		    	}
        	}if("PocketBuff" in thepocketedprojectile && (pocket_buff || (has_rune("O") || runeO))){ //only buff if it isnt your own, cuz blnce
        		thepocketedprojectile.PocketBuff += 1;
        	}if("Pocketed" in thepocketedprojectile){
				thepocketedprojectile.Pocketed = false;
			}if("PocketableByOwner" in thepocketedprojectile){
				thepocketedprojectile.PocketableByOwner = 0;
			}
        	pocket_projectile = false;pocket_article = false;
		}
	}
}else if (attack == AT_FSPECIAL){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		if(!instance_exists(Lloid_Rocket)){
			vsp = 0;hsp = 0;fspec_spawned = true;
			sound_play(sound_get("fspecial_spawn"),false,noone,1);
        	Lloid_Rocket = create_hitbox(AT_FSPECIAL, 1, x+45*spr_dir, y-25);
        	var lloid_hit_collision = create_hitbox(AT_FSPECIAL, 2, x+45*spr_dir, y-25);lloid_hit_collision.theotherhitbox = Lloid_Rocket;
        	Lloid_Rocket.theotherhitbox = lloid_hit_collision;
		}
    }
    if(window == 2 && fspec_spawned && !hitpause){
		vsp = 0;hsp = 0;
		if(instance_exists(Lloid_Rocket) && Lloid_Rocket.player == player && special_down && !Lloid_Rocket_Ride){
			window = 4;window_timer = 0;Lloid_Rocket_Ride = true;
			set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
			Lloid_Rocket.rider = self;Lloid_Rocket.timer = 20;
			Lloid_Rocket.damage = 12;Lloid_Rocket.kb_scale = 1.05;
		}
    }
    if(window >= 4 && !instance_exists(Lloid_Rocket)){
		window = 10;window_timer = 0;
    }
}else if (attack == AT_USPECIAL){
	if(window <= 5){
		can_fast_fall = false;can_wall_jump = false;uspec_landed = false;
		can_move = false;
		if(right_down && hsp < 4*uspec_speed*uspec_speed_multiplier && !hitpause){
			hsp += 0.25*uspec_speed*uspec_speed_multiplier;
		}else if(left_down && hsp > -4*uspec_speed*uspec_speed_multiplier && !hitpause){
			hsp -= 0.25*uspec_speed*uspec_speed_multiplier;
		}
	}else{
		can_fast_fall = true;can_wall_jump = true;
	}
	if(window == 1){
		move_cooldown[AT_USPECIAL] = 999;
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("uspecial"),false,noone,1);vsp = -3;
			balloon1 = create_hitbox(AT_USPECIAL, 1, x+25*spr_dir, y-80);balloon1.num3 = 0;
			var balloon_collision = create_hitbox(AT_USPECIAL, 2, x+45*spr_dir, y-25);balloon_collision.theotherhitbox = balloon1;
        	balloon1.theotherhitbox = balloon_collision;
        	
        	if(!uspec_landed2)uspec_fuel -= 60;
        	uspec_landed2 = false;
        	
        	if(instance_exists(Pocketed_Projectile) && "Villager_Balloon" in Pocketed_Projectile){
        		Pocketed_Projectile.destroyed = true;Pocketed_Projectile = noone;
	        	pocket_projectile = false;pocket_article = false;
	        	uspec_fuel += 120;vsp = -5;
        	}
        	if(uspec_fuel >= 90){
	        	balloon2 = create_hitbox(AT_USPECIAL, 1, x-15*spr_dir, y-80);balloon2.num3 = 3;balloon2.spr_dir = -spr_dir;
				var balloon_collision = create_hitbox(AT_USPECIAL, 2, x+45*spr_dir, y-25);balloon_collision.theotherhitbox = balloon2;
	        	balloon2.theotherhitbox = balloon_collision;
        	}
		}
		//if moving backwards and the player is holding forward, slow down the hsp
		if(hsp*spr_dir < 0 && (spr_dir == 1 && right_down || spr_dir == -1 && left_down))hsp *= 0.25;
	}else if(window == 5){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			window = 4;window_timer = 0;
		}
	}else if(window == 6){ //fall
		uspec_fall -= 1;
		if(uspec_fall <= 0){
			window = 9;window_timer = 0;
		}
	}
	if(window == 4 || window == 5){
		uspec_fuel -= 1;
		vsp = min(vsp,4*uspec_speed*uspec_speed_multiplier);vsp = max(vsp,-4*uspec_speed*uspec_speed_multiplier);
		
		if(attack_pressed || shield_pressed || uspec_fuel <= 0 || !instance_exists(balloon1) && !instance_exists(balloon2)){
			if(!runeD || runeD && (!instance_exists(balloon1) && !instance_exists(balloon2) || shield_pressed || uspec_fuel <= 0)){
				window = 6;window_timer = 0;vsp = -3;sound_play(sound_get("uspecial_stop"),false,noone,1);sound_play(sound_get("uspecial_fall"),false,noone,1);
				if(!instance_exists(balloon1) && !instance_exists(balloon2)){ //both balloons popped
					uspec_fall = round(60+(150-uspec_fuel/2));
					if(runeD && attack_pressed){
						vsp = -8;
					}
				}else if(uspec_fuel <= 0){ //no more fuel
					uspec_fall = 75;
				}else{ //normal cancel
					uspec_fall = round(10+(60-uspec_fuel/5));
				}
			}else if(runeD && attack_pressed && (instance_exists(balloon1) || instance_exists(balloon2))){
				if(instance_exists(balloon1)){
					balloon1.hp = 0;
				}else if(instance_exists(balloon2)){
					balloon2.hp = 0;
				}if(instance_exists(balloon1) && balloon1.hp > 0 || instance_exists(balloon2) && balloon2.hp > 0){clear_button_buffer(PC_ATTACK_PRESSED);}
			}
		}else if((special_down || jump_down) && window != 5){
			window = 5;window_timer = 0;vsp -= 1.5;sound_play(sound_get("uspecial_fly"),false,noone,1);
		}
	}if(window >= 4 && window < 7){
		if(!free){
			if(window != 6){
				sound_play(sound_get("uspecial_stop"),false,noone,1);
				window = 7;window_timer = 0;
			}else{
				window = 8;window_timer = 0;
			}
		}
	}
	if(instance_exists(balloon1) && instance_exists(balloon2)){
		balloon1.x = x+25*spr_dir;balloon1.y = y-80;
		balloon2.x = x-15*spr_dir;balloon2.y = y-80;
		uspec_speed = 1;
	}else{
		if(instance_exists(balloon1)){
			balloon1.x = x;balloon1.y = y-80;
		}else if(instance_exists(balloon2)){
			balloon2.x = x;balloon2.y = y-80;
		}uspec_speed = 0.5;
	}
	uspec_fuel = max(uspec_fuel,0);
}else if (attack == AT_DSPECIAL){
	if(window == 4 && window_timer <= 6 || window == 6 && strong_charge < 1){
    	KoB_reverse();
	}
	
	if(window == 1 || window == 3){
		if(shield_down){
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
			window = 6;window_timer = 0;
		}
	}
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		if(!position_meeting(x+40*spr_dir,y+2,asset_get("par_block")) && !position_meeting(x+40*spr_dir,y+2,asset_get("par_jumpthrough"))){
			x -= 15*spr_dir;
			if(!position_meeting(x+40*spr_dir,y+2,asset_get("par_block")) && !position_meeting(x+40*spr_dir,y+2,asset_get("par_jumpthrough"))){
				x -= 20*spr_dir;
				if(!position_meeting(x+40*spr_dir,y+2,asset_get("par_block")) && !position_meeting(x+40*spr_dir,y+2,asset_get("par_jumpthrough"))){
					x -= 25*spr_dir;
				}
			}
		}
		sound_play(sound_get("dspecial_plant"),false,noone,1);
		sapling = create_hitbox(AT_DSPECIAL, 1, x+35*spr_dir, y-6);
	}
	if(window >= 3 && window <= 5){ //water
		if(!free){
			if(right_down && hsp < 4){
				hsp += 1;
			}else if(left_down && hsp > -4){
				hsp -= 1;
			}
			if(jump_pressed){
				vsp = -10;
			}
		}
		if(window == 4){
			if(window_timer == 1 && !hitpause){
				sound_play(sound_get("dspecial_water"),false,noone,1);
			}
			if(window_timer % 3 == 0 && !hitpause){
				create_hitbox(AT_DSPECIAL, 2, x+54*spr_dir, y-12);
			}
		}
	}
	if(window >= 6 && window <= 10){ //axe
		if(window == 6){
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2 && !hitpause){
				if(!special_down || strong_charge >= 30){
					if(strong_charge <= 2){
						/*window = 8;*/window_timer += 1;
					}else if(strong_charge > 2){
						window = 7;window_timer = 0;
					}
				}else{
					strong_charge += 1;window_timer -= 1;
				}
				set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, round(12+strong_charge/3));
				set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 1.05+strong_charge/180);
				if(strong_charge < 30){
					reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH);reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME);
					VillagerTreeCut = 1;
				}else{
					set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 12);set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 11);
					set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, round(12+strong_charge/1.75));
					set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 1.05+strong_charge/130);
					VillagerTreeCut = 2;
				}
			}if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){ //only happens if uncharged
				window = 8;window_timer = 0;
			}
		}else if(window == 10){
			force_depth = true;depth = -7;
		}
	}
}else if (attack == AT_FSTRONG){
	//FStrong if it was made by ExW
	
	/*if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        free = true;set_state(PS_PRATFALL);hsp = 10*spr_dir;vsp = -6;
    }*/
}else if (attack == AT_USTRONG){
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        if(sol){
        	var star = spawn_hit_fx(x+70*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;star = spawn_hit_fx(x-10*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
		}
    }
}else if (attack == AT_DSTRONG){
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        dusteff = spawn_hit_fx(x+(70*spr_dir), y, fx_dust_sharp);dusteff.depth = depth-1;
        var buryeffect = spawn_hit_fx(x+85*spr_dir,y,fx_bury);buryeffect.depth = depth-1;
        if(sol){
        	var star = spawn_hit_fx(x+100*spr_dir, y-35, fx_star_tiny);star.depth = depth-2;star = spawn_hit_fx(x+20*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-2;
		}
    }if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        dusteff = spawn_hit_fx(x-(70*spr_dir), y, fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
        buryeffect = spawn_hit_fx(x-85*spr_dir,y,fx_bury);buryeffect.depth = depth-1;buryeffect.spr_dir = -spr_dir;
        if(sol){
        	var star = spawn_hit_fx(x-20*spr_dir, y-35, fx_star_tiny);star.depth = depth-2;star = spawn_hit_fx(x-100*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-2;
		}
    }
    if(window >= 4 && window != 5 && !down_strong_pressed){
        cancelattack();
    }
}else if(attack == AT_JAB){
	if(window == 3){
		if(attack_down){
			window = 4;
			window_timer = 0;
		}
	}else if(window == 4){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-5*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    }
	}else if(window == 5){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-5*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    }
	}else if(window == 6){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) /*&& has_hit*/){
    		if(attack_down && !was_parried){
    		    window = 5;
    	    	window_timer = 0;
    		}
    	}
	}else if(window == 7){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-5*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	        if(kewtmode >= 1){sound_play( sound_get("heavyattack") );shake_camera(5, 5);}
	    }
	}if(window == 5 || window == 6){
		if(window_timer == 6){
    		if(!attack_down || was_parried){
				window = 7;
				window_timer = 0;
			}
    	}
	}
}else if (attack == AT_FAIR || attack == AT_BAIR){
	if(window == 1){
		if(window_timer == 1 && !hitpause){
        	sound_play(sound_get("slingshot"),false,noone,0.7);
        }
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        	sound_play(sound_get("slingshot2"),false,noone,1.25);
        	if(runeN){
        		var bowlingball = create_hitbox(AT_FSTRONG, 1, x+40*spr_dir, y-30);bowlingball.hsp = 10*spr_dir;bowlingball.vsp = -2;
        		if (attack == AT_BAIR){
        			bowlingball.spr_dir = -spr_dir;bowlingball.x = x+40*-spr_dir;bowlingball.hsp = 10*-spr_dir;
        		}
        		bowlingball.damage = 7;bowlingball.kb_value = 7;bowlingball.kb_scale = 0.9;bowlingball.grav = 0.5;bowlingball.waspocketed2 = true;
        	}
        	if(instance_exists(Pocketed_Projectile) && (("Villager_Slingshot" in Pocketed_Projectile || "Villager_Bowling_Ball" in Pocketed_Projectile) && (attack_down || right_stick_down || left_stick_down))){
        		thepocketedprojectile = Pocketed_Projectile;Pocketed_Projectile = noone;
        		if (attack == AT_FAIR){
					thepocketedprojectile.spr_dir = spr_dir;thepocketedprojectile.hsp = pocket_hsp*spr_dir;thepocketedprojectile.vsp = pocket_vsp;
					thepocketedprojectile.y = y-30;thepocketedprojectile.x = x+40*spr_dir;
        		}else{
        			thepocketedprojectile.spr_dir = -spr_dir;thepocketedprojectile.hsp = -pocket_hsp*spr_dir;thepocketedprojectile.vsp = pocket_vsp;
					thepocketedprojectile.y = y-30;thepocketedprojectile.x = x-40*spr_dir;
        		}
		        thepocketedprojectile.sprite_index = pocket_projectile_sprite;thepocketedprojectile.image_index = pocket_projectile_sprite_imageindex;
		        thepocketedprojectile.grounds = pocket_grounds;thepocketedprojectile.walls = pocket_walls;
	        	if(pocket_projectile){
	        		thepocketedprojectile.hit_priority = 4;
	        		/*if(pocket_buff || (has_rune("O") || runeO)){ //only buff if it isnt your own, cuz blnce
		            	thepocketedprojectile.damage = ceil(thepocketedprojectile.damage*1.5);thepocketedprojectile.kb_scale *= 1.25;
		            	thepocketedprojectile.damage = min(thepocketedprojectile.damage,999);thepocketedprojectile.kb_scale = min(thepocketedprojectile.kb_scale,2);
	        		}*/
	        		if("Villager_Bowling_Ball" in Pocketed_Projectile){
	        			bowlingball.damage = 7;bowlingball.kb_value = 7;bowlingball.kb_scale = 0.9;bowlingball.grav = 0.5;bowlingball.waspocketed2 = true;
	        		}
	            	thepocketedprojectile.can_hit[1] = true;thepocketedprojectile.can_hit[2] = true;thepocketedprojectile.can_hit[3] = true;thepocketedprojectile.can_hit[4] = true;
	        	}
	        	if("Pocketed" in thepocketedprojectile){
					thepocketedprojectile.Pocketed = false;
				}
	        	pocket_projectile = false;pocket_article = false;
        	}
        	if(canon || op){
		    	var pew = create_hitbox(attack, 1, x+get_hitbox_value(attack, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(attack, 1, HG_HITBOX_Y));pew.hsp *= 0.9;pew.vsp += -1.5;
		    	pew = create_hitbox(attack, 1, x+get_hitbox_value(attack, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(attack, 1, HG_HITBOX_Y));pew.hsp *= 0.9;pew.vsp += 1.5;
		    	pew = create_hitbox(attack, 1, x+get_hitbox_value(attack, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(attack, 1, HG_HITBOX_Y));pew.hsp *= 0.8;pew.vsp += -3;
		    	pew = create_hitbox(attack, 1, x+get_hitbox_value(attack, 1, HG_HITBOX_X)*spr_dir, y+get_hitbox_value(attack, 1, HG_HITBOX_Y));pew.hsp *= 0.8;pew.vsp += 3;
        	}
        }
    }
    if(window >= 3 && runeJ){
        if(attack_down || right_stick_pressed || left_stick_pressed || right_strong_pressed || left_strong_pressed){
        	window = 1;window_timer = 0;
        }
    }
	if(window == 3 && window_timer >= 4 || has_hit || runeJ){
        set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
    }
}else if (attack == AT_UAIR || attack == AT_DAIR){
	if(window == 3 && window_timer >= 16){
		cancelattack3();
	}
	if (attack == AT_UAIR){
		hud_offset = 30;
	}	
}else if (attack == AT_FTILT){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        dusteff = spawn_hit_fx(x+(70*spr_dir), y, fx_dust_sharp_fast);dusteff.depth = depth-1;
    }
}else if (attack == AT_UTILT){
	if(window == 3 && window_timer >= 6 || window == 4){
        cancelattack();
    }
}else if (attack == AT_DTILT){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        shake_camera(3, 3);sound_play(sound_get("dtilt"),false,noone,1.5);
        dusteff = spawn_hit_fx(x+(70*spr_dir), y, fx_dust_sharp);dusteff.depth = depth-1;
		dusteff2 = spawn_hit_fx(x-(20*spr_dir), y, fx_dust_sharp);dusteff2.spr_dir = -spr_dir;dusteff2.depth = depth-1;
		if(sol){
        	var star = spawn_hit_fx(x+70*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;star = spawn_hit_fx(x-10*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
		}
    }
}else if (attack == AT_DATTACK){
	if(window == 1){
		if(window_timer == 1 && !hitpause){
			//sound_play(sound_get("dattack"),false,noone,1);
			var dust = spawn_hit_fx(x-8*spr_dir,y,fx_dust_sharp)dust.spr_dir = -spr_dir;dust.depth = depth-4;
		}
	}
	if(window == 2){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("dattack"),false,noone,1);
			var dust = spawn_hit_fx(x-10*spr_dir,y,fx_dust_sharp)dust.spr_dir = -spr_dir;dust.depth = depth-4;
			var dust2 = spawn_hit_fx(x+90*spr_dir,y,fx_dust_sharp)dust2.depth = depth - 4;
		}
	}
	if(window == 3){
		if(window_timer >= 6){
			hsp *= .95;
		}
		if(attack_down){
			if(!has_hit && window_timer == 19){
				window_timer = 18;
			}else if(has_hit && window_timer == 13){
				window_timer = 12;
			}
		}
	}
}else if (attack == AT_GRAB){
	can_fast_fall = false;
	if(instance_exists(grabbedtarget)){
    	if(!grabbedobject){
	    	if(grabbedtarget.state == PS_DEAD || grabbedtarget.state == PS_RESPAWN){
	        	grabbedtarget = noone;
	    	}
		}else if(grabbedobject && !grabbedarticle){
			grabbedtarget.hit_priority = 0;grabbedtarget.hitbox_timer = 0;
            grabbedtarget.spr_dir = spr_dir;
		}
	}
	
	if(window == 1){
		if(window_timer == 1 && !hitpause){
			sound_play(sound_get("net"),false,noone,1);
		}
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			if(!free){
				var dust = spawn_hit_fx(x+45*spr_dir,y,fx_dust_sharp)dust.spr_dir = -spr_dir;dust.depth = depth-4;
				var dust2 = spawn_hit_fx(x+115*spr_dir,y,fx_dust_sharp)dust2.depth = depth - 4;
			}
			if(!instance_exists(grabbedtarget) && !attack_down && !right_stick_down && !left_stick_down){
		    	with(pHitBox){
		            if(type == 2 && self != other){
		            	if(string_length(string(player_id.url)) > 0 && orig_player != 5){
			            	var playerurl = real(player_id.url);
			                if(("MattCanGrab" in self && MattCanGrab || "MorshuCanGrab" in self && MorshuCanGrab || playerurl < 20)
    	    				|| !transcendent && (("MattCanGrab" in self && MattCanGrab || "MorshuCanGrab" in self && MorshuCanGrab) || "MattCanGrab" not in self && "MorshuCanGrab" not in self)){
			                	var dist = point_distance(other.x+70*other.spr_dir, other.y-25, x, y); //distance
		                	    if(dist <= 75 && !other.grabbedobject && ("KoB_grabbed" in self && !KoB_grabbed || "KoB_grabbed" not in self)){
		                	        spr_dir = other.spr_dir;player = other.player;
			                		other.grabbedtarget = self;other.grabbedobject = true;if("MorshuBomb" in self && MorshuBomb || "MattStar" in self && MattStar)num = 1;
			                		can_hit[1] = true;can_hit[2] = true;can_hit[3] = true;can_hit[4] = true;
			                		KoB_grabbed = true;
			                		if("Villager_Bowling_Ball" in self){
			                			if(!waspocketed && !waspocketed2 && player_id == other){ //if its your own bowling ball and it hasnt been pocketed or anything yet, make it weaker
							    			damage = 8;kb_value = 7;kb_scale = 0.9;waspocketed2 = true;
							    		}
							    	}
		                	    }	 
		            	    }
		            	}
		            }
		        }with(asset_get("obj_article1")){
                    grab_article_if_valid();
                }with(asset_get("obj_article2")){
                    grab_article_if_valid();
                }with(asset_get("obj_article3")){
                    grab_article_if_valid();
                }
    		}
    		if(grabbedobject && instance_exists(grabbedtarget)){
	        	grabtimer = 120;sound_play(sound_get("grab"));
	        	window = 4;window_timer = 0;if(free && vsp > 0 && !position_meeting(x,y+20,asset_get("par_block")) && !position_meeting(x,y+20,asset_get("par_jumpthrough"))
				&& !position_meeting(x,y+80,asset_get("par_block")) && !position_meeting(x,y+80,asset_get("par_jumpthrough")))old_vsp = -5;
	        	destroy_hitboxes();
	           	spawn_hit_fx(grabbedtarget.x,grabbedtarget.y,302);sound_play(asset_get("sfx_blow_medium3"));
	    	}
		}
	}else if(window == 3){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)/2 && !hitpause && free && vsp > 4){
			cancelattack3();
		}
	}else if(window == 4){ //grabbed
		window_timer = 0;can_move = false;
		grabbedposX = 75;grabbedposY = -2;
		if(grabtimer > 0 && !hitpause && instance_exists(grabbedtarget)){ //holding
			grabtimer -= 1;
			if(free && vsp > 0 && !position_meeting(x,y+20,asset_get("par_block")) && !position_meeting(x,y+20,asset_get("par_jumpthrough"))
			&& !position_meeting(x,y+80,asset_get("par_block")) && !position_meeting(x,y+80,asset_get("par_jumpthrough")))grabtimer -= 4;
			if(right_pressed || left_pressed){
				window = 5;set_attack_value(AT_GRAB, AG_NUM_WINDOWS, 7);
				if(right_pressed){spr_dir = 1;}else{spr_dir = -1;}instance_exists(grabbedtarget){grabbedtarget.y = y;grabbedtarget.x = x-(65*spr_dir);grabbedtarget.grabbed_invisible = true;}
			}else if(up_pressed){
				window = 8;set_attack_value(AT_GRAB, AG_NUM_WINDOWS, 10);
				instance_exists(grabbedtarget){grabbedtarget.y = y+15;grabbedtarget.x = x+(75*spr_dir);grabbedtarget.grabbed_invisible = true;}
			}else if(down_pressed){
				window = 11;set_attack_value(AT_GRAB, AG_NUM_WINDOWS, 13);
				instance_exists(grabbedtarget){grabbedtarget.y = y+5;grabbedtarget.x = x-(55*spr_dir);grabbedtarget.grabbed_invisible = true;}
				if(free && vsp > -7){vsp = -7;}else if(!free){vsp = -6;}
			}/*else if(special_pressed){
				
			}*/
			if(!grabbedobject){
				if(grabbedtarget.villager_bury_cooldown > 0){
			    	grabbedtarget.villager_bury_cooldown = max(grabbedtarget.villager_bury_cooldown, 30);
				}
			}
		}else if(grabtimer <= 0 && !hitpause || !instance_exists(grabbedtarget)){ //grab release
			window = 3;window_timer = 16;hsp = -2*spr_dir;if(free && vsp > 0)vsp = -5;
			reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
			if(instance_exists(grabbedtarget)){
	        	if(!grabbedobject){
	            	grabbedtarget.hsp = -5*grabbedtarget.spr_dir;grabbedtarget.vsp = -4;grabbedtarget.visible = true;
	        	}else{
	        		grabbedobject = false;grabbedtarget.KoB_grabbed = false;
	            	if(grabbedarticle){
	                    grabbedtarget.length = 1;
	                }else{
	                	with(grabbedtarget){
	                		//if("Villager_Tree" in self || "Villager_Bowling_Ball" in self){despawning = true;}
	                        if("MattPlanet" in self){state = 1;timer = 60;}
	                    }grabbedtarget.state = 1;grabbedtarget.timer = 60;
			    		if("StarterBlock" in grabbedtarget){grabbedtarget.state = 2;}
			    		grabbedtarget.visible = true;
	                }
	        	}grabbedtarget = noone;
			}
        }
	}else if(window >= 5 && window <= 7){ //fthrow / bthrow
		if(window == 5){
			grabbedposX = -55;grabbedposY = -10;
			if(instance_exists(grabbedtarget))grabbedtarget.grabbed_invisible = true;
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				if(!free){create_hitbox(AT_GRAB, 2, x, y);}else{if(vsp > -3){vsp = -3;}create_hitbox(AT_GRAB, 3, x, y);}
				if(instance_exists(grabbedtarget)){
					grabbedtarget.x = x+(65*spr_dir);
					if(!grabbedobject){
	        			grabbedtarget.visible = true;grabbedtarget.y = y-10;
	        		}else{
						grabbedtarget.y = y-30;grabbedtarget.hsp = 10*spr_dir;grabbedtarget.vsp = -5;grabbedtarget.KoB_grabbed = false;
				    	if(!grabbedarticle){
		                	grabbedtarget.damage *= 1.5;grabbedtarget.kb_scale *= 1.25;grabbedtarget.hit_priority = 4;
		                	//with(grabbedtarget){if("MattStar" in self && MattStar){hit_effect = other.fx_starhit_big;sound_effect = other.starheavyhitsfx;}}
		            	}else{
		                	with(grabbedtarget){
						    	if("MattPlanet" in self){state = 2;}
				        	}grabbedtarget.visible = true;
		            	}
					}grabbedtarget = noone;
				}
			}
		}
	}else if(window >= 8 && window <= 10){ //uthrow
		if(window == 8){
			grabbedposX = 75;grabbedposY = 15;
			if(instance_exists(grabbedtarget))grabbedtarget.grabbed_invisible = true;
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				if(!free){create_hitbox(AT_GRAB, 4, x, y);}else{if(vsp > -7){vsp = -7;}create_hitbox(AT_GRAB, 5, x, y);}
				if(instance_exists(grabbedtarget)){
					grabbedtarget.x = x+(40*spr_dir);
					if(!grabbedobject){
	        			grabbedtarget.visible = true;grabbedtarget.y = y-65;
	        		}else{
						grabbedtarget.y = y-85;grabbedtarget.hsp = 2*spr_dir;grabbedtarget.vsp = -16;grabbedtarget.KoB_grabbed = false;
				    	if(!grabbedarticle){
		                	grabbedtarget.damage *= 1.5;grabbedtarget.kb_scale *= 1.25;grabbedtarget.hit_priority = 4;
		                	//with(grabbedtarget){if("MattStar" in self && MattStar){hit_effect = other.fx_starhit_big;sound_effect = other.starheavyhitsfx;}}
		            	}else{
		                	with(grabbedtarget){
						    	if("MattPlanet" in self){state = 2;}
				        	}grabbedtarget.visible = true;
		            	}
					}grabbedtarget = noone;
				}
			}
		}
	}else if(window >= 11 && window <= 13){ //dthrow
		if(window == 11){
			grabbedposX = -35;grabbedposY = -35;
			if(instance_exists(grabbedtarget))grabbedtarget.grabbed_invisible = true;
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				var grounded = true;
				if(!free || position_meeting(x,y+40,asset_get("par_block")) || position_meeting(x,y+40,asset_get("par_jumpthrough"))){create_hitbox(AT_GRAB, 6, x, y);}else{if(vsp > -3){vsp = -3;}create_hitbox(AT_GRAB, 7, x, y);grounded = false;}
				if(instance_exists(grabbedtarget)){
					grabbedtarget.x = x+(20*spr_dir);
					if(!grabbedobject){
	        			grabbedtarget.visible = true;grabbedtarget.y = y+35;
	        			if(runeC && grounded){grabbedtarget.y = y+38;}
	        		}else{
						grabbedtarget.y = y+55;grabbedtarget.hsp = 2*spr_dir;grabbedtarget.vsp = 14;grabbedtarget.KoB_grabbed = false;
				    	if(!grabbedarticle){
		                	grabbedtarget.damage *= 1.5;grabbedtarget.kb_scale *= 1.25;grabbedtarget.hit_priority = 4;
		                	//with(grabbedtarget){if("MattStar" in self && MattStar){hit_effect = other.fx_starhit_big;sound_effect = other.starheavyhitsfx;}}
		            	}else{
		                	with(grabbedtarget){
						    	if("MattPlanet" in self){state = 2;}
				        	}grabbedtarget.visible = true;
		            	}
					}
					grabbedtarget = noone;
				}
			}
		}
	}
	
	if((window == 7 || window == 10 || window == 13) && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)/2){
		cancelattack();
	}
	
	if(instance_exists(grabbedtarget)){
		grabbedtargetstuff();
    	if(!grabbedobject){
        	grabbedtarget.y = ease_expoOut(round(grabbedtarget.y), round(y+grabbedposY), 2, 20);
    	}else{
        	grabbedtarget.y = ease_expoOut(round(grabbedtarget.y), round(y+(grabbedposY-25)), 2, 20);
    	}
    	grabbedtarget.x = ease_expoIn(round(grabbedtarget.x), round(x+(grabbedposX*spr_dir)), 16, 20);
	}else{
		soft_armor = 0;
	}
}else if (attack == AT_TAUNT){
	//silky taunt stuff
	if(window <= 9 && special_down){
		window = 12;window_timer = 0;sound_play(sound_get("squeaky"));hurtboxID.sprite_index = sprite_get("hurtbox");
		set_attack_value(attack, AG_NUM_WINDOWS, 16);set_attack_value(attack, AG_SPRITE, sprite_get("taunt_specialkewtian"));
	}if(window == 14){can_wall_jump = true;
		if(taunt_pressed || attack_pressed || special_pressed || shield_pressed){window += 1;window_timer = 0;} //cancel
		hsp = (right_down-left_down != 0)?2*(right_down-left_down):hsp;if(sign(hsp) != 0)spr_dir = sign(hsp); //move
		if(jump_pressed && !free && !hitpause){vsp = -9;free = true;sound_play(jump_sound);array_push(phone_dust_query, [x, y, "jump", spr_dir]);} //jump
		if(!free){if(specialkewtland <= 0){specialkewtland = 1;sound_play(land_sound);sound_play(sound_get("squeaky"),false,noone,0.3,1.2);array_push(phone_dust_query, [x, y, "land", spr_dir]);}specialkewtland += 1;}else specialkewtland = 0;
	}if(window >= 13 && window <= 15)hud_offset = 35;
	
	if((window == 1 || window == 3) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)sound_play(sound_get("crouch2"),false,noone,0.6);
    if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-10 && !hitpause)sound_play(sound_get("crouch"),false,noone,0.4);
    
    if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause && taunt_down){
        window = 0;window_timer = 0;
    }
    
    if(window <= 4 || window == 7){
    	if(tauntcancel)cancelattack2();
    	if(up_down && kewtmode >= 1){
			set_attack(AT_TAUNT_2);hurtboxID.sprite_index = sprite_get("taunt_beeg_hurt");spr_dir = 1;
			create_hitbox(AT_TAUNT, 2, x, y+100);create_hitbox(AT_TAUNT, 2, x+100, y+200);create_hitbox(AT_TAUNT, 2, x-100, y-200);
		}
		if(window == 7 && taunt_pressed){window += 1;window_timer = 0;}
    }else{
    	tauntcancel = true;
    }
    
    if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)sound_play(sound_get("land3"),false,noone,0.8);
    
    
    if(attack_down && jump_pressed && kewtmode <= 0){
		kewtmode = 1;
	}
}
else if (attack == AT_TAUNT_2){ // beeg taunt
	if(window <= 4){hud_offset = 600;soft_armor = 8;}
	else{hud_offset = 2000;soft_armor = 12;}
	
    if(window == 1){
        if(window_timer <= 1){sound_play( sound_get("heavyattack") );shake_camera(10, 10);}
    }else if(window == 3){
        if(!taunt_down){
            window = 4;window_timer = 0;reset_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS);
        }else{
            if (attack_down){
                window = 5;window_timer = 0;set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 8);
			    sound_play( sound_get("heavyattack") );sound_play( sound_get("heavyattack2") );shake_camera(20, 20);
			    if(random_func(0,3,true) != 0){
			    	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
					set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 10);set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAME_START, 10);
			    }else{
			    	reset_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START);reset_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START);
					reset_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START);reset_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAME_START);
			    }
            }
        }
    }
    
    if(window == 5){
        if(window_timer <= 1){shake_camera(15, 10);}
    }else if(window == 7){
        if(!taunt_down || attack_down){
            window = 8;window_timer = 0;set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 8);
        }
    }else if(window == 8){
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
            window = 3;window_timer = 0;reset_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS);sound_play( sound_get("heavyattack") );shake_camera(10, 5);
        }
    }
}

//rune K balance
if (runeK) {
	if(window >= get_attack_value(attack, AG_NUM_WINDOWS)-1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)
	&& !hitpause && !has_hit && bonus_damage < 1.25)kob_bonus_damage(1.25);
}

if (canon || op) strong_charge = 61;

#define kob_bonus_damage
	bonus_damage = argument[0]>1;
	if(argument[0] > 1){
		damage_scaling = argument[0];
	}else{
		damage_scaling = 1;
	}

#define KoB_reverse
	if((left_down && spr_dir == 1 || right_down && spr_dir == -1) && !b_reversed){
    	hsp = -hsp;spr_dir = -spr_dir;b_reversed = true;
	}

#define cancelattack
    if(has_hit && (attack_pressed || special_pressed || jump_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
	}

#define cancelattack2
    if(/*has_hit &&*/ (attack_pressed || special_pressed || jump_pressed || shield_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
	}

#define cancelattack3
    if(shield_pressed || jump_pressed){
		window = 20;spr_angle = 0;
	}

#define pocket_article_if_valid
    if(orig_player != 5 && !instance_exists(other.Pocketed_Projectile) && "url" in player_id){
    	var playerurl = 21;var ispocketable = /*"Pocketable" not in self ||*/ "Pocketable" in self && Pocketable;
    	if(string_length(string(player_id.url)) > 0)playerurl = real(player_id.url);
        if((("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self) || ispocketable
        || playerurl < 20) && ("Pocketed" in self && !Pocketed || "Pocketed" not in self) && (sprite_index != asset_get("empty_sprite") || "Pocketable" in self && Pocketable)
        && ("KoB_grabbed" in self && !KoB_grabbed || "KoB_grabbed" not in self)
        || other.runeI){
        	var dist = point_distance(other.x+55*other.spr_dir, other.y-25, x, y); //distance
        	if(((dist <= 150 || dist <= 150*1.5 && other.runeF) || place_meeting(other.x+55*other.spr_dir,other.y-25,self))){
        		other.pocket_article = true;other.pocket_projectile = false;other.Pocketed_Projectile = self;
	        	player = other.player;
	        	if("current_player" in self)current_player = other.player;
	        	
				other.pocket_projectile_sprite_imageindex = image_index;
		    	other.pocket_projectile_sprite = sprite_index;
		    	
		    	//velocity stuff. if no speed is defined, then just use 0 for articles
		    	if("Pocket_hsp" not in self){
		    		other.pocket_hsp = 0;//abs(hsp);
		    	}else{
		    		other.pocket_hsp = abs(Pocket_hsp);
		    	}if("Pocket_vsp" not in self){
		    		other.pocket_vsp = 0;//vsp;
		    	}else{
		    		other.pocket_vsp = Pocket_vsp;
		    	}
		    	if(other.pocket_hsp <= 0.5 && abs(other.pocket_vsp) <= 0.5){ //if it has no speed in any direction then just default to having some lol (unused now)
		    		//if("Pocket_hsp" not in self){other.pocket_hsp = 5;}
		    		//if("Pocket_vsp" not in self){other.pocket_vsp = -5;}
		    	}
		    	Pocketed = true;
		    	if("Pocket_hud" in self){
		    		if(Pocket_hud != -1){ //has sprites defined
			    		other.pocket_projectile_hud_sprite = Pocket_hud;
		    		}else{ //if set to -1, use generic icons
		    			other.pocket_projectile_hud_sprite = other.pocket_projectile_hud_sprite_basic;
		    		}
		    		if("Pocket_hud_imageindex" in self){
			    		other.pocket_projectile_hud_sprite_imageindex = Pocket_hud_imageindex;
			    	}
		    	}else{
		    		other.pocket_projectile_hud_sprite = other.pocket_projectile_hud_sprite_original;
		    		other.pocket_projectile_hud_sprite_imageindex = 0;
		    	}
		    	//check if villager is gonna mess with the 'state' variable or not
		    	if("is_KOB" in player_id && player_id.is_KOB){
		    		other.pocket_handle_state = true;
		    	}else{
		    		other.pocket_handle_state = false;
		    	}
		    	if(other.pocket_handle_state || "MattPlanet" in self)state = 3;
		    	
		    	with(other){
		    		invincible = true;invince_time = 10;
		    		sound_play(sound_get("pocket"),false,noone,1);
		    		sound_stop(sfx);
		    	}
		    	if(instance_exists(other.Pocket_Hitbox))other.Pocket_Hitbox.img_spd = 2;
        	}
    	}
    }
    
#define grab_article_if_valid
    //contributed by Floral qua Floral <3
    if(!other.grabbedobject){
    	var playerurl = 21;
    	if(string_length(string(player_id.url)) > 0)playerurl = real(player_id.url);
		if(orig_player != 5){
    		var GrabRangeModifier = 0;
    		if("MattGrabRangeModifier" in self){
    			GrabRangeModifier = real(MattGrabRangeModifier);
    		}
    		var dist = point_distance(other.x+(70*other.spr_dir), other.y-25, x, y); //distance
    		var range = 65;
	        
        	if(dist <= range+GrabRangeModifier && ("MattCanGrab" in self && MattCanGrab || "MorshuCanGrab" in self && MorshuCanGrab || playerurl < 20) && ("KoB_grabbed" in self && !KoB_grabbed || "KoB_grabbed" not in self)){
            	other.grabbedtarget = self;other.grabbedobject = true;other.grabbedarticle = true;
            	KoB_grabbed = true;player = other.player;
	        	if("MattPlanet" in self){
	            	state = 3;
            	}if("current_player" in self){
	            	current_player = other.player;
            	}
        	}
		}
	}
	    	
	    	
#define grabbedtargetstuff
	if(instance_exists(grabbedtarget)){
		grabbedtarget.free = true;
		grabbedtarget.hsp = hsp;grabbedtarget.vsp = vsp;
		if(!grabbedobject){
			with(grabbedtarget.id){
		    	can_tech = false;can_bounce = false;off_edge = true;
		    	can_wall_jump = false;can_wall_tech = false;can_be_grounded = false;
		    	set_state(PS_HITSTUN);
		    	hitstun = 20;hitstun_full = 20;
			}
			soft_armor = 9999;
		}
	}