if(right_stick_down || left_stick_down || up_stick_down || down_stick_down || strong_down){
    attack_down = true;
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
    if(window == 1 && !hitpause){
    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-8 && special_down){
    		window_timer -= 1;
    	}else{KoB_reverse();}
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	if(!instance_exists(thedice1) || !instance_exists(thedice2)){
        		sound_play(asset_get("sfx_swipe_medium1"));
	        	var dice = create_hitbox(AT_NSPECIAL, 1, round(x+30*spr_dir), round(y-35));
	        	var hitcol = create_hitbox(AT_NSPECIAL, 2, round(x+30*spr_dir), round(y-35));dice.thedice = hitcol;hitcol.thedice = dice;
	        	if(right_down && spr_dir == 1 || left_down && spr_dir == -1){
	        		if(up_down){
	        			dice.hsp *= 1.5;dice.vsp *= 1.75;
	        		}else{
	        			dice.hsp *= 1.75;dice.vsp *= 0.5;
	        		}
	        	}else if(right_down && spr_dir == -1 || left_down && spr_dir == 1){
	        		dice.hsp *= -0.4;dice.vsp *= 1.75;
	        	}else if(up_down){
	        		dice.hsp *= 0.5;dice.vsp *= 2;
	        	}else if(down_down){
	        		dice.hsp *= 0.2;dice.vsp *= 0.5;
	        	}
	        	if(!instance_exists(thedice1)){
	        		thedice1 = dice;
	        	}else if(!instance_exists(thedice2)){
	        		thedice2 = dice;
	        	}
	        	move_cooldown[AT_NSPECIAL] = 9999;move_cooldown[AT_FSPECIAL] = 9999;
	        	dicecooldown += 60;tokencooldown += 60;
	        	if(instance_exists(thedice1) && instance_exists(thedice2) && (instance_exists(thetoken) || tokencooldown > 0)){
		        	dicecooldown += 60;
		        	if(tokencooldown > 0){
		        		dicecooldown += 60;
		        	}
	        	}
        	}
        }
    }
}else if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    if(window == 1 && !hitpause){
    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-8 && special_down){
    		window_timer -= 1;
    		fspec_charge += 1;
    		if(fspec_charge == 30){
	    		sound_play(sound_get("soldsfx"),false,noone,2);spawn_hit_fx(round(x), round(y-35), 304);
	    	}
    	}
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	sound_play(asset_get("sfx_swipe_medium1"));
        	if(!instance_exists(thetoken)){
	        	if(fspec_charge >= 30 && current_money >= 3000*discount){
	        		thetoken = create_hitbox(AT_FSPECIAL, 2, round(x+55*spr_dir), round(y-35));
	        		var hitcol = create_hitbox(AT_NSPECIAL, 2, round(x+55*spr_dir), round(y-35));thetoken.thedice = hitcol;hitcol.thedice = thetoken;
	        		current_money -= 3000*discount;
	        		rand = random_func(0, 3, true);                    
            		sound_play(sound_get("money_pickup"+string(rand+1)));
	        	}else if(current_money >= 1000*discount){
	        		thetoken = create_hitbox(AT_FSPECIAL, 1, round(x+55*spr_dir), round(y-35));
	        		var hitcol = create_hitbox(AT_NSPECIAL, 2, round(x+55*spr_dir), round(y-35));thetoken.thedice = hitcol;hitcol.thedice = thetoken;
	        		current_money -= 1000*discount;
	        	}else{
					create_hitbox(AT_JAB, 12, round(x+55*spr_dir), round(y-35));
				}
				/*move_cooldown[AT_NSPECIAL] = 9999;move_cooldown[AT_FSPECIAL] = 9999;
	        	dicecooldown += 60;tokencooldown += 60;*/
	        	if(instance_exists(thetoken) && (dicecooldown > 0 || instance_exists(thedice1) && instance_exists(thedice2))){
		        	tokencooldown += 60;
		        	if(dicecooldown > 0){
		        		tokencooldown += 60;
		        	}
	        	}
        	}
        }
    }
    if(window == 4 && !hitpause){
    	if(attack_down && current_money >= 40000 && window_timer < 5 && tauntmoney == 0){
			PlayVoiceClip("four million", 1.0);tauntmoney = 1;
		}
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	sound_play(asset_get("sfx_swipe_medium1"));
        	sound_play(sound_get("money_pickup2"),false,noone,2);sound_play(sound_get("money_pickup3"),false,noone,2);
        	if(tauntmoney == 0){
				var money = create_hitbox(AT_JAB, 10, round(x+65*spr_dir), round(y-35));money.value = 10000;
    			current_money -= 10000*discount;
			}else{
				var money = create_hitbox(AT_JAB, 10, round(x+65*spr_dir), round(y-35));money.value = 40000;
    			current_money -= 40000*discount;
			}
        }
    }
}else if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if(window <= 3){
		hsp *= 0.5;vsp = 0;
	}
	if(window == 1){
		if(window_timer == 1){
			move_cooldown[AT_USPECIAL] = 999;uspectime = 0;
		}KoB_reverse();
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//if(!jailcard){
				uspecnum = random_func(0, 100, true);
			/*}else{
				uspecnum = random_func(0, 83, true);
			}*/
			if(runeL){
	        	var extra_rng = random_func(0, 100, true);
	        	if(extra_rng < uspecnum && (uspecnum <= 82 && !jailcard || jailcard)){
	        		uspecnum = extra_rng;
	        	}
	        }
			if(phone_cheats[CHEAT_Uspec] >= 0){
				if(phone_cheats[CHEAT_Uspec] == 1){
					uspecnum = 50;
				}else if(phone_cheats[CHEAT_Uspec] == 2){
					uspecnum = 1;
				}else if(phone_cheats[CHEAT_Uspec] == 3){
					uspecnum = 11;
				}else if(phone_cheats[CHEAT_Uspec] == 4){
					uspecnum = 81;
				}else if(phone_cheats[CHEAT_Uspec] == 5){
					uspecnum = 99;
				}
			}
			spawn_hit_fx(round(x+50*spr_dir) , round(y-75), 302);
			rand = random_func(0, 3, true);                    
            sound_play(sound_get("money_pickup"+string(rand+1)));
			//print(uspecnum);
		}
	}else if(window == 3){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if(uspecnum <= 10 && (instance_exists(property) || phone_cheats[CHEAT_Uspec] == 2)){ //property (if you have one lol)
				if(instance_exists(property)){
					uspectarget = property;
				}vsp = 4;
				if(y > room_height-20)vsp = 1;
				window = 14;window_timer = 0;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 16);
			}else if(uspecnum <= 20){ //home
				uspectarget = create_hitbox(AT_USPECIAL, 3, round(room_width/2), round(room_height/2));spawn_hit_fx(round(uspectarget.x) , round(uspectarget.y), 304);
				window = 17;window_timer = 0;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 18);uspec_speed = 1.3;
			}else if(uspecnum <= 80 || uspecnum > 82 && jailcard){ //goal
				uspectarget = create_hitbox(AT_USPECIAL, 3, round(x+50*spr_dir), round(y-250));spawn_hit_fx(round(uspectarget.x) , round(uspectarget.y), 304);
				window = 17;window_timer = 0;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 18);uspec_speed = 1;
			}else if(uspecnum <= 82){ //jail
				window = 20;window_timer = 0;
				vsp = -6;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 24);
			}else{ //get out of jail free card
				window = 30;window_timer = 0;vsp = -8;move_cooldown[AT_USPECIAL] = 0;
				jailcard = true;sound_play(asset_get("mfx_coin"),false,noone,3);sound_play(sound_get("soldsfx"));
				rand = random_func(0, 3, true);
				if(rand == 0){
					PlayVoiceClip("break the jail", 1.0);
				}else if(rand <= 2){
					PlayVoiceClip("free jailbreak", 1.0);
				}
			}
		}
	}else if(window == 14){ //getting ready to fly up
		mask_index = asset_get("empty_sprite");uspec_mask = true;
		vsp -= 0.5;if(y > room_height-5)vsp = 0;
	}else if(window == 15){ //flying up
		mask_index = asset_get("empty_sprite");uspec_mask = true;
		vsp -= 1;
		if(vsp < -16){
			vsp = -16;
		}
		if(y < -500){
			if(instance_exists(uspectarget)){
				x = uspectarget.x;
			}y = -500;
			window = 16;window_timer = 0;
		}
		if(get_gameplay_time() % 3 == 0){
			spawn_hit_fx(x-20+(random_func(0, 40, true)),y-20,fx_feathers);
		}
	}else if(window == 16){ //flying down on property
		mask_index = asset_get("empty_sprite");uspec_mask = true;
		vsp = 16;hsp = 0;can_move = false;
		if(y >= round(room_height/2)-400){
			mask_index = asset_get("ex_guy_collision_mask");
		}
		if(instance_exists(uspectarget)){
		    var dist = point_distance(uspectarget.x, uspectarget.y, x, y); //distance
		    if(dist < 10){
		    	window = 30;mask_index = asset_get("ex_guy_collision_mask");
		    }
		}
		if(y >= 150){
			window = 30;mask_index = asset_get("ex_guy_collision_mask");
		}
		
		if(get_gameplay_time() % 3 == 0){
			spawn_hit_fx(x-20+(random_func(0, 40, true)),y-20,fx_feathers);
		}
	}else if(window == 17){ //flying to target
		mask_index = asset_get("empty_sprite");uspec_mask = true;fall_through = 999;
		if(instance_exists(uspectarget)){
			uspectarget.spr_dir = 1;
			if(!runeG){
				var move_angle = point_direction(uspectarget.x, uspectarget.y, x, y);
	    	    hsp = (-cos(degtorad(move_angle))*6)*uspec_speed;
				if(hsp > 0){
					spr_dir = 1;
				}else if(hsp < 0){
			    	spr_dir = -1;
				}
			    vsp = (-sin(degtorad(-move_angle))*6)*uspec_speed;
			}else{
				grav = 0;
				if(right_down && hsp < 8){
					hsp += 0.35;
				}else if(left_down && hsp > -8){
					hsp -= 0.35;
				}if(up_down && vsp > -8){
					vsp -= 0.35;
				}else if(down_down && vsp < 8){
					vsp += 0.35;
				}hsp *= 0.95;vsp *= 0.95;
			}
		    var dist = point_distance(uspectarget.x, uspectarget.y, x, y); //distance
		    if(!runeG && dist < 10 || runeG && dist < 30){
		    	uspectarget.destroyed = true;spawn_hit_fx(round(uspectarget.x) , round(uspectarget.y), 302);
		    	window = 18;mask_index = asset_get("ex_guy_collision_mask");
		    	current_money += 2000;
		    	rand = random_func(0, 3, true);
            	sound_play(sound_get("money_pickup"+string(rand+1)));
		    }
		}
		if(get_gameplay_time() % 6 == 0){
			spawn_hit_fx(x-20+(random_func(0, 40, true)),y-20,fx_feathers);
		}
		uspectime += 1;//print(uspectime);
		if(!runeG && uspectime >= 420 || runeG && uspectime >= 180){
			uspectarget.destroyed = true;spawn_hit_fx(round(uspectarget.x) , round(uspectarget.y), 302);
			window = 18;mask_index = asset_get("ex_guy_collision_mask");
		}if(uspectime >= 45 && !position_meeting(x,y-45,asset_get("par_block"))){
			cancelattack2();
		}
	}
    if(window >= 20){
    	can_move = false;can_fast_fall = false;
    	soft_armor = 24;
    	jailpropertymoney = 0;
		if(instance_exists(property))if("housemoney" in property)jailpropertymoney = property.housemoney;
    	if(window == 20){ //enters jail
    		if(window_timer == 1 && !hitpause){
    			jailcost = floor((current_money+jailpropertymoney)/3)*discount;
    			if(jailcost > current_money){ //make it more expensive if mr monopoly needs to use the property money
    				jailcost = round(jailcost*1.5);
    			}
    			if(jailcost < 5000*discount){
    				jailcost = 5000*discount;
    			}sound_stop(voice);
    			if(alt == 21){
	    			voice = sound_play(sound_get("prison"),false,noone,3);
    			}else if(alt == 22){
	    			voice = sound_play(sound_get("meen_cell"));
    			}else{
	    			rand = random_func(0, 4, true);
			    	if(rand == 0){
						PlayVoiceClip("im too young to go to jail", 1.0);
					}else if(rand == 1){
						PlayVoiceClip("jail", 1.0);
					}else if(rand == 2){
						PlayVoiceClip("monopoly scream", 1.0);
					}else if(rand == 3){
						PlayVoiceClip("get me out of jail", 1.0);
					}
    			}
    		}
    	}else if(window == 21){
    		if(!free){
    			shake_camera(10,8);sound_play(sound_get("moneybag_hit2"),false,noone,1);
				sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.5);sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.75);
    			window = 22;
    		}
    	}else if(window == 23){
    		if(free){
    			window = 21;
    		}
    	}
    	if(window >= 21 && window < 25){
    		jaildicetimer -= 1;
    		if(jaildicetimer <= 0){
	    		if(jaildice1 != 0 && jaildice2 != 0 && (jaildiceattempts < 3 || jaildiceattempts >= 100)){
		    		if(jaildice1 == jaildice2){
		    			window = 25;window_timer = 0;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 26);
		    			move_cooldown[AT_USPECIAL] = 0;djumps = 0;has_airdodge = true;
		    			//if(free && vsp > -6){
		    				vsp = -6;
		    			//}
		    		}else{
		    			jaildiceattempts += 1;
		    			if(jaildiceattempts < 3 || jaildiceattempts >= 100){
		    				jaildice1 = 0;jaildice2 = 0;
		    			}
		    			jaildicetimer = 8;
		    		}
		    	}else if((jaildice1 != 0 || special_pressed || attack_pressed || jump_pressed) && (jaildiceattempts < 3 || jaildiceattempts >= 100)){
	    			if(jaildice1 == 0){
	    				jaildice1 = random_func(0, 6, true)+1;jaildicetimer = 5;sound_play(sound_get("dice1"),false,noone,1.25);
	    				/*if(runeL){
				        	var extra_rng = random_func(0, 6, true)+1;
				        	if(extra_rng == jaildice1){
				        		jaildice1 = extra_rng;
				        	}
				        }*/
	    			}else{
	    				if(jaildice2 == 0){
		    				jaildice2 = random_func(0, 6, true)+1;jaildicetimer = 30;sound_play(sound_get("dice2"),false,noone,1.25);//print(jaildice2);
		    				if(runeL){
					        	var extra_rng = random_func(0, 6, true)+1;//print(extra_rng);
					        	if(extra_rng == jaildice1){
					        		jaildice2 = extra_rng;
					        	}else{
					        		extra_rng = random_func(1, 6, true)+1;//print(extra_rng);
						        	if(extra_rng == jaildice1){
						        		jaildice2 = extra_rng;
						        	}
					        	}
					        }
		    			}
	    			}
    			}else if((down_pressed || special_pressed || attack_pressed || jump_pressed) && /*free || !free && */jaildiceattempts >= 3 && (current_money+jailpropertymoney) >= jailcost || (current_money+jailpropertymoney) < jailcost && jaildiceattempts < 100){
    				if((current_money+jailpropertymoney) >= jailcost){
    					var jailcost2 = jailcost-current_money;
	    				current_money -= jailcost;
		    			if(current_money < 0){
						    current_money = 0;
						}

						//if it wasnt enough, use from property as well
						if(jailcost2 > 0){
							if(instance_exists(property)){
					    		property.housemoney -= jailcost2;
					    		if(property.housemoney < 0){
								    property.housemoney = 0;
								}
					    	}
						}
						
						window = 25;window_timer = 0;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 26);
			    		move_cooldown[AT_USPECIAL] = 0;djumps = 0;has_airdodge = true;
			    		//if(free && vsp > -6){
			    			vsp = -6;
			    		//}
    				}else{
    					jaildiceattempts = 100;
    				}
    			}else if(up_pressed && jailcard){
    				window = 25;window_timer = 0;set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 26);
		    		move_cooldown[AT_USPECIAL] = 0;djumps = 0;has_airdodge = true;
		    		//if(free && vsp > -6){
		    			vsp = -6;
		    		//}
		    		jailcard = false;
    			}
    			if(current_money >= jailcost && jaildiceattempts >= 100){
    				jaildiceattempts = 0;
    			}
    		}
    	}else if(window >= 25){
    		move_cooldown[AT_USPECIAL] = 0;
    		if(window == 25){
	    		if(window_timer == 1 && !hitpause){
	    			if(free){
	    				reset_window_value(AT_USPECIAL, 26, AG_WINDOW_LENGTH);
	    			}else{
	    				set_window_value(AT_USPECIAL, 26, AG_WINDOW_LENGTH, 15);
	    			}
	    			rand = random_func(0, 2, true);
		    		if(rand == 1){
		    			PlayVoiceClip("jailbreak", 1.0);
		    		}
	    		}
	    	}else if(window == 26){
	    		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	    			create_hitbox(AT_USPECIAL, 2, round(x), round(y-45));
	    			vsp = -6;
	    		}
	    	}
    	}
    }
}else if (attack == AT_DSPECIAL){
	can_fast_fall = false;
    if(window == 1){
        KoB_reverse();
    }else if(window == 2 && !hitpause){
    	dspec_charge += 1;
    	if(dspec_charge < 30 && current_money >= 5000*discount || current_money < 10000*discount){
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, dspec_sprite1);
		}else if(dspec_charge < 60 && current_money >= 10000*discount || current_money < 30000*discount){
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, dspec_sprite2);
		}else if(current_money >= 30000*discount){
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, dspec_sprite3);
    	}
    	if(current_money < 5000*discount){
			set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_empty"));
		}
        if(!special_down || dspec_charge >= 60 && current_money < 10000*discount || dspec_charge >= 90 && current_money < 30000*discount || dspec_charge >= 120 || current_money < 5000*discount){
        	window = 3;window_timer = 0;
        	if(current_money >= 5000*discount){
        		vsp = -8;
        	}else{
        		
        	}
        }else{
        	can_move = false;
        	hsp *= 0.95;
        	if(right_down && hsp < 1){
				hsp += .2;
			}else if(left_down && hsp > -1){
				hsp -= .2;
			}
        	vsp *= 0.95;vsp = min(0, vsp);grav = 0;
        }
    }else if(window == 3 && !hitpause){
        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	if(dspec_charge < 30 && current_money >= 5000*discount || current_money < 10000*discount){
        		if(current_money >= 5000*discount){
		        	property = create_hitbox(AT_DSPECIAL, 1, round(x), round(y+25));property.vsp = 7;
		        	current_money -= 5000*discount;
        		}else{
        			var dust = create_hitbox(AT_JAB, 12, round(x), round(y+15));dust.hsp = 0;dust.vsp = 7;
        		}
        	}else if(dspec_charge < 60 && current_money >= 10000*discount || current_money < 30000*discount){
        		property = create_hitbox(AT_DSPECIAL, 2, round(x), round(y+35));property.vsp = 14;
	        	current_money -= 10000*discount;
        	}else if(current_money >= 30000){
        		property = create_hitbox(AT_DSPECIAL, 3, round(x), round(y+55));property.vsp = 20;
	        	current_money -= 30000*discount;
        	}
        	if(instance_exists(property)){
        		if(property.hbox_num <= 2){ //house and hotel sfx
	        		rand = random_func(0, 8, true);
		    		if(rand <= 1){
		    			PlayVoiceClip("i love building houses", 1.0);
		    		}else if(rand == 2){
		    			PlayVoiceClip("free property", 1.0);
		    		}else if(rand == 3){
		    			PlayVoiceClip("lets buy some property", 1.0);
		    		}else if(rand == 4){
		    			PlayVoiceClip("lets collect that rent now", 1.0);
		    		}else if(rand == 5){
		    			PlayVoiceClip("time to raise the rent", 1.0);
		    		}else if(rand == 6){
		    			PlayVoiceClip("owning property never goes out of style", 1.0);
		    		}else if(rand == 7){
		    			PlayVoiceClip("its time for landgrab", 1.0);
		    		}
        		}else{ //bank sfx
        			rand = random_func(0, 6, true);
		    		if(rand == 0){
		    			PlayVoiceClip("you can take that to the bank", 1.0);
		    		}else if(rand == 1){
		    			PlayVoiceClip("bank", 1.0);
		    		}else if(rand == 2){
		    			PlayVoiceClip("bank2", 1.0);
		    		}else if(rand == 3){
		    			PlayVoiceClip("bank3", 1.0);
		    		}else if(rand == 4){
		    			PlayVoiceClip("owning property never goes out of style", 1.0);
		    		}else if(rand == 5){
		    			PlayVoiceClip("its time for landgrab", 1.0);
		    		}
        		}
        	}
        }
    }else if(window == 5 && !hitpause){
    	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
    }else if(window == 6 && !hitpause){
    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	        if(instance_exists(property)){
	        	if(property.housemoney >= 30000){
		        	rand = random_func(0, 10, true);
		    		if(rand <= 1){
		    			PlayVoiceClip("its a housing boom", 1.0);
		    		}else if(rand == 2){
		    			PlayVoiceClip("we need high numbers here", 1.0);
		    		}else if(rand == 3){
		    			PlayVoiceClip("were swimming in it now", 1.0);
		    		}else if(rand == 4){
		    			PlayVoiceClip("welcome to the tycoon club", 1.0);
		    		}else if(rand == 5){
		    			PlayVoiceClip("a tax refund", 1.0);
		    		}else if(rand == 6){
		    			PlayVoiceClip("cash grab", 1.0);
		    		}else if(rand == 7){
		    			PlayVoiceClip("break the bank", 1.0);
		    		}else if(rand == 8){
		    			PlayVoiceClip("you broke the bank", 1.0);
		    		}else if(rand == 9){
		    			PlayVoiceClip("quite a haul", 1.0);
		    		}
	        	}else if(property.housemoney >= 15000){
		        	rand = random_func(0, 8, true);
		    		if(rand <= 1){
		    			PlayVoiceClip("its a housing boom", 1.0);
		    		}else if(rand == 2){
		    			PlayVoiceClip("we need high numbers here", 1.0);
		    		}else if(rand == 3){
		    			PlayVoiceClip("were swimming in it now", 1.0);
		    		}else if(rand == 4){
		    			PlayVoiceClip("welcome to the tycoon club", 1.0);
		    		}else if(rand == 5){
		    			PlayVoiceClip("a tax refund", 1.0);
		    		}else if(rand == 6){
		    			PlayVoiceClip("cash grab", 1.0);
		    		}else if(rand == 7){
		    			PlayVoiceClip("quite a haul", 1.0);
		    		}
	        	}else{
		        	rand = random_func(0, 3, true);
		    		if(rand <= 1){
		    			PlayVoiceClip("its a housing boom", 1.0);
		    		}else if(rand == 2){
		    			PlayVoiceClip("cash grab", 1.0);
		    		}
	        	}
	        	property.destroying = true;
        	}
        }
    }
}else if(attack == AT_JAB){
	if(window == 1 && window_timer == 1 && !hitpause){
		PlayVoiceClip("you want more1", 1.0);
	}if(window == 4 && window_timer == 1 && !hitpause){
		PlayVoiceClip("you want more2", 1.0);
	}if(window == 7 && window_timer == 1 && !hitpause && current_money2 < 500){
		PlayVoiceClip("you want more3", 1.1);
	}
	
	if(window == 7 && !hitpause){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		//var money = create_hitbox(AT_JAB, 10, x+50*spr_dir, y-35);
    		//money = create_hitbox(AT_JAB, 10, x+50*spr_dir, y-35);money.hsp *= 2;money.vsp *= 1.5;
    		//money = create_hitbox(AT_JAB, 10, x+50*spr_dir, y-35);money.hsp *= 1.5;money.vsp *= 2;
    		if(current_money2 >= 500*discount){
				sound_play(sound_get("money_pickup2"),false,noone,2);sound_play(sound_get("money_pickup3"),false,noone,2);
				moneysfx();
    			var money = create_hitbox(AT_JAB, 10, round(x+65*spr_dir), round(y-35));
    			current_money -= 500*discount;
    			if(current_money >= 2000 && attack_down){
    				create_hitbox(AT_JAB, 5, round(x), round(y));
	    			money = create_hitbox(AT_JAB, 10, round(x+65*spr_dir), round(y-35));money.hsp *= 2;money.vsp *= 1.5;money.value = 900;
	    			current_money -= 2000*discount;
	    			//if(current_money >= 500){
		    			money = create_hitbox(AT_JAB, 10, round(x+65*spr_dir), round(y-35));money.hsp *= 1.5;money.vsp *= 2;money.value = 900;
		    			//current_money -= 500;
		    		//}
	    		}
			}else{
				create_hitbox(AT_JAB, 12, round(x+65*spr_dir), round(y-35));
			}
    	}
	}if(window == 9 && window_timer == 2 && !hitpause){
		if((attack_down || up_stick_down) && ("temp_level" not in self || "temp_level" in self && temp_level <= 0))window_timer -= 1;
	}
}else if(attack == AT_DATTACK){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			hsp = 1*spr_dir;dattacktimer = 0;takearideontherailroad = true;
		}
	}else if(window == 2){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			var dusteff = spawn_hit_fx(x-15*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			dusteff = spawn_hit_fx(x+115*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
			shake_camera(5,5);sound_play(sound_get("moneybag_hit2"),false,noone,1);
			sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.5);sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.75);
			if(current_money >= 500*discount){
				sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
	    		var money = create_hitbox(AT_JAB, 10, round(x-15*spr_dir), round(y-55));money.hsp *= -1;money.vsp *= 1;money.hitbox_timer = 20;money.hit_priority = 0;;
	    		current_money -= 500*discount;
	    		if(current_money >= 500*discount){
		    		var money = create_hitbox(AT_JAB, 10, round(x-15*spr_dir), round(y-55));money.hsp *= -0.25;money.vsp *= 2;money.hitbox_timer = 20;money.hit_priority = 0;;
		    		current_money -= 500*discount;
		    	}
	    	}
		}
	}else if(window == 5){
		if(!attack_down || was_parried){
			destroy_hitboxes();
			window = 6;window_timer = 0;
		}
	}else if(window == 6){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			//if(!free && freemd){
				var choochoo = create_hitbox(AT_DATTACK, 4, round(x+60*spr_dir), round(y-25));choochoo.hsp = hsp;choochoo.vsp = vsp;
			//}else{
				//var choochoo = create_hitbox(AT_DATTACK, 4, x+60*spr_dir, y-29);choochoo.hsp = hsp;choochoo.vsp = vsp;
			//}
			if(!down_down){
				vsp = -11;
			}else{
				vsp = -7.5;hsp = 3*spr_dir;
			}
			if(attack_pressed || right_stick_pressed || left_stick_pressed){
				set_attack(AT_DATTACK);
			}
			takearideontherailroad = false;
		}
	}
	
	if((window == 4 || window == 5) && !hitpause){
		if(down_down){
			set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 19);set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 19);
		}else{
			reset_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START);reset_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START);
		}
		dattackboost =  false;
		if(!down_down || free){
			if(special_down || right_down && spr_dir == 1 || left_down && spr_dir == -1){
				if(abs(hsp) < 10 && !free){
					hsp += 0.6*spr_dir;
				}else if(abs(hsp) < 16 && !free){
					hsp += 0.3*spr_dir;
				}else{
					hsp += 0.1*spr_dir;
				}dattackboost =  true;
			}else{
				if(abs(hsp) < 10 && !free){
					hsp += 0.3*spr_dir;
				}else if(abs(hsp) < 16 && !free){
					hsp += 0.15*spr_dir;
				}else{
					hsp += 0.05*spr_dir;
				}
			}
		}else{
			if(abs(hsp) > 2){
				hsp *= 0.95;
			}else{
				hsp += 0.05*spr_dir;
			}
		}
		if(abs(hsp) > 16){
			dattacknum = 1;
		}else if(abs(hsp) > 8){
			dattacknum = 2;
		}else{
			dattacknum = 3;
		}
		if(!instance_exists(dattackhitbox) || instance_exists(dattackhitbox) && dattackhitbox.hbox_num != dattacknum){
			if(instance_exists(dattackhitbox)){
				dattackhitbox.destroyed = true;
			}
			dattackhitbox = create_hitbox(AT_DATTACK, dattacknum, round(x), round(y));
		}
		if(!free && (dattacknum = 1 && get_gameplay_time() % 2 == 0 || dattacknum = 2 && get_gameplay_time() % 4 == 0 || dattacknum = 3 && get_gameplay_time() % 6 == 0)){
			var dusteff = spawn_hit_fx(x+15*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			if(!dattackboost){
				dusteff = spawn_hit_fx(x+100*spr_dir,y-50,fx_dust);dusteff.depth = depth-1;
			}else{
				dusteff = spawn_hit_fx(x+100*spr_dir,y-50,fx_fire2);dusteff.depth = depth-1;
			}
			if(down_down || dattackboost){
				dusteff = spawn_hit_fx(x-25*spr_dir,y,fx_sparks);dusteff.depth = depth-2;
			}
		}
		dattacktimer += 1;
		if(dattacktimer % 20 == 0 && abs(hsp) > 4 && !dattackboost || dattacktimer % 6 == 0 && abs(hsp) > 4 && dattackboost){
			if(current_money >= 500*discount){
	    		var money = create_hitbox(AT_JAB, 10, round(x-15*spr_dir), round(y-55));money.hsp *= -0.25;money.vsp *= 1.5;money.hitbox_timer = 20;money.hit_priority = 0;
	    		current_money -= 500*discount;
	    	}
		}
	}
	if(window <= 2 && jump_pressed){
		cancelattack();
	}
}else if (attack == AT_FTILT){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		var dusteff = spawn_hit_fx(x-15*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
		//if(attack_down){
			create_hitbox(AT_FTILT, 4, round(x), round(y));create_hitbox(AT_FTILT, 6, round(x), round(y));
			create_hitbox(AT_FTILT, 3, round(x), round(y));hsp += 2*spr_dir;
		//}
	}else if(window == 3){
		if(!attack_down || was_parried){
			destroy_hitboxes();
			window = 4;window_timer = 0;
		}
	}else if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		var dusteff = spawn_hit_fx(x+90*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
	}
	if(window == 2 || window == 3){
		if(window_timer == 6 && !hitpause){
			var dusteff = spawn_hit_fx(x+80*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
		}
	}
}else if(attack == AT_UTILT){
	if(window == 1 && !hitpause){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		if(current_money2 >= 500*discount){
				sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
				moneysfx();
    			var money = create_hitbox(AT_JAB, 10, round(x+50*spr_dir), round(y-65));money.hsp *= 0.5;money.vsp *= 2.5;
    			current_money -= 500*discount;
    			if(current_money >= 750*discount && (attack_down || up_stick_down)){
    				set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, get_hitbox_value(AT_UTILT, 1, HG_DAMAGE)+3);
	    			var money = create_hitbox(AT_JAB, 10, round(x+50*spr_dir), round(y-65));money.hsp *= -0.25;money.vsp *= 2;money.value = 1000;
	    			current_money -= 750*discount;
	    			if(current_money >= 750*discount){
		    			var money = create_hitbox(AT_JAB, 10, round(x+50*spr_dir), round(y-65));money.hsp *= 1;money.vsp *= 1.75;
		    			current_money -= 750*discount;
		    		}
	    		}
			}else{
				var dust = create_hitbox(AT_JAB, 12, round(x+50*spr_dir), round(y-65));dust.hsp *= 0.5;dust.vsp *= 1.75;
			}
    	}
	}
	if(window == 3 && window_timer == 2 && !hitpause){
		if((attack_down || up_stick_down) && ("temp_level" not in self || "temp_level" in self && temp_level <= 0))window_timer -= 1;
	}
}else if (attack == AT_DTILT){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		var dusteff = spawn_hit_fx(x-15*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	}
}else if (attack == AT_FSTRONG){
    if(window == 2 && !hitpause){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			shake_camera(10,7);sound_play(sound_get("moneybag_hit2"),false,noone,1.5);
			//var dusteff = spawn_hit_fx(x-45*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			var dusteff = spawn_hit_fx(x+35*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			dusteff = spawn_hit_fx(x+105*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
		}
    }
}else if (attack == AT_USTRONG){
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		var dusteff = spawn_hit_fx(x-35*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
		if(current_money2 <= 15000){
			dusteff = spawn_hit_fx(x+65*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
		}else{
			dusteff = spawn_hit_fx(x+65*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;
		}
	}
    if(window == 4 && !hitpause){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if(current_money2 <= 15000){
				shake_camera(2,4);sound_play(sound_get("moneybag_hit2"),false,noone,1.5);
				var dusteff = spawn_hit_fx(x-115*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			}else if(current_money2 <= 30000){
				shake_camera(5,5);sound_play(sound_get("moneybag_hit"),false,noone,1.5);//sound_play(sound_get("moneybag_money"),false,noone,1);
				var dusteff = spawn_hit_fx(x-115*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			}else{
				shake_camera(12,10);sound_play(sound_get("moneybag_hit"),false,noone,1.5);sound_play(sound_get("moneybag_money"),false,noone,1);
				var dusteff = spawn_hit_fx(x-115*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
			}
		}
    }if(window == 5 && !hitpause){
		if(window_timer == 1){
			if(current_money2 <= 15000){
			}else if(current_money2 <= 30000){
			}else{
				if(!has_hit){
					if(current_money2 >= 6000*discount){
						sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
		    			var money = create_hitbox(AT_JAB, 10, round(x-40*spr_dir), round(y-25));money.hsp *= -0.6;money.vsp *= 1.5;money.value = 1000;
		    			var money = create_hitbox(AT_JAB, 10, round(x-60*spr_dir), round(y-25));money.hsp *= -0.9;money.vsp *= 1;money.value = 1000;
		    			current_money -= 6000*discount;
					}
				}
			}
		}
    }
    
    if(window >= 5 && current_money2 <= 15000 && !hitpause && !strong_down && !up_strong_pressed){
    	cancelattack();
    }
}else if (attack == AT_DSTRONG){
    if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		var dusteff = spawn_hit_fx(x+75*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
	}
}else if(attack == AT_NAIR){
	if(window == 1 && !hitpause){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		if(current_money2 >= 500*discount){
				sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
				moneysfx();
    			var money = create_hitbox(AT_JAB, 10, round(x+40*spr_dir), round(y-45));money.hsp *= 0.5;money.vsp *= 1;money.value = 300;
    			var money = create_hitbox(AT_JAB, 10, round(x-40*spr_dir), round(y-45));money.hsp *= -0.5;money.vsp *= 1;money.value = 300;
    			current_money -= 500*discount;
    			if(current_money >= 400*discount && attack_down){
	    			var money = create_hitbox(AT_JAB, 10, round(x+40*spr_dir), round(y-55));money.hsp *= 1;money.vsp *= 1.5;money.value = 500;
	    			current_money -= 400*discount;
	    			if(current_money >= 400*discount){
		    			var money = create_hitbox(AT_JAB, 10, round(x-40*spr_dir), round(y-55));money.hsp *= -1;money.vsp *= 1.5;money.value = 500;
		    			current_money -= 400*discount;
		    			if(current_money >= 400*discount){
			    			var money = create_hitbox(AT_JAB, 10, round(x+40*spr_dir), round(y-35));money.hsp *= 1;money.vsp *= -0.5;money.value = 500;
			    			current_money -= 400*discount;
			    			if(current_money >= 400*discount){
				    			var money = create_hitbox(AT_JAB, 10, round(x-40*spr_dir), round(y-35));money.hsp *= -1;money.vsp *= -0.5;money.value = 500;
				    			current_money -= 400*discount;
				    		}
			    		}
		    		}
	    		}
			}else{
				var dust = create_hitbox(AT_JAB, 12, round(x+50*spr_dir), round(y-55));dust.hsp *= 0.5;dust.vsp *= 1.75;
				dust = create_hitbox(AT_JAB, 12, round(x-50*spr_dir), round(y-55));dust.hsp *= -0.5;dust.vsp *= 1.75;
				dust = create_hitbox(AT_JAB, 12, round(x+50*spr_dir), round(y-35));dust.hsp *= 0.75;dust.vsp *= 0.75;
				dust = create_hitbox(AT_JAB, 12, round(x-50*spr_dir), round(y-35));dust.hsp *= -0.75;dust.vsp *= 0.75;
			}
    	}
	}
}else if (attack == AT_BAIR){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	if(BAir_cooldown <= 0 && (attack_down || right_stick_down || left_stick_down || right_strong_down || left_strong_down || strong_down) && current_money >= 1500*discount){
    		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_throw"));set_num_hitboxes(AT_BAIR, 1);
    		if(current_money2 <= 15000){
    			if(current_money >= 1500*discount){
					var money = create_hitbox(AT_BAIR, 3, round(x-50*spr_dir), round(y-75));money.spr_dir = -spr_dir;//money.hsp *= 0.5;money.vsp *= 2.5;
					current_money -= 1500*discount;
    			}
			}else if(current_money2 <= 30000){
				if(current_money >= 3000*discount){
					var money = create_hitbox(AT_BAIR, 4, round(x-50*spr_dir), round(y-75));money.spr_dir = -spr_dir;//money.hsp *= 0.5;money.vsp *= 2.5;
					current_money -= 3000*discount;
    			}
			}else{
				if(current_money >= 6000*discount){
					var money = create_hitbox(AT_BAIR, 5, round(x-50*spr_dir), round(y-75));money.spr_dir = -spr_dir;//money.hsp *= 0.5;money.vsp *= 2.5;
					current_money -= 6000*discount;
    			}
			}
			BAir_cooldown = 45;
    	}
    }
    if(window == 2 && window_timer == 1 && !hitpause && get_num_hitboxes(AT_BAIR) > 1){
		if(current_money2 <= 15000){
		}else if(current_money2 <= 30000){
		}else{
			if(!has_hit){
				if(current_money2 >= 4000*discount){
					sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
		    		var money = create_hitbox(AT_JAB, 10, round(x-60*spr_dir), round(y-55));money.hsp *= -0.6;money.vsp *= 1.5;money.value = 750;money.hit_priority = 0;
		    		var money = create_hitbox(AT_JAB, 10, round(x-45*spr_dir), round(y-85));money.hsp *= -0.9;money.vsp *= 1;money.value = 750;money.hit_priority = 0;
		    		current_money -= 4000*discount;
				}
			}
		}
    }
}else if(attack == AT_UAIR){
	if(window == 1 && !hitpause){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		if(current_money2 >= 500){
				sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
				moneysfx();
    			var money = create_hitbox(AT_JAB, 10, round(x+35*spr_dir), round(y-75));money.hsp *= 0.5;money.vsp *= 2;
    			current_money -= 500*discount;
    			if(current_money >= 5000*discount && (attack_down || up_stick_down || up_strong_down || strong_down)){
    				hsp -= 3*spr_dir;vsp += 5;
    				create_hitbox(AT_UAIR, 2, round(x), round(y));
	    			var money = create_hitbox(AT_JAB, 10, round(x+35*spr_dir), round(y-75));money.hsp *= 0.25;money.vsp *= 3;money.value = 1000;
	    			current_money -= 5000*discount;
	    			//if(current_money >= 500){
		    			money = create_hitbox(AT_JAB, 10, round(x+35*spr_dir), round(y-75));money.hsp *= 1;money.vsp *= 1.5;money.value = 1000;
		    			//current_money -= 500;
		    			//if(current_money >= 500){
			    			money = create_hitbox(AT_JAB, 10, round(x+35*spr_dir), round(y-75));money.hsp *= 1.5;money.vsp *= 3.5;
			    			//current_money -= 500;
			    		//}
		    		//}
	    		}
			}else{
				var dust = create_hitbox(AT_JAB, 12, x+35*spr_dir, y-75);dust.hsp *= 0.5;dust.vsp *= 2;
			}
    	}
	}
}else if (attack == AT_DAIR){
	if(window != 3){
		reset_attack_value(AT_DAIR, AG_CATEGORY);
	}else{
		set_attack_value(AT_DAIR, AG_CATEGORY, 2);
	}
	if(shield_down){
		fall_through = true;
	}
	if((window == 2 || window == 3) && vsp >= -4 && DairBounce <= 0){
		with(pHitBox){
	    	if(damage > 0 && kb_value > 0 && hit_priority > 0 && player_id != other){
		    	if(place_meeting(x,y,other.dairhitbox)){
		    		other.DairBounce = 2;
		    	}
	    	}
	    }
	}
	if(window == 1){
		if (window_timer == 10 && !hitpause)dairhitbox = create_hitbox(AT_DAIR, 1, x, y);
	}else if(window == 2){
		if (window_timer < 6 && !hitpause && !shield_down && 
		(position_meeting(x,y+20,asset_get("par_block")) || position_meeting(x-10*spr_dir,y+20,asset_get("par_block")) || position_meeting(x+10*spr_dir,y+20,asset_get("par_block"))
		|| position_meeting(x,y+20,asset_get("par_jumpthrough")) || position_meeting(x-10*spr_dir,y+20,asset_get("par_jumpthrough")) || position_meeting(x+10*spr_dir,y+20,asset_get("par_jumpthrough")))
		|| DairBounce){
			vsp = -13;old_vsp = vsp;
			if(DairBounce == 2){
    			spawn_hit_fx(x,y,304);sound_play(asset_get("sfx_blow_heavy1"));
    		}sound_play(asset_get("sfx_land"));dust = spawn_hit_fx(x, y, fx_dust);dust.depth = depth-1;
			DairBounce = 0;move_cooldown[AT_USPECIAL] = 0;djumps = 0;has_airdodge = true;
		}
    	if(window_timer == 12 && !attack_down && !hitpause){window = 4;window_timer = 0;destroy_hitboxes();}
    }else if(window == 3){
    	if(vsp <= 2){
    		can_fast_fall = false;
    	}else{
    		can_fast_fall = true;
    	}if(vsp >= 0 && !instance_exists(dairhitbox) && !hitpause){
    		if(DairBounceHits < 2){dairhitbox = create_hitbox(AT_DAIR, 2, round(x), round(y));}
    		else{dairhitbox = create_hitbox(AT_DAIR, 3, round(x), round(y));}
    	}else if(vsp < 0){
    		destroy_hitboxes();
    	}
    	if(!free){
			DairBounce = 1;sound_play(asset_get("sfx_land"));dust = spawn_hit_fx(x, y, fx_dust);dust.depth = depth-1;
		}
    	if(DairBounce > 0){
    		if(DairBounce == 2){
    			spawn_hit_fx(x,y,303);sound_play(asset_get("sfx_blow_medium1"));
    		}
    		DairBounce = 0;
    		if(!up_down && !down_down){vsp = -9;old_vsp = vsp;}
    		else if(up_down){vsp = -12;old_vsp = vsp;}
    		else if(down_down){vsp = -7;old_vsp = vsp;}
	    }
	    free = true;
    	if(!attack_down && !hitpause || was_parried){window = 4;window_timer = 0;destroy_hitboxes();}
    }
}else if (attack == AT_TAUNT){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        rand = random_func(0, 7, true);
	    if(rand <= 2){
	    	PlayVoiceClip("very skillful", 1.0);
	    }else if(rand == 3){
	    	PlayVoiceClip("monopoly byebyenow", 1.0);
	    }else if(rand == 4){
	    	PlayVoiceClip("lets go", 1.0);
	    }else if(rand == 5){
	    	PlayVoiceClip("youre all wet", 1.0);
	    }else if(rand == 6){
	    	PlayVoiceClip("you want more", 1.0);
	    }
	    if(instance_exists(property) && taunt_down){
	    	with(property){
		    	if(place_meeting(x,y,other) && housemoney >= 150000-other.discount_stocks){
		    		housemoney -= 150000-other.discount_stocks;
			    	sound_play(sound_get("soldsfx"),false,noone,2);
			    	set_player_stocks(other.player,get_player_stocks(other.player)+1);
		    	}
		    }
	    }
    }
    if(window == 2 || window == 5 || window == 8){
    	if(!taunt_down){
	    	window += 1;window_timer = 0;
	    }
    }
    
    if(window == 4){
    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && instance_exists(property) && taunt_down){
	    	with(property){
		    	if(place_meeting(x,y,other)){
		    		toggleplatform = true;
		    	}
		    }
	    }
    }
    
    if(jump_pressed && free){
    	window = 30;window_timer = 0;
    }
    
    if(!free && kewtmode <= 0 && attack_down && jump_down && taunt_down){ //kewtians!!!!!!!!!!!!
		kewtmode = 1;
    }
}else if (attack == 49){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	//finalsmashnum = random_func(1, 3, true);
    	finalsmashnum = 2;
    	if(finalsmashnum == 0){ //dices
	        rand = random_func(0, 9, true);
    		if(rand == 1){
    			PlayVoiceClip("time to roll the dice", 1.0);
    		}else if(rand == 2){
    			PlayVoiceClip("lets roll", 1.0);
    		}else if(rand == 3){
    			PlayVoiceClip("time to roll", 1.0);
    		}else if(rand == 4){
    			PlayVoiceClip("i hope this is a good one", 1.0);
    		}else if(rand == 5){
    			PlayVoiceClip("im feeling lucky today", 1.0);
    		}else if(rand == 6){
    			PlayVoiceClip("feeling lucky", 1.0);
    		}else if(rand == 7){
    			PlayVoiceClip("take a chance", 1.0);
    		}
    	}else if(finalsmashnum == 1){ //tokens
    		PlayVoiceClip("move your token", 1.0);
    	}else if(finalsmashnum == 2){ //property
    		rand = random_func(0, 7, true);
    		if(rand <= 1){
    			PlayVoiceClip("i love building houses", 1.0);
    		}else if(rand == 2){
    			PlayVoiceClip("free property", 1.0);
    		}else if(rand == 3){
    			PlayVoiceClip("lets collect that rent now", 1.0);
    		}else if(rand == 4){
    			PlayVoiceClip("time to raise the rent", 1.0);
    		}else if(rand == 5){
    			PlayVoiceClip("owning property never goes out of style", 1.0);
    		}else if(rand == 6){
    			PlayVoiceClip("its time for landgrab", 1.0);
    		}
    	}
    }
    if(window == 2){
    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	    	//sound_stop(voice);voice = sound_play(sound_get("very skillful"));
	    	finalsmashtimer = 300;
	    }
    }
}

#define KoB_reverse
	if((left_down && spr_dir == 1 || right_down && spr_dir == -1) && !b_reversed){
    	hsp = -hsp;spr_dir = -spr_dir;b_reversed = true;
	}

#define cancelattack
    if(has_hit && (attack_pressed || special_pressed || jump_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
		if(attack == AT_DATTACK){
			var choochoo = create_hitbox(AT_DATTACK, 4, round(x+60*spr_dir), round(y-25));choochoo.hsp = hsp;choochoo.vsp = vsp;
			hitpause = 0;hitstop = 0;in_hitpause = false;
			if(current_money >= 3000*discount){
    			money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp *= -1;money.vsp *= 2;money.value = 3000;money.hitbox_timer = 20;money.hit_priority = 0;
    			current_money -= 3000*discount;
    		}takearideontherailroad = false;
		}
	}
	
#define cancelattack2
    if(attack_pressed || special_pressed || jump_pressed || shield_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed){
		window = 20;
		if(attack == AT_USPECIAL){
			uspectarget.destroyed = true;spawn_hit_fx(round(uspectarget.x) , round(uspectarget.y), 302);
			window = 18;mask_index = asset_get("ex_guy_collision_mask");
			if(current_money >= 5000*discount){
    			money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp *= -1;money.vsp *= 2;money.value = 5000;money.hitbox_timer = 20;money.hit_priority = 0;
    			current_money -= 5000*discount;
    		}
		}
	}
	
#define moneysfx
    rand = random_func(0, 5, true);
	//voice = sound_play(sound_get("money"+string(rand+1)),false,noone,2);
	PlayVoiceClip("money"+string(rand+1), 1.0);
	
#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1, voicepitch);
	//}