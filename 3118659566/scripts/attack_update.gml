//B - Reversals
switch(attack){
	case AT_NSPECIAL:
		trigger_b_reverse();
	case AT_NSPECIAL_AIR:
		trigger_b_reverse();
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if(window == 1 && window_timer = 1 && attack != AT_DSPECIAL_2){
	dspec_cancel = false;
}

if mailboxID != 0 {
	if dspec_cancel = true {
		if ((((attack != AT_DSPECIAL && attack != AT_DAIR && attack != AT_BAIR && attack != AT_UTILT && attack != AT_USPECIAL && attack != AT_USPECIAL_2 && attack != AT_FSPECIAL) || ((attack == AT_FSPECIAL && window == 4 && window_timer >= 12) || (attack == AT_DAIR && window == 5)  || (attack == AT_BAIR || attack == AT_UTILT || attack == AT_USPECIAL || attack == AT_USPECIAL_2) && window == 3))) && mailboxID.letters != 0) {
			if(hitpause){
		    	if(special_pressed || special_down) && (down_pressed ||down_down) {
		            attack_end();
		            destroy_hitboxes();
					attack = AT_DSPECIAL_2;
					window = 1;
					window_timer = 0;
					sound_stop(sound_get("rapidjab"));	
					sound_stop(sound_get("dashcharge"));	
					hurtboxID.sprite_index = sprite_get("dspecial_act");
					dspec_cancel = false;
				}
			}
		}
	}
}

// per-attack logic

switch(attack){
	
	case AT_JAB:
		if (window == 2 || window == 5) && (window_timer == 1) {
    		clear_button_buffer(PC_ATTACK_PRESSED);
		}
		
		if window == 7 && window_timer == 5 {
			sound_play(sound_get("rapidjab"), 1);	
		}
		
		if (window == 8) {
			if window_timer == 16 && attack_down {
				window_timer = 1;
			} else if window_timer == 16 {
				create_hitbox(AT_JAB, 5, x, y)
			}
			if (window_timer == 1) && !hitpause {
				create_hitbox(AT_JAB, 3, x, y);
				attack_end()
			} else if (window_timer ==  8) && !hitpause {
				create_hitbox(AT_JAB, 4, x, y);
				attack_end()
			}
		}
		
		if window == 9 && window_timer == 1 {
			sound_stop(sound_get("rapidjab"));	
			sound_play(sound_get("rapidjabfinisher"));
		}
		
	break;
	
	case AT_DAIR:
		can_fast_fall = false;
		
		if(window == 1){
		  	grabbed_player_obj = noone;
		  	mb_dair_hit = false;
		  	set_attack_value(AT_DAIR, AG_CATEGORY, 1);
		}
    	if(window == 2 and mb_dair_hit = true and !hitpause){
	    	set_attack_value(AT_DAIR, AG_CATEGORY, 2);
    		window = 6;
    		window_timer = 0;
    	}
    	if(window == 2 and grabbed_player_obj!= noone and !hitpause){
			set_attack_value(AT_DAIR, AG_CATEGORY, 2);
    		window = 4;
    		window_timer = 0;
    	} 
		if(window == 4){
			if hsp > 0 && hsp > 6 {
				hsp = 6;
			}
			if hsp < 0 && hsp < -6 {
				hsp = -6;
			}
			if vsp < -8 {
				vsp = -8;
			}
			
    		can_move = false;
   			vsp = -2;
	   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;

			if (window_timer <= 8) {
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir * 20, .45);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y + 25, .35);
			} else if(window_timer > 8 && window_timer <= 12){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir * 60, .45);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 1, .35);
			} else if(window_timer > 12 && window_timer <= 16){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir * 65, .45);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 85, .35);
			} 
			
			if (window_timer == 8) {
				if left_down && spr_dir = 1 {
					spr_dir = spr_dir * -1;
				} else if right_down && spr_dir = -1 {
					spr_dir = spr_dir * -1;
				}
				sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
				sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
			}
			
			if window_timer == 16 {
				window = 5;
				window_timer = 0;
		   		grabbed_player_obj.hitpause = false;
				grabbed_player_obj.hitstop = 0;
				grabbed_player_obj.hitstun = false;
				grabbed_player_obj = noone;
				vsp = -10;
			    move_cooldown[AT_DAIR] = 999;
			}
		}
		
		if (window == 5){
    		can_move = true;
		}
		
		
	if(window == 6){
		
			if hsp > 0 && hsp > 6 {
				hsp = 6;
			}
			if hsp < 0 && hsp < -6 {
				hsp = -6;
			}
			if vsp < -8 {
				vsp = -8;
			}
			
    		can_move = false;
   			vsp = -2;

			if (window_timer == 8) {
				sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
				sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
				if left_down && spr_dir = 1 {
					spr_dir = spr_dir * -1;
				} else if right_down && spr_dir = -1 {
					spr_dir = spr_dir * -1;
				}
			}
			
			if window_timer == 16 {
				dairprojID = create_hitbox(AT_DAIR, 3, x + (spr_dir * 40), y - 90);
				sound_play(asset_get("sfx_shovel_hit_light1"))
				window = 7;
				window_timer = 0;
				vsp = -10;
			    mb_dair_hit = false;
			}
		}
		
		if (window == 7){
    		can_move = true;
		}
		
	break;

	
	case AT_DATTACK:
		if window == 1 && window_timer == 9 {
			sound_play(asset_get("sfx_zetter_downb"));
		}
	break;
	
	case AT_FSTRONG:
		
	break;
	
	case AT_USTRONG:
	
		can_fast_fall = false;
		
			if window == 4 {
			if (strong_down || (left_strong_pressed || right_strong_pressed) || attack_down || special_down) {
			window = 5;
			window_timer = 0;
			}
		}
		
		if window == 5 {

			if vsp > 4.5 {
				vsp = 4.5;
			}
	
			if window_timer == 15 {
				vsp = -6;
				hsp = -4 * spr_dir;
				airletter3ID = create_hitbox(AT_NSPECIAL_AIR, 3, x + (spr_dir * 42), y - 46);
				sound_play(sound_get("lettertoss"))
				sound_play(asset_get("sfx_swipe_heavy2"))
			}
			
			if window_timer == 36 {
				window = 6;
				window_timer = 0;
			}
		}
	break;
	
	case AT_NSPECIAL:
		if window == 1 {
			if window_timer == 1 {
				nspec_timer = 0;
				nspec_charge = 1;
			}
		}
		
		if window == 2 {
			nspec_timer++;
			if nspec_timer == 1 && special_down {
				nspec_charge = 1;
	         sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));	
			} else if nspec_timer == 14 && special_down {
				nspec_charge = 2;
	         sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));	
			} else if nspec_timer == 28 && special_down {
				nspec_charge = 3;
	         sound_play(asset_get("sfx_frog_fspecial_charge_full"));	
			}
		
			if (window_timer > 4 && !special_down) || window_timer == 42 {
				window = 3;
				window_timer = 1;
				switch(nspec_charge){
					case 1:
						letter1ID = create_hitbox(AT_NSPECIAL, 1, x + (spr_dir * 40), y - 40);
					break;
					case 2:
						letter2ID = create_hitbox(AT_NSPECIAL, 2, x + (spr_dir * 44), y - 44);
					break;
					case 3:
						letter3ID = create_hitbox(AT_NSPECIAL, 3, x + (spr_dir * 48), y - 48);
					break;
				}
			}
		}

		if window == 3 && window_timer == 1 {
			sound_play(sound_get("lettertoss"))
			sound_play(asset_get("sfx_swipe_heavy2"))
		    move_cooldown[AT_NSPECIAL] = 45;
   		    move_cooldown[AT_NSPECIAL_AIR] = 45;
		}
	break;
	
	case AT_NSPECIAL_AIR:
		if window == 1 {
			if window_timer == 1 {
				nspec_timer = 0;
				nspec_charge = 1;
			}
		}
		
		if window == 2 {
			nspec_timer++;
			if nspec_timer == 1 && special_down {
				nspec_charge = 1;
	         sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));	
			} else if nspec_timer == 14 && special_down {
				nspec_charge = 2;
	         sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));	
			} else if nspec_timer == 28 && special_down {
				nspec_charge = 3;
	         sound_play(asset_get("sfx_frog_fspecial_charge_full"));	
			}
		
			if (window_timer > 4 && !special_down) || window_timer == 42 {
				window = 3;
				window_timer = 1;
				switch(nspec_charge){
					case 1:
						airletter1ID = create_hitbox(AT_NSPECIAL_AIR, 1, x + (spr_dir * 40), y - 40);
					break;
					case 2:
						airletter2ID = create_hitbox(AT_NSPECIAL_AIR, 2, x + (spr_dir * 44), y - 44);
					break;
					case 3:
						airletter3ID = create_hitbox(AT_NSPECIAL_AIR, 3, x + (spr_dir * 48), y - 48);
						vsp = -6;
						hsp = -4 * spr_dir;					
					break;
				}
			}
		}

		if window == 3 && window_timer == 1 {
			sound_play(sound_get("lettertoss"))
			sound_play(asset_get("sfx_swipe_heavy2"))
		    move_cooldown[AT_NSPECIAL] = 45;
   		    move_cooldown[AT_NSPECIAL_AIR] = 45;
		}
		if window == 1 || window == 2 || window == 3 {
			if vsp > 4.5 {
				vsp = 4.5;
			}
		}

		if attack == AT_NSPECIAL_AIR && attack != AT_NSPECIAL && !free {
			var temp_window_timer = window_timer; 
			attack = AT_NSPECIAL;
    		hurtboxID.sprite_index = sprite_get("nspecial_hurt");
			window_timer = temp_window_timer;
		}
	break;
	
	case AT_USPECIAL:
		can_fast_fall = false;
		if window == 1 && window_timer == 1 {
			set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0.2);
			set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
		}
	
		if window == 2 && window_timer == 11 && !hitpause {
			sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
		}
		if window == 3 {
			vsp = vsp * 0.975;
		}
	break;
	
	case AT_USPECIAL_2:
		can_fast_fall = false;
	if window == 2 && window_timer == 11 && !hitpause {
		sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
		sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
	}
	if window == 3 {
		vsp = vsp * 0.975;
	}
	break;

	case AT_FSPECIAL:
		if free {
			attack_end();
			set_attack( AT_FSPECIAL_2 )
			window = 1;
			window_timer = 0;
		}
		if window == 1 && window_timer == 8 {
			//sound_play(asset_get("sfx_bird_sidespecial_start"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
		}
		can_fast_fall = false;
		can_move = false;

		if(window == 1){
		  	grabbed_player_obj = noone;
		}
    	if(grabbed_player_obj!= noone){
	   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
    	
    		if window == 2 || (window == 3 && window_timer < 6) || (window == 4 && window_timer < 7) {
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir * 50, .45);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 5, .35);
    		}
    		
    		if window == 3 && window_timer == 5 {
    			hsp = hsp + (2 * spr_dir)
    			destroy_hitboxes();
				window = 4;
				window_timer = 0;
				var k = spawn_hit_fx(x + (spr_dir * 40), y - 0, vfx_fspecial_ground_bonk);
		       	k.depth = depth - 1;
    		}
    		
			if window == 4 {
				if window_timer == 8 {
			   		grabbed_player_obj.hitpause = false;
					grabbed_player_obj.hitstop = 0;
					grabbed_player_obj.hitstun = false;
					grabbed_player_obj = noone;
					create_hitbox(AT_FSPECIAL, 3, x, y)
				}		
			}
    	}
		
		if window == 1 && window_timer == 1 {
			var timer1 = random_func(1, 9, true);
			fspecial_letter_timer = timer1;
		}
		
		if window == 1 && window_timer > 6 {
			hsp = (7 * spr_dir);
		}
		
		if window == 2 {
			if window_timer == 1 {
				hsp = (8 * spr_dir);
			} else if window_timer > 1 && window_timer <= 5 {
				hsp = (hsp * 1.1);
			} else if window_timer > 5 {
				hsp = (10 * spr_dir);
			}
		}
		
		if ((window == 2 && window_timer > 6) || (window == 3 && window_timer < 6)) {
			if !hitpause && grabbed_player_obj = noone {
				if special_pressed {	
	    			destroy_hitboxes();
	    			hsp = hsp + (2 * spr_dir)
					window = 4;
					window_timer = 0;
					var k = spawn_hit_fx(x + (spr_dir * 40), y - 0, vfx_fspecial_ground_bonk);
		       		k.depth = depth - 1;
				}
			}
			if window_timer % 4 = 0 && !hitpause {
				var k = spawn_hit_fx(x, y - 0, fspecial_wind_vfx);
        		k.depth = depth + 1;
			} 
			if window == 2 {

				var timer2 = random_func(1, 9, true);
				var lx = x + 20 - (spr_dir * floor(char_height/2.5) - random_func(0, char_height * 0.75, true));
				var ly = y - (50 - (random_func(0, 30, true)));
				//print(string("timer1: ") + string(fspecial_letter_timer))
				//print(string("timer2: ") + string(timer2))
				if (window_timer == fspecial_letter_timer || (window_timer == timer2 && timer2 != fspecial_letter_timer)) && !hitpause {
					var letter_num = random_func(1, 4, true);
					//var letter_drawn = string("fspecial_letter_vfx" + string(letter_num));
					switch letter_num {
						case 1:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx1); break;
						case 2:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx2); break;
						case 3: var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx3); break;
					}
        			l.depth = depth + 1;
				}
			}
		}
		
		if window == 4 && window_timer == 12 {
			create_hitbox(AT_FSPECIAL, 3, x, y)
		}
		
	break;
	
	case AT_FSPECIAL_AIR:
		can_fast_fall = false;
		
		if window == 1 && window_timer == 1 {
			var timer1 = random_func(1, 9, true);
			fspecial_letter_timer = timer1;
			fspec_bounced = false;
		}
		if window == 1 && window_timer == 8 {
			//sound_play(asset_get("sfx_bird_sidespecial_start"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
		}
		if window == 1 && window_timer < 9 {
			if down_down || down_pressed {
				var temp_window_timer = window_timer; 
				attack_end();
			    set_attack( AT_FSPECIAL_2 )
	    		hurtboxID.sprite_index = sprite_get("fspecial_air_down_hurt");
	    		window_timer = temp_window_timer;
			}
		}
		
		if (window == 2 || (window == 3 && window_timer < 6) || window == 6 && window_timer < 6) {

				if place_meeting(x + (40 * spr_dir), y, asset_get("par_block")) {
					var k = spawn_hit_fx(x, y - 0, vfx_fspecial_air_bonk);
		       		k.depth = depth + 1;
					window = 5;
					window_timer = 0;
					destroy_hitboxes();
					hsp = -7 * spr_dir;
					vsp = -10;
					can_move = false;
					sound_play(asset_get("sfx_zetter_downb"))
					fspec_bounced = true;
				}	

			if window_timer % 3 = 0 && !hitpause {
				var k = spawn_hit_fx(x, y + 25, fspecial_wind_vfx);
        		k.depth = depth + 1;
			} 
			if window == 2 {
				
				var timer2 = random_func(1, 9, true);
				var lx = x + (spr_dir * floor(char_height/2.5) - random_func(0, char_height * 0.75, true));
				var ly = y - random_func(2, char_height * 0.5, true);
				//print(string("timer1: ") + string(fspecial_letter_timer))
				//print(string("timer2: ") + string(timer2))
				if (window_timer == fspecial_letter_timer || (window_timer == timer2 && timer2 != fspecial_letter_timer)) && !hitpause {
					var letter_num = random_func(1, 4, true);
					//var letter_drawn = string("fspecial_letter_vfx" + string(letter_num));
					switch letter_num {
						case 1:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx1); l.depth = depth + 1; break;
						case 2:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx2); l.depth = depth + 1; break;
						case 3: var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx3); l.depth = depth + 1; break;
					}
				}
			}
		}
		if window == 3 {
			hsp = (hsp * 0.925);
			
			if window_timer == 1 && !has_hit {
				window = 6;
				window_timer = 0;
			}
			
			if !free {
				window = 4;
				window_timer = 0;
				spawn_base_dust(x, y, "land");
			}
			
		}
		
		if window == 5 {
			hsp = hsp * 0.95;
			vsp = vsp * 0.95;
		}
		
		if window == 6 {
			hsp = (hsp * 0.9);
			if !free {
				window = 4;
				window_timer = 0;
				spawn_base_dust(x, y, "land");
			}
		}
		
	break;
	
		case AT_FSPECIAL_2:
		if window == 1 && window_timer == 11 {
			//sound_play(asset_get("sfx_bird_sidespecial_start"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
			sound_play(sound_get("bigwhoosh"), 0, noone, 1, 1.3)
		}
		can_fast_fall = false;

		if window == 1 && window_timer == 1 {
			var timer1 = random_func(1, 9, true);
			fspecial_letter_timer = timer1;
		}
		
		if (window == 2 || (window == 3 && window_timer < 6)) {
			if window_timer % 4 = 0 && !hitpause {
				var k = spawn_hit_fx(x + (spr_dir * 40), y - 1, fspecial_wind_vfx);
        		k.depth = depth + 1;
			} 
			if window == 2 {

				if has_hit {
					window = 5;
					window_timer = 0;
				}

				if !free {
					window = 4;
					window_timer = 0;
					destroy_hitboxes();
					sound_play(asset_get("sfx_zetter_downb"))
					//spawn_base_dust(x, y, "land");
				}

				var timer2 = random_func(1, 9, true);
				var lx = x + (spr_dir * 36 - random_func(0, char_height * 0.25, true));
				var ly = y - (40 + random_func(2, floor(char_height * 0.25), true));
				//print(string("timer1: ") + string(fspecial_letter_timer))
				//print(string("timer2: ") + string(timer2))
				if (window_timer == fspecial_letter_timer || (window_timer == timer2 && timer2 != fspecial_letter_timer)) && !hitpause {
					var letter_num = random_func(1, 4, true);
					//var letter_drawn = string("fspecial_letter_vfx" + string(letter_num));
					switch letter_num {
						case 1:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx1); break;
						case 2:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx2); break;
						case 3: var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx3); break;
					}
        			l.depth = depth + 1;
				}
			}
		}
		if window == 3 {
			hsp = (hsp * 0.975);
			vsp = (vsp * 0.925);
			if !free {
					window = 4;
					window_timer = 0;
					sound_play(asset_get("sfx_zetter_downb"))
					//spawn_base_dust(x, y, "land");
			}
		}
		
		if window == 5 {
			if window_timer == 1 {
				hsp = -3 * spr_dir;
				vsp = -8;
			}
			
			hsp = (hsp * 0.975);
			vsp = (vsp * 0.925);
		}
		
	break;
	
	case AT_DSPECIAL:
			can_move = false 
			can_fast_fall = false 
			
		if window == 1 && window_timer == 1 {
			killarticles = false;
			explo_owner = noone;
			explo1 = 0;
			
			if mailboxID != 0 && mailboxID.letters != 0 {
				attack_end();
		    	set_attack( AT_DSPECIAL_2 )
	    		hurtboxID.sprite_index = sprite_get("dspecial_act_hurt");
		    	window = 1;
		    	window_timer = 0;
		    	killarticles = false;
			} else if mailboxID != 0 && mailboxID.letters = 0 {
				mailboxID.state = 1;
				mailboxID.state_timer = 0;
			}
		}
	
		if window == 2 && window_timer == 1 && !hitpause {
			sound_play(asset_get("sfx_shovel_hit_med1"))
		}
		if window == 3 && window_timer == 10  {
			mailboxID = instance_create(x + (spr_dir * 57), y - 2 , ("obj_article1"));
		    move_cooldown[AT_DSPECIAL] = 50;
			//print("test")
		}
	break;
	
	case AT_DSPECIAL_2:
			can_move = false 
			can_fast_fall = false 
			
		if window == 2 && window_timer == 1 {
			if mailboxID.state == 0 {
					mb_shoot = true;
			}
				if mailboxID.letters < 3 {
					sound_play(sound_get("whistle"), 0, noone, 2, 1)
				} else if mailboxID.letters == 3 {
					sound_play(sound_get("bigwhistle"), 0, noone, 2, 1)
				}
			}
		
		
	break;
	
	case AT_EXTRA_1:  //custom DJUMP
	
		if window == 1 {
			can_move = false 
			can_fast_fall = false 
			can_shield = true;
			if window_timer == 1 {
				djump_charge = 40
				sound_play(sound_get("dashcharge"), 1);	
			}
			
			if tap_jumped = false {
				if !joy_pad_idle {
					snapped_angle = floor((joy_dir * 8/360) + 0.5) * 45
				} else if joy_pad_idle && joy_pad_timer > 6 {
					snapped_angle = 90;
				}
			} else if tap_jumped = true {
				snapped_angle = floor((joy_dir * 8/360) + 0.5) * 45
			}
			
			window_joy_pad = joy_dir;
			if djump_charge < djump_charge_max djump_charge++;

			hsp = lerp(hsp, 0, .15)
			vsp = lerp(vsp, 0, .15)
			//if left_down spr_dir = -1 
			//if right_down spr_dir = 1

			//print(snapped_angle)
			
			if window_timer < 20 {
				airdash_frame = 1;
			} else if window_timer >= 20 {
				airdash_frame = 2;
			}
			
			if window_timer % 5 = 0 {
				arrow_frame++;
			}
			if arrow_frame > 3 {
				arrow_frame = 0;
			}
			
			//help me
			if tap_djump = false {
				if !jump_down || attack_down || strong_down || special_down || window_timer == 30 {
					window = 2;
					window_timer = 0;
					sound_play(sound_get("airdash"))
	//				sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
					if !joy_pad_idle || joy_pad_timer < 6 {
						hsp = lengthdir_x(djump_charge / 6.5, window_joy_pad)
						vsp = lengthdir_y(djump_charge / 6.5, window_joy_pad)
					} else if joy_pad_idle && joy_pad_timer != 0 {
						vsp = -djump_charge / 7
					}
					iasa_script();
					
			if spr_dir = 1 {	
			    if snapped_angle = 90  { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_up);
			    } else if snapped_angle = 360 || snapped_angle = 0 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_right);
			    } else if snapped_angle = 180 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_left);
			    } else if snapped_angle = 135 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upleft);
			    } else if snapped_angle = 45 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upright);
			    } else if snapped_angle = 225 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downleft);
			    } else if snapped_angle = 315 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downright);
			    } else if snapped_angle = 270 { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_down);
			    }
			} else if spr_dir = -1 {
			    if snapped_angle = 90 { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_up);
			    } else if snapped_angle = 360 || snapped_angle = 0 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_left);
			    } else if snapped_angle = 180 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_right);
			    } else if snapped_angle = 135 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upright);
			    } else if snapped_angle = 45 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upleft);
			    } else if snapped_angle = 225 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downright);
			    } else if snapped_angle = 315 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downleft);
			    } else if snapped_angle = 270 { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_down);
			    }				
			}
			}
		} else if tap_djump = true {
				if joy_pad_idle || window_timer == 30 {
					window = 2;
					window_timer = 0;
					sound_play(sound_get("airdash"))
	//				sound_play(sound_get("bigbigwhoosh"), 0, noone, 1, 1.3)
					if joy_pad_timer < 6 {
						hsp = lengthdir_x(djump_charge / 6.5, window_joy_pad)
						vsp = lengthdir_y(djump_charge / 6.5, window_joy_pad)
						tap_djump = false;
						tap_jumped = false;
					} else if joy_pad_timer != 0 {
						vsp = -djump_charge / 7
					}
					iasa_script();
					
			if spr_dir = 1 {	
			    if snapped_angle = 90  { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_up);
			    } else if snapped_angle = 360 || snapped_angle = 0 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_right);
			    } else if snapped_angle = 180 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_left);
			    } else if snapped_angle = 135 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upleft);
			    } else if snapped_angle = 45 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upright);
			    } else if snapped_angle = 225 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downleft);
			    } else if snapped_angle = 315 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downright);
			    } else if snapped_angle = 270 { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_down);
			    }
			} else if spr_dir = -1 {
			    if snapped_angle = 90 { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_up);
			    } else if snapped_angle = 360 || snapped_angle = 0 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_left);
			    } else if snapped_angle = 180 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_right);
			    } else if snapped_angle = 135 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upright);
			    } else if snapped_angle = 45 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_upleft);
			    } else if snapped_angle = 225 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downright);
			    } else if snapped_angle = 315 { 
						var k = spawn_hit_fx(x, y + 25, vfx_airdash_downleft);
			    } else if snapped_angle = 270 { 
						var k = spawn_hit_fx(x, y + 35, vfx_airdash_down);
			    }				
			}
			}
			
		}
	}	
		if window == 2 {
			can_move = true;
			sound_stop(sound_get("dashcharge"));	
			iasa_script();
			if !free {
				spawn_base_dust(x, y, "land");
			}
		}
		break;
		
	case AT_EXTRA_2: //Mailbox Spin
		can_move = false;
		can_fastfall = false;
		can_jump = false;
		mb_spin_hit = false;
		mb_spinning = true;

		x = lerp(mailboxID.x, x + spr_dir * 0, .35);
		y = lerp(mailboxID.y, y + 30, .35);

		if window == 1 {
			if window_timer == 1 {
				spin_cooldown = 0;
			}
			if (window_timer <= 4 || window_timer > 14) {
				mailboxID.depth = depth + 1;
			} else if (window_timer > 4 && window_timer <= 14) {
				mailboxID.depth = depth - 1;
			}
		
		if window_timer == 14 {
			if !special_down {
					if ((spr_dir = 1 && left_down) || (spr_dir = -1 && right_down)) {
					spr_dir = spr_dir * -1;
					attack_end();
					set_attack( AT_FSPECIAL_AIR )
					spin_cooldown = 45;
			    	hurtboxID.sprite_index = sprite_get("fspecial_air_up_hurt");
			    	mailboxID.state = 10;  
					mailboxID.state_timer = 0;
					mb_spinning = false;
						switch mailboxID.letters {
							case 0:
								mailboxID.state = 2;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup1_vfx);
	   							k.depth = mailboxID.depth - 2;
	   		  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
                    			sound_play(sound_get("mblvlup1"), 0, noone, 2, 1);
							break;
							case 1:
								mailboxID.state = 3;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup2_vfx);
			   					k.depth = mailboxID.depth - 2;	
			  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
		                    	sound_play(sound_get("mblvlup2"), 0, noone, 2, 1);
							break;
							case 2:
								mailboxID.state = 4;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup3_vfx);
	   							k.depth = mailboxID.depth - 2;

			  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
		                    	sound_play(sound_get("mblvlup3"), 0, noone, 2, 1);
	                    	break;
	                		case 3:
								mb_shoot = true;
								spr_dir = spr_dir * -1;
								mailboxID.state = 7;  
								mailboxID.state_timer = 0;
								spr_dir = spr_dir * -1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 0;
							break;
							}
						}
					} 	
				}
			
		if window_timer == 27 {
			if special_down {
					window_timer = 1;
						switch mailboxID.letters {
							case 0:
								mailboxID.state = 2;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup1_vfx);
	   							k.depth = mailboxID.depth - 2;

	   		  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
                    			sound_play(sound_get("mblvlup1"), 0, noone, 2, 1);
							break;
							case 1:
								mailboxID.state = 3;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup2_vfx);
			   					k.depth = mailboxID.depth - 2;	
			  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
		                    	sound_play(sound_get("mblvlup2"), 0, noone, 2, 1);
							break;
							case 2:
								mailboxID.state = 4;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup3_vfx);
	   							k.depth = mailboxID.depth - 2;

	   							spin_cooldown = 45;
	  							set_attack( AT_FSPECIAL_AIR )
								attack_end();
					    		hurtboxID.sprite_index = sprite_get("fspecial_air_up_hurt");
			  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
		                    	sound_play(sound_get("mblvlup3"), 0, noone, 2, 1);
	                    	break;
	  						case 3: 
								mb_shoot = true;
								mailboxID.state = 7;  
								mailboxID.state_timer = 0;
								attack_end();
								spin_cooldown = 45;
								set_attack( AT_FSPECIAL_AIR )
					    		hurtboxID.sprite_index = sprite_get("fspecial_air_up_hurt");
								mb_spinning = false;
			   					mailboxID.mbopacity = 0;
		   					break;
						} 
				 } else if !special_down {
						attack_end();
						spin_cooldown = 45;
						set_attack( AT_FSPECIAL_AIR )
			    		hurtboxID.sprite_index = sprite_get("fspecial_air_up_hurt");
						switch mailboxID.letters {
							case 0:
								mailboxID.state = 2;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup1_vfx);
	   							k.depth = mailboxID.depth - 2;
	  							k.spr_dir = 1;
	   		  					mb_spinning = false;
			   					mailboxID.mbopacity = 1;
                    			sound_play(sound_get("mblvlup1"), 0, noone, 2, 1);
							break;
							case 1:
								mailboxID.state = 3;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup2_vfx);
			   					k.depth = mailboxID.depth - 2;	
			  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
		                    	sound_play(sound_get("mblvlup2"), 0, noone, 2, 1);
							break;
							case 2:
								mailboxID.state = 4;  
								mailboxID.state_timer = 0;
								mailboxID.letters += 1;
			   					var k = spawn_hit_fx(mailboxID.x, mailboxID.y + 70, mb_hud_lvup3_vfx);
	   							k.depth = mailboxID.depth - 2;
			  					k.spr_dir = 1;
								mb_spinning = false;
			   					mailboxID.mbopacity = 1;
		                    	sound_play(sound_get("mblvlup3"), 0, noone, 2, 1);
	                    	break;
							case 3: 
								mb_shoot = true;
								mailboxID.state = 7;  
								mailboxID.state_timer = 0;
								attack_end();
								spin_cooldown = 45;
								set_attack( AT_FSPECIAL_AIR )
					    		hurtboxID.sprite_index = sprite_get("fspecial_air_up_hurt");
								mb_spinning = false;
			   					mailboxID.mbopacity = 0;
		   					break;
						}
					}
				}
			}
	break;

	case 43: //Hammer
		can_fastfall = false;
		can_jump = false;
		mb_spin_hit = false;
		mb_spinning = false;
		can_wall_jump = true;
	
		if window == 2 || window == 3 && free {
			super_armor = true;
		} else {
			super_armor = false;
		}
		

		if window == 1 && window_timer == 1 {
			var timer1 = random_func(1, 9, true);
			fspecial_letter_timer = timer1;
			vault_letters = mailboxID.letters;
			switch (vault_letters){
				case 0:
					set_attack_value(AT_HAMMER, AG_SPRITE, sprite_get("uspecial_hammer_lv0"));
				break;
				case 1:
					set_attack_value(AT_HAMMER, AG_SPRITE, sprite_get("uspecial_hammer_lv1"));
				break;
				case 2:
					set_attack_value(AT_HAMMER, AG_SPRITE, sprite_get("uspecial_hammer_lv2"));
				break;
				case 3:
					set_attack_value(AT_HAMMER, AG_SPRITE, sprite_get("uspecial_hammer_lv3"));
				break;
			}
		}
		
		if window == 1 && window_timer < 6 {
			x = lerp(mailboxID.x, x - (spr_dir * 44), .5);
			y = lerp(mailboxID.y, y + 10, .5);
		}
		
		if window == 2 {
			vsp = vsp * .95;
		}
		
		if window == 3 {
			if down_down {
				fall_through = true;
			}
			if vsp > 0 && vsp < 12 {
				vsp = vsp * 1.05;
			}
			
		/*
			if special_pressed {
				window = 5;
				window_timer = 0;
			}
		*/
			
			if !free {
				window = 4;
				window_timer = 0;
				vsp = 0;
				hsp = 0;
				switch (vault_letters){
					case 0:
	  					create_hitbox(AT_HAMMER, 1, x, y);
	  					sound_play(sound_get("hammer1"));
	  					vault_letters = 0;
					break;
					case 1:
	   					var k = spawn_hit_fx(x + (60 * spr_dir) , y - 0, vfx_uspecial_hammer_lv1);
	   					k.depth = depth - 1;	
	  					k.spr_dir = 1;
	  					create_hitbox(AT_HAMMER, 2, x, y);
	  					sound_play(sound_get("hammer1"));
	  					sound_play(sound_get("hammerwhoosh"));
	  					vault_letters = 0;
					break;
					case 2:
	   					var k = spawn_hit_fx(x + (60 * spr_dir) , y - 0, vfx_uspecial_hammer_lv2);
	   					k.depth = depth - 1;	
	  					k.spr_dir = 1;
		  				shake_camera( 8, 6 )
	  					create_hitbox(AT_HAMMER, 3, x, y);
	  					sound_play(sound_get("hammer1"));
	  					sound_play(sound_get("hammerwhoosh"));
	  					sound_play(sound_get("lvl3explo"), 0, noone, 1, 1)
	  					vault_letters = 0;
					break;
					case 3:
	   					var k = spawn_hit_fx(x + (60 * spr_dir) , y - 0, vfx_uspecial_hammer_lv3);
	   					k.depth = depth - 1;	
	  					k.spr_dir = 1;	
		  				shake_camera( 12, 8 )
	  					create_hitbox(AT_HAMMER, 4, x, y);
	  					sound_play(sound_get("hammer2"));
	  					sound_play(sound_get("hammerwhoosh"));
	  					sound_play(sound_get("lvl3explo"), 0, noone, 1, 1)
						sound_play(asset_get("sfx_ell_strong_attack_explosion"), 0, noone, 1, 1)
						sound_play(asset_get("sfx_ell_fist_explode"), 0, noone, 1, 1)
						vault_letters = 0;
					break;
				}
			}
			if vault_letters > 0 {
				if vsp < 0 {
					var timer2 = random_func(1, 9, true);
					var lx = x + (spr_dir * 36 - random_func(0, char_height * 0.25, true));
					var ly = y - (40 + random_func(2, floor(char_height * 0.25), true));
					//print(string("timer1: ") + string(fspecial_letter_timer))
					//print(string("timer2: ") + string(timer2))
					if (window_timer == fspecial_letter_timer || (window_timer == timer2 && timer2 != fspecial_letter_timer)) && !hitpause {
						var letter_num = random_func(1, 4, true);
						//var letter_drawn = string("fspecial_letter_vfx" + string(letter_num));
						switch letter_num {
							case 1:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx1); l.depth = depth + 1; break;
							case 2:	var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx2); l.depth = depth + 1; break;
							case 3: var l = spawn_hit_fx(lx, ly, fspecial_letter_vfx3); l.depth = depth + 1; break;
							
						}
					}
				}
			}
		}

		if window == 4 && window_timer == 1 {

			
		}
	
	break;

	
/*
	case 42: //vault 
		can_fastfall = false;
		//print(vault_letters)

		print(get_window_value(AT_VAULT, 2, AG_WINDOW_VSPEED));

		if window == 1 {
			vault_jump = false;
			can_move = false;
			can_jump = false;
			can_fast_fall = false;
			can_shield = false;
			can_wall_jump = false;

			if mailboxID != 0 {
				if window_timer == 1 {
					vault_letters = 0;
				}
			
				if window_timer < 8 {
					x = lerp(mailboxID.x, x, .45);
					y = lerp(mailboxID.y, y - 64, .45);
				} else if window_timer >= 8 {
					x = mailboxID.x;
					y = mailboxID.y - 55;
				}
			}
				
				if window_timer == 12 {
					vault_letters += 1;
			        sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));	
				} else if window_timer == 24 {
					vault_letters += 1;
			        sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));	
				} else if window_timer == 36 {
					vault_letters += 1;
			        sound_play(asset_get("sfx_frog_fspecial_charge_full"));	
				} else if window_timer == 48 {
					vault_letters += 1;
				}
			
		if (window_timer >= 12 && !jump_down) || window_timer == 48 {
			window = 2;
			window_timer = 1;
			vault_jump = true;
				if vault_letters = 0 {
					vsp = -6;
				} else if vault_letters = 1 {
					vsp = -8;
				} else if vault_letters = 2 {
					vsp = -10;
				} else if vault_letters > 2 {
					vsp = -12;
				
			}
		} 
			
			
		}
		
	if window == 2 {
		can_move = true;
		can_jump = true;
		can_shield = true;
		can_attack = true;
		can_wall_jump = false;

	}
	break;
*/


}





















#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;