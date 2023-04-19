//B - Reversals
if (attack == AT_NSPECIAL && window <= 5 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
	if (has_hit_player){
		if (window == 3 && place_meeting( x, y, hit_player_obj)){ x = x-9 * spr_dir; }
		if (window == 5){
		hsp = hit_player_obj.hsp + 0.5 * spr_dir;
		}
	}
}

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	if (air_special == true && free == false){
	window = 9;
	window_timer = 0;
	air_special = false;
	hsp = hsp * 1.1;
	Bullets = random_func(0, 3, true);
	//vsp = -10;
	}
	if(window == 1){
		if(window_timer == 1){
			Nspecial_moves = 100;
		}
	}
    if (window == 2){
    	can_jump = true;
    	if (Nspecial_moves > 1 && free == true){
    		if (window_timer == 1){
    		Nspecial_moves = 1;
    		}
    	}
    	if(Nspecial_moves != 0){
    		if(left_pressed){
    			Nspecial_moves--;
    			if(spr_dir == 1){
    				window = 3;
    				window_timer = -1;
    				hsp = -11 * spr_dir;
    			}else{
    				window = 4;
    				window_timer = -1;
    				hsp = 11 * spr_dir;
    			}
    		}
    		if(right_pressed){
    			Nspecial_moves--;
    			if(spr_dir == -1){
    				window = 3;
    				window_timer = -1;
    				hsp = -11 * spr_dir;
	    		}else{
    				window = 4;
    				window_timer = -1;
    				hsp = 11 * spr_dir;
    			}
	    	}
    	}else{
    	    window = 5;
    	    window_timer = 0;
    		
    	}
    	if(window_timer == get_window_value( AT_NSPECIAL, 2, AG_WINDOW_LENGTH )){
	        if (special_down){
    	        window = 2;
    	        window_timer = 0;
    	    }else{
    	    	window = 5;
    	    	window_timer = 0;
    	    }
    	}
    }
    if(window == 3){
    	can_jump = true;
    	can_attack = true;
    	can_strong = true;
    	if(window_timer == 0){
    		//spawn_hit_fx( x, y - 45, 148 );
    	}
    	if(window_timer == get_window_value( AT_NSPECIAL, 3, AG_WINDOW_LENGTH )){
	        if (special_down){
    	        window = 2;
    	        window_timer = 0;
    	    }else{
    	    	window = 5;
    	    	window_timer = 0;
    	    }
    	}
    }
    if(window == 4){
    	can_jump = true;
    	can_attack = true;
    	can_strong = true;
    	if(window_timer == get_window_value( AT_NSPECIAL, 4, AG_WINDOW_LENGTH )){
	        if (special_down){
    	        window = 2;
    	        window_timer = 0;
    	    }else{
    	    	window = 5;
    	    	window_timer = 0;
    	    }
    	}
    }
    if (window == 6){
    	grav = 0.01;
    	can_move = false;
    	if (window_timer >= 14){ window = 7; window_timer = 0; }
    }
    if (window == 7){
    	can_move = false;
    	grav = 0.1;
    	if (joy_pad_idle == false){
    	hsp += lengthdir_x(.3, joy_dir);
    	//vsp += lengthdir_y(1, joy_dir);
    	}
    	var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 9;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
        }
        if (place_meeting( x + 1 * spr_dir, y + 140, asset_get("par_block"))){
            vsp = lengthdir_y(1, 90);
            max_height = 1;
            //grav = -1;
            //vsp -= 0.1;
            if ((state_timer mod 10) == 1){
            	state_timer = 30;
            }
        }
        if !(place_meeting( x + 1 * spr_dir, y + 130, asset_get("par_block"))){
        //&& (place_meeting( x + 1 * spr_dir, y + 140, asset_get("par_jumpthrough")))){
        	vsp = lengthdir_y(-2, 90);
        	max_height = 2;
        	//grav = -2;
        	//vsp -= 1;
        }
        if (place_meeting( x + 1 * spr_dir, y + 10, asset_get("par_jumpthrough"))){
        	vsp = lengthdir_y(-3, 90);
        	max_height = 2;
        	//grav = -2;
        	//vsp -= 1;
        }
        	if (state_timer > 50){
        	if (vsp >= -2){
        		window = 8;
        		window_timer = 0;
        		//hsp = 0;
        		//vsp = 0;
        		//if (spr_dir == -1 && fly_dist > 0 ){ spr_dir = 1; }
        		//if (spr_dir == -1 && hsp < 1){ spr_dir = -1; }
    		}
		}
    	if (window_timer >= 6 && special_down){ window_timer = 0; window = 7; } else if (window_timer >= 6){ window = 8; window_timer = 0; }
    	//if (window_timer >= 5 && fly_dist >= 8){ window = 8; window_timer = 0; }
    }
    if (window == 8){
    	max_height = 0;
    	if (window_timer == 1){
    		vsp = -9;
    	if (hsp > -1 * spr_dir && spr_dir == 1){
    		spr_dir = -1;
    	}
    	if (hsp < 1 * spr_dir && spr_dir == -1){
    		spr_dir = 1;
    		}
    	}
    	//if (window_timer == 2){
    		//hsp = 1 * spr_dir;
    	//}
    	grav = 1;
    }
    if (window == 10){
    	if (window_timer > 5 && window_timer < 20){
    	with (asset_get("oPlayer")) {
    		if (player != other.player) {
            if (hitstop == 0 or abs(vsp) > 1 or abs(hsp) > 1){
                old_vsp = vsp;
                old_hsp = hsp;
                vsp = 0;
                hsp = 0;
            }
            vsp = 0;
            hsp = 0;
            hitstop = 1;
            hitstop_full = 1;
            hitpause = true;
        		}
    		}
		}
    	
    	can_special = false;
    	can_move = false;
    	telepunch = 2;
    	if (window_timer == 1){ sound_play(sound_get("sucks_to_be_you")); }
    	if ((window_timer > 20 && window_timer < 31) && (state_timer mod 5) == 0){
    	//create_hitbox(AT_NSPECIAL, 4, x + 40 * state_timer * spr_dir, y-60 + 10 * state_timer);
    	create_hitbox(AT_NSPECIAL, 4, x+30 * spr_dir, y-45);
    	}
    	if (window_timer < 15){
    	//hit_player_obj.hitpause = true;
		//hit_player_obj.hitstop = 1;
		//hit_player_obj.hitstop_full = 1;
		//x = hit_player_obj.x - 50 * spr_dir;
		//y = hit_player_obj.y - hit_player_obj.char_height * 1;
    	}
    }
}


if(attack == AT_DATTACK){
	if (window == 2){
	if (has_hit_player && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
		if (window_timer > 2){
		hit_player_obj.hsp = 1.3 * 0.9 * hsp;
		hit_player_obj.vsp = 0;
			}
		}
	}
	if ((window == 5 || window == 6 && window_timer < 9) && has_hit_player){
		if (hit_player_obj.state == PS_HITSTUN_LAND){
		hit_player_obj.hsp = 1.3 * 0.9 * hsp; }
	}
	if (window == 6 && window_timer > 6 && hitstop == false && has_hit_player == true){ can_jump = true; }
	//if (window == 4 && window_timer < 4){ window = 7; } 
}
	
if(attack == AT_USTRONG){
	can_move = false;
	can_fast_fall = false;
	can_jump = false;
	if (was_parried == false){
	if(window == 1){ set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0); }
	if(window > 1){ set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1); }
	if(window == 2){
		if (free == false){ spawn_hit_fx(x, y-1, 102); }
		if (window_timer == 1 && has_hit_player == false){
			vsp = -8 - (strong_charge / 10);
			//hsp = 7;
		}
	}
	if(window == 3 && window_timer > 3){
		if(has_hit_player == true){
			can_special = true;
			can_attack = true;
		}
	}
	if (has_hit_player == true && hitpause == false){
		//can_special = true;
		//.hit_player_obj.x = x+40 * spr_dir; hit_player_obj.y = y-20;
		hit_player_obj.spr_dir = spr_dir;
		vsp += hit_player_obj.vsp / 40;
		hit_player_obj.hsp = hsp;
		}
	}
	if (was_parried == true){
		if (window == 2 && window_timer <= 3){ vsp = -9; }
	}
}

if(attack == AT_DSTRONG){
	if(window == 1){
	force_depth = 0;
	grabbedid = noone;
    }
    
    if(window == 3 && window_timer >= 25 && grabbedid != noone){ window = 4; window_timer = 0; }
    
	if(window == 2 || window == 3){
		if(grabbedid != noone){
			if(!instance_exists(grabbedid)){
				grabbedid = noone;
			} else if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
				grabbedid = noone;
			} else{
				grabbedid.ungrab = 0;
				grabbedid.spr_dir = -spr_dir; 
				grabbedid.state = PS_HITSTUN;
				grabbedid.hitstop = 1;
				grabbedid.hitstop_full = 5;
				if(window == 2){
					force_depth = 1;
					depth = 10;
					if (window_timer < 6){
					grabbedid.x = x + 45 * spr_dir; 
					grabbedid.y = y - 1;
					}
					if (window_timer >= 6 && window_timer < 7){
					grabbedid.x = x + 40 * spr_dir; 
					grabbedid.y = y - 1;
					}
					if (window_timer >= 7 && window_timer < 11){
					grabbedid.x = x + 30 * spr_dir; 
					grabbedid.y = y - 3;
					}
					if (window_timer >= 11 && window_timer < 14){
					grabbedid.x = x + 25 * spr_dir; 
					grabbedid.y = y - 5;
					}
				}
				if(window == 3){
					force_depth = 1;
					if (window_timer <= 5){
					grabbedid.x = x + 7 * spr_dir; 
					grabbedid.y = y - 15;
					}
					if (window_timer >= 5){
					force_depth = 0;
					grabbedid.x = x + 30 * spr_dir; 
					grabbedid.y = y - 17;
					}
					if (window_timer >= 10){
					grabbedid.x = x + 50 * spr_dir; 
					grabbedid.y = y - 20;
					}
					if (window_timer >= 15){
					grabbedid.x = x + 48 * spr_dir; 
					grabbedid.y = y - 22;
					}
					if (window_timer >= 20){
					grabbedid.x = x + 42 * spr_dir; 
					grabbedid.y = y - 30;
					}
				}
				if (window == 4){
					if(window_timer == 2){
						
						var gottem = random_func(0, 3, true);
						if (gottem == 1){ sound_play(sound_get("Useless")); }
						
						
					    //var gottem;
					    //gottem[0] = "Useless";
					    //gottem[1] = "Pest";
					    //gottem[2] = "Mecha_Die1";
					    //sound_play( sound_get(gottem[random_func(0, 3, true)]));
					}
				}
			}
		}else{
		}
		if(window == 3){ //Missing the first grab, just go into a window that doesn't exist - back to idle.
			if(window_timer <= 2){
				if(grabbedid == noone){
				window = 6;
				window_timer = 0;
				}
			}
		}
	}
}

if(attack == AT_FSTRONG){
	if(window == 1){ grabbedid = noone; }
	if(window == 2 && window_timer < 3){ hsp = -15 * spr_dir + (0.1 * strong_charge * spr_dir); } //fly back
	if(window == 2 && window_timer > 3 && window_timer < 6){ hsp = 20 * spr_dir + (0.1 * strong_charge * spr_dir); }
	//if(window == 3){ hsp = 9 * spr_dir + (0.5 * strong_charge * spr_dir); }
    if(window == 2){
        if(window_timer == 5 && grabbedid > 0){
        	var deadgrabbed = random_func(0, 3, true);
        	if (deadgrabbed == 1){ sound_play(sound_get("Pest")); }
			//grabbedid = noone;
        }
    }
    if ((window == 2 && window_timer > 7 || window == 3) && grabbedid != noone){
    	if (hsp >= 6 && spr_dir == 1 || hsp <= -6 && spr_dir == -1){
    			spawn_hit_fx(x+5 * spr_dir, y-24, Burst_Tail);
				//SuperDash_Particle0 = spawn_hit_fx(x+1 * spr_dir, y, DashTail3);
				//SuperDash_Particle2.sprite_width = 90;
				//SuperDash_Particle1.depth = depth-5;
				//SuperDash_Particle1 = spawn_hit_fx(x-40 * spr_dir, y, DashTail2);
				//SuperDash_Particle2.sprite_width = 90;
				//SuperDash_Particle1.depth = depth-5;
		}
		if (hsp > 6 && spr_dir == 1 || hsp < -6 && spr_dir == -1){
				//SuperDash_Particle2 = spawn_hit_fx(x-90 * spr_dir, y, DashTail);
				//SuperDash_Particle2.x = x - 1 * spr_dir * state_timer;
				//SuperDash_Particle2.depth = depth-5;

		}
	}
	if(window == 2 || window == 3){
		if(grabbedid != noone){
			if(!instance_exists(grabbedid)){
				grabbedid = noone;
			} else if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
				grabbedid = noone;
			} else{
				grabbedid.ungrab = 0;
				//grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
				grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
				grabbedid.state = PS_HITSTUN;
				if (hsp < 5 * spr_dir){
				//SuperDash_Particle = spawn_hit_fx(x, y-1, DashTail);
				//SuperDash_Particle.sprite_width = 90;
				//SuperDash_Particle.depth = depth-5;
				}
				if(window == 2 && window_timer >= 1){
					has_walljump = true;
					grabbedid.x = x + spr_dir * 60; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
					grabbedid.y = y - 20; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
				}
				if(window == 3 && hitpause == false){
					grabbedid.x = x + spr_dir * 60; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
					grabbedid.y = y - 20; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
					//grabbedid = noone;
				}
				if(window == 3 && hitpause == true){
					grabbedid = noone; //let them go
				}
			}
		}else{
		}
		if(window == 2){
			if(window_timer == 12){
				if(grabbedid == noone){
				window = 4;
				window_timer = 0;
				}
			}
		}
	}
	if(window == 3){
		if(window_timer = 11){
			if(has_hit){
				if(spr_dir = 1){
				hsp = hsp - 5;
				}else{
				hsp = hsp + 5;
				}
			}
		}
	}
}

if (attack == AT_USPECIAL){
	if (window > 1 && has_walljump){ can_wall_jump = true; }
	if (window == 4 && has_airdodge == true){
		if (shield_pressed){
			set_state(PS_AIR_DODGE);
			move_cooldown[AT_USPECIAL] = 20;
		}
	}
	/*
	if (window == 2 && has_hit_player){
		can_special = false;
		window = 5;
		window_timer = 0;
		telepunch = 0;
	}
	*/
	if (telepunch == 0 && (window == 5 || window == 6 && window_timer < 3)){
		hit_player_obj.x = x;
		hit_player_obj.y = y-50;
	}
	if (window == 4 && window_timer >= get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)){
		if (SuperMech == true){
			window = 8;
		}
	}
	
	if (window == 5){
		if(window_timer == 1){
			var doomed = random_func(0, 3, true);
			if (doomed == 2){ sound_play(sound_get("Doomed")); }
		}
		if (window_timer < 3){
		vsp = hit_player_obj.old_vsp;
		}
		if (window_timer > 21){
		window = 6;
		window_timer = 0;
		}
	}
	

	if (window == 6){
		can_move = false;
	}
	if (window == 7){
		telepunch = 2;
		if (window_timer == 1){ sound_play(sound_get("im_quite_confident_in_my_speed_you_know2")); }
		if (window_timer > 16 && window_timer < 24){
		x = hit_player_obj.x - 1 * spr_dir;
		y = hit_player_obj.y - hit_player_obj.char_height * 1.00;
		hit_player_obj.hitpause = true;
		hit_player_obj.hitstop = 1;
		hit_player_obj.hitstop_full = 1;
		}
		if (window_timer < 24){ hsp = hit_player_obj.hsp * 0.5; }
		if (window_timer >= 35){ can_jump = true; }
	}
}
//if (move_cooldown[AT_EXTRA_1] < 1){ has_hit_id = noone; }
/*
if(attack == AT_USPECIAL_2){
	if (window == 1){
		marked_id = false;
		target_addup = 0;
		//move_cooldown[AT_USPECIAL_2] = 80;
			with (asset_get("oPlayer")){
	        if (player != other.player){
	        	targeted = false;
	        	}
			}
		}
	
	if (window == 2){
		//if (window_timer == get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH)){
		// windowlooper += 1; 
		//if (windowlooper < 3){ window_timer = 0; }
		//}
	}
	if (window < 3){ var itsnouse = random_func(0, 3, true); }
	if (window == 3 && window_timer == 5 && target_addup > 0){
		if (itsnouse == 2){ sound_play(sound_get("Mecha_NO_USE"));
		}
	}
	
	if (window == 4 && window_timer == 5 && target_addup >= 3){
		sound_play(sound_get("Mecha_NO_USE"));
	}
	
	if (window == 6){
		if (window_timer >= 6 && state_timer < 40){ window_timer = 8; }
		if (window_timer == 8 && state_timer < 45 && hitpause == false){
		x = hit_player_obj.x - (70 * state_timer / 95) * spr_dir;
		y = hit_player_obj.y - hit_player_obj.char_height * 0.3;
		//hsp = 9 * spr_dir; 
		//vsp = 0; 
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        if (fly_dist > 1){
            vsp = lengthdir_y(1, fly_dir);
        	}
        if (fly_dist > 2){
            hsp = lengthdir_x(2, fly_dir);
        	}
		}
		if (state_timer >= 41 && hitpause == false){ hsp = -6 * spr_dir; vsp = -5; }
		//if (hitpause == true){ vsp = -5; hsp = -10 * spr_dir; }
		//if (window_timer > 6 && hitpause == false){ hsp = (-state_timer / 15) * spr_dir; }
		if (window_timer == 9 && marked_id == true && hitpause == false){
		vsp = hit_player_obj.vsp;
		//hsp = 12 * spr_dir;
		//hsp = hit_player_obj.hsp;
		//x = hit_player_obj.x - 50 * spr_dir;
		//y = hit_player_obj.y;
		}
		if (window_timer > 12 && hitpause == false){ can_jump = true; can_dash = true; can_special = true; can_attack = true; }
	}
	
	if (window == 3 && target_addup > 0 && hit_player_obj.free == true){ window = 6; window_timer = 0; }
	if (window == 3 && target_addup > 0 && hit_player_obj.free == false){ window = 5; window_timer = 0; }
	//if (window == 5 && window_timer > 17 && target_addup >= 2){ window = 5; window_timer = 0; }
	//if (window == 6 && window_timer > 17 && target_addup > 2){ window = 6; window_timer = 0; }
	//if (window && window_timer < 3 || window == 4){ marked_id1 = noone; }
	//if (window == 1 && marked_id1 != noone && hitpause == false){ window = 2; window_timer = 1; }
	//if (window == 1 && window_timer > 5 && marked_id1 == noone){ window = 4; window_timer = 0; }
	if (window == 2 && window_timer == 2 || window == 3 && window_timer == 1){
	//spawn_hit_fx(x, y-90, 145);
	}
	if (window > 1 && window < 7 && window_timer > 20){
		target_addup = 0;
		with (asset_get("oPlayer")){
	        if (player != other.player){
	        	//targeted = false;
			}
		}
	}
}
*/

if(attack == AT_USPECIAL_2){
	if (window == 1 && window_timer < 3){
		marked_id = false;
		target_addup = 0;
			with (asset_get("oPlayer")){
	        if (player != other.player){
	        	targeted = false;
	        }
		}
	}
	if (window == 3 && marked_id > 0){ window = 4; window_timer = 0; }
	if (window == 4 && marked_id > 0 && hit_player_obj.free == true){ window = 6; window_timer = 0; }
	if (window == 4 && marked_id > 0 && hit_player_obj.free == false){ window = 5; window_timer = 0; }
	//if (window == 5 && window_timer > 17 && target_addup > 2){ window = 6; window_timer = 0; }
	//if (window && window_timer < 3 || window == 4){ marked_id1 = noone; }
	//if (window == 1 && marked_id1 != noone && hitpause == false){ window = 2; window_timer = 1; }
	//if (window == 1 && window_timer > 5 && marked_id1 == noone){ window = 4; window_timer = 0; }
	if (window == 2 && window_timer == 2 || window == 3 && window_timer == 1){
	//spawn_hit_fx(x, y-90, 145);
	}
	if (window > 1 && window < 7 && window_timer > 20 || window == 7){
		target_addup = 0;
		with (asset_get("oPlayer")){
	        if (player != other.player){
	        	targeted = false;
			}
		}
	}
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 25;
	can_fast_fall = false;
	if (window == 1){
		if (has_hit_id > 0 && telepunch == 0){
		//attack = AT_EXTRA_2;
		//x = hit_player_obj.x - 50 * spr_dir;
		//y = hit_player_obj.y + hit_player_obj.char_height * 0.30;
		//window = 1;
		//window_timer = 0;
		//telepunch = 0;
		}
		if (window_timer == 2 && telepunch == 2){
		//telepunch = 0;
		sound_play(dash_sound);
		}
		if (window_timer == 2){ spawn_hit_fx(x-60 * spr_dir, y-70, Shockwave); }
	}
	if (window == 2){
		go_through = true;
		if (window_timer >= 3 && window_timer < 7){
			can_attack = true; can_special = true; can_jump = true;
			if (down_down){ window = 10; }
		}
	}
	if (window > 1 && window < 4){
	//SuperDash_Particle4.destroyed = true;
	//instance_destroy(SuperDash_Particle2);
	//instance_destroy(SuperDash_Particle3);
	//instance_destroy(SuperDash_Particle4);
	}
	if (free == false && window > 1 || window == 2 && window_timer >= 4 || window > 2){ sound_stop(dash_sound); }
	if (window == 3 && telepunch == 1 && window_timer == 0){ create_hitbox(AT_FSPECIAL, 5, x, y); }
	if (special_down && window == 2 && window_timer >= 7){
		window = 3;
		window_timer = 0;
		//x = x+5 * spr_dir;
	}
	if (window == 3){
		if (has_hit_player){
		if (hitpause == false){
			//can_special = true;
			//vsp = -1;
		}
		//hit_player_obj.hitpause = true;
	}
	if(window_timer >= 2 && window_timer <= 10 && telepunch == 1 && joy_pad_idle == false && (left_down || right_down) && (special_pressed)){
		window = 4;
		window_timer = 0;
	}
	if(hitpause == true){
	    sound_stop(dash_sound);
		}
	}
	if (window == 4){
		if (window_timer < 49){
		telepunch = 2;
		hit_player_obj.hitpause = true;
		hit_player_obj.hitstop = 1;
		hit_player_obj.hitstop_full = 1;
		x = hit_player_obj.x - 30 * spr_dir;
		y = hit_player_obj.y + hit_player_obj.char_height * 0.30;
		}
	}
}

if (attack == AT_EXTRA_2){
	fall_through = true;
	if (has_hit_id > 0){
	previous_id = has_hit_id;
	}
	
	if (window == 1){
	dragging_speed = 1;
	reel_speed = .1;
	
	//if (spr_dir == 1 && hsp < 1){ spr_dir = -1; } else if (spr_dir == -1 && hsp > 1){ spr_dir = 1; }
	
			if (has_hit_id != noone) {
				
				with (has_hit_id) {
		            if (hitstop == 0 or abs(vsp) > 1 or abs(hsp) > 1){
		                //old_vsp = vsp;
		                //old_hsp = hsp;
		                //vsp = 0;
		                //hsp = 0;
		            }
		            //vsp = 0;
		            //hsp = 0;
		            //hitstop = 2;
		            //hitstop_full = 20;
		            //hitpause = true;
					}
				
					var enemy_angle = point_direction(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * 1, x, y);
					
					var enemy_dist = point_distance(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * 1, x, y);
					
						var dragging_speed = max(sqrt(enemy_dist) * reel_speed / 1, reel_speed);
						//var dragging_speed = max(sqrt(10) * reel_speed, reel_speed);
						hsp = lengthdir_x(dragging_speed, enemy_angle + 180);
						vsp = lengthdir_y(dragging_speed, enemy_angle + 180);
						ignores_walls = true;
						through_platforms = 0;
						
				if (enemy_dist < 30){
					window = 4;
				}
				if (enemy_dist > 30 && has_hit_id.vsp > 8 && state == PS_ATTACK_GROUND){
					attack = AT_FSPECIAL
					window = 2;
					//vsp = 0;
					//hsp = 0;
					has_hit_id = noone;
				}
				if (enemy_dist > 30 && has_hit_id.vsp > 9 && state == PS_ATTACK_AIR){
					attack = AT_FSPECIAL
					window = 2;
					//vsp = -1;
					//hsp = 0;
					has_hit_id = noone;
				}
		}
	}
	if (window == 2 && window_timer > 6){
		//Need to fix the load offset so it doesn't look lopsided
		if (previous_id != noone || enemy_dist > 9){
	var enemy_dir = point_direction(previous_id.x, previous_id.y - previous_id.char_height * .4, x, y);
	SuperDash_Particle2 = spawn_hit_fx(x, y-60, SuperDashing2);
	SuperDash_Particle2.draw_angle = enemy_dir;
	SuperDash_Particle2.depth = depth+1;
	SuperDash_Particle3 = spawn_hit_fx(x, y-60, SuperDashing3);
	SuperDash_Particle3.draw_angle = enemy_dir;
	SuperDash_Particle3.depth = depth+2;
	SuperDash_Particle4 = spawn_hit_fx(x, y-60, SuperDashing4);
	SuperDash_Particle4.draw_angle = enemy_dir;
	SuperDash_Particle4.depth = depth+3;
		}
	
	dragging_speed = 1;
	reel_speed = 2;
	can_move = false;
	if (window_timer < 5){
	if (spr_dir == 1 && hsp < 1){ spr_dir = -1; } else if (spr_dir == -1 && hsp > 1){ spr_dir = 1; }
	}
	
			if (has_hit_id != noone) {
				
					var enemy_angle = point_direction(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * .1, x, y);
					
					var enemy_dist = point_distance(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * .1, x, y);
					
						var dragging_speed = max(sqrt(enemy_dist) * reel_speed / 29, reel_speed);
						//var dragging_speed = max(sqrt(10) * reel_speed, reel_speed);
						hsp = lengthdir_x(dragging_speed, enemy_angle + 180);
						vsp = lengthdir_y(dragging_speed, enemy_angle + 180);
						ignores_walls = true;
						through_platforms = 0;
						
				if (enemy_dist < 10){
					window = 3;
				}
		}
		
		if (previous_id != noone) {
			
					var enemy_angle = point_direction(previous_id.x, previous_id.y - previous_id.char_height * .3, x, y);
					
					var enemy_dist = point_distance(previous_id.x, previous_id.y - previous_id.char_height * .3, x, y);
					
						var dragging_speed = max(sqrt(enemy_dist) * reel_speed / 1, reel_speed);
						//var dragging_speed = max(sqrt(10) * reel_speed, reel_speed);
						hsp = lengthdir_x(dragging_speed, enemy_angle + 180);
						vsp = lengthdir_y(dragging_speed, enemy_angle + 180);
						ignores_walls = true;
						through_platforms = 0;
						
				if (enemy_dist < 20){
					window = 3;
			}
		}
	}
	if (window == 3){
	dragging_speed = 1;
	reel_speed = 1;
	
	if (spr_dir == 1 && hsp < 1){ spr_dir = -1; } else if (spr_dir == -1 && hsp > 1){ spr_dir = 1; }
	
			if (has_hit_id != noone) {
				
					var enemy_angle = point_direction(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * .1, x, y);
					
					var enemy_dist = point_distance(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * .1, x, y);
					
					var dragging_speed = max(sqrt(enemy_dist) * reel_speed / 10, reel_speed);
						//var dragging_speed = max(sqrt(10) * reel_speed, reel_speed);
						hsp = lengthdir_x(dragging_speed, enemy_angle + 180);
						vsp = lengthdir_y(dragging_speed, enemy_angle + 180);
						ignores_walls = true;
						through_platforms = 0;
		}
		
		if (previous_id != noone) {
			
					var enemy_angle = point_direction(previous_id.x, previous_id.y - previous_id.char_height * .5, x, y);
					
					var enemy_dist = point_distance(previous_id.x, previous_id.y - previous_id.char_height * .5, x, y);
					
					var dragging_speed = max(sqrt(enemy_dist) * reel_speed / 1, reel_speed);
						//var dragging_speed = max(sqrt(10) * reel_speed, reel_speed);
						hsp = lengthdir_x(dragging_speed, enemy_angle + 180);
						vsp = lengthdir_y(dragging_speed, enemy_angle + 180);
						ignores_walls = true;
						through_platforms = 0;
						
					if (enemy_dist < 90){
						window = 3;
					}
				if (window_timer > 10){
					previous_id = noone;
				}
		}
	}
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	can_shield = false;
	Uspecial_Charge = 0;
	if (was_parried == false){
	if (window == 1){ cling_once = 0; dspecial_id = noone; var die = random_func(0, 3, true); }
	if (window >= 2){
		if (free == false && dspecial_id < 0){
		if (abs(hsp) < abs(vsp)){ attack = AT_DSPECIAL_2; window = 3; window_timer = 0; Uspecial_Charge = 0; }
		if (abs(hsp) > abs(vsp)){ attack = AT_DSPECIAL_2; window = 3; window_timer = 0; Uspecial_Charge = 0; }
		}
		if (window < 6
	&& place_meeting( x + 10 * spr_dir, y - 20, asset_get("par_block"))){
		window = 6; window_timer = 0; move_cooldown[AT_DSPECIAL] = 90;
		spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		sound_play(asset_get("sfx_kragg_rock_land"));
		}
	}
	//if (window == 1 && has_hit_player){ telepunch = false; }
	if (window == 2 && instance_exists(dspecial_id) && dspecial_id > 0){
		//can_special = false;
		//window = 2;
		//window_timer = 0;
		//telepunch = false;
		soft_armor = 100;
		
		//x = dspecial_id.x + 10 * spr_dir;
		//y = dspecial_id.y - dspecial_id.char_height * 1; //On the, with their height
		if (window_timer == 2){
			if (die == 1){ sound_play(sound_get("Mecha_Die1")); }
		}
	}
	if (window == 3 && dspecial_id > 0){ can_jump = true; }
	//if (window >= 4){ sound_stop(sound_get("ARC_BTL_OSM_Drive_Dash")); }
	if (window == 3){
		
		if (free == true){
		if (abs(hsp) < abs(vsp)){ vsp -= 2; hsp -= 2 * spr_dir; }
		if (abs(hsp) > abs(vsp)){ vsp -= 0.1; hsp -= 0.3 * spr_dir; }
		}
		if (free == false && dspecial_id < 0){
		if (abs(hsp) < abs(vsp)){ attack = AT_DSPECIAL_2; window = 3; window_timer = 0; }
		if (abs(hsp) > abs(vsp)){ attack = AT_DSPECIAL_2; window = 3; window_timer = 0; }
		}
		if (hsp * spr_dir > 0 && free == false && window_timer > 0 && down_down == false){
			attack = AT_DSPECIAL_2; window = 4; window_timer = 0; can_jump = true;
			if (down_down){ window = 2; window_timer = 0; }
		}
	    if (window_timer == 1){
	    	if(!free){
	    		sound_stop(sound_get("ARC_BG_FtbsFin_BlowOut"));
	    	}
	    }
	}
	
	//if (window >= 2 && window <= 4 && free == false && special_down && has_hit_player == false){ attack = AT_DSPECIAL_2; window = 4; window_timer = 0; }
	if (window == 4){
		if (instance_exists(dspecial_id) && dspecial_id > 0){
			if (state_timer > 31 && dspecial_id.free == true){
				//window = 5;
				//window_timer = 0;
			}
		}
	}
	
	if (window <= 4 && dspecial_id > 0){
		if (dspecial_id.soft_armor || dspecial_id.super_armor){
			//dspecial_id.hitpause = true;
			dspecial_id.hitstop = 10;
			dspecial_id.hitstop_full = 10;
			dspecial_id.state = PS_HITSTUN;
			//dspecial_id.y = dspecial_id.y + 19;
		}
		if (dspecial_id.state == PS_HITSTUN_LAND && hitpause == false){
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 10;
			dspecial_id.hitstop_full = 10;
			//dspecial_id.state = PS_HITSTUN_LAND;
			//if ((state_timer mod 4) == abs(hsp)){ spawn_hit_fx(x+50 * spr_dir, y+45, 3); }
			var randomfire = -50 + random_func( 0, 50, true );
			//if ((get_gameplay_time() mod 5) == 0){ sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); spawn_hit_fx(x+50 * spr_dir, y+45, 200); }
			if ((get_gameplay_time() mod 5) == 0){ create_hitbox(AT_DSPECIAL, 6, x, y); }
			if ((get_gameplay_time() mod 1) == 0){ spawn_hit_fx(x+80 * spr_dir, y+50 + randomfire, 100); }
		}
		//window = 4;
		if (window <= 4 && hitpause == false){
			x = dspecial_id.x - 15 * spr_dir;
			y = dspecial_id.y - dspecial_id.char_height * 0.90;
				draw_x = 10 * spr_dir;
				draw_y = 9;
			if (dspecial_id.state == PS_HITSTUN){
			dspecial_id.x = dspecial_id.x + 13 * spr_dir;
			dspecial_id.y = dspecial_id.y + 8;
			//dspecial_id.hitpause = true;
			//dspecial_id.hitstop = 1;
			//dspecial_id.hitstop_full = 10;
			}
			
			if (window == 2 && window_timer > 1 && dspecial_id.state == PS_HITSTUN){
			window = 4;
			window_timer = 0;
			dspecial_id.x = dspecial_id.x + 13 * spr_dir;
			dspecial_id.y = dspecial_id.y + 8;
			}
			if (dspecial_id.state == PS_HITSTUN_LAND){
			window = 4;
			window_timer = 25;
			dspecial_id.x = dspecial_id.x + 24 * spr_dir;
			dspecial_id.y = dspecial_id.y + 8;
			}
			if (window == 4 && window_timer > 20 && dspecial_id.state != PS_HITSTUN_LAND){
			//window = 5;
			//window_timer = 0;
			//dspecial_id.x = dspecial_id.x + 24 * spr_dir;
			//dspecial_id.y = dspecial_id.y + 8;
			}
		//window = 4;
		}
	}
	//}
	
	if (window <= 5 && dspecial_id > 0){
		if (dspecial_id.state == PS_TUMBLE){

			//dspecial_id.x = dspecial_id.x + 13 * spr_dir;
			//dspecial_id.y = dspecial_id.y + 8;
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 10;
			dspecial_id.hitstop_full = 10;
		}
	}
	
	if (window == 6){
		if (window_timer < 3 && cling_once == 0 && has_walljump == false){ cling_once = 1; }
		if (window_timer <= 2 && cling_once == 1){ has_walljump = true; }
		if (window_timer <= 1){
			move_snap(32, 0);
		}
		if (window_timer >= 9 && djumps <= 2 && (jump_pressed || (tap_jump_pressed && can_tap_jump())) ){ state = PS_IDLE_AIR; vsp = -6; hsp = -6 * spr_dir; }
		can_move = false;
		telepunch = 0;
		if (cling_once == 1){ can_wall_jump = true; can_jump = true; }
		if (dspecial_id == true && hsp == 0){
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 1;
			dspecial_id.hitstop_full = 1;
			if (window_timer >= 30 ){
				state = PS_DOUBLE_JUMP;
				vsp = -9;
				hsp = -6 * spr_dir;
				hit_player_obj.vsp = -6;
			}
			
			can_special = true;
			//if (attack_pressed || special_pressed){
			//	set_attack(AT_USPECIAL);
			//	hit_player_obj.y = y-10;
			//	hit_player_obj.x = x;
			//	
			//}
		}
	}
	if (window == 7){
		if (window_timer == 1){
			spr_dir = -1 * spr_dir;
		}
		if (window_timer < 5){
		dspecial_id.vsp = -10;
		//hit_player_obj.hsp = old_hsp * 1;
		}
		if (window_timer >= 2 && telepunch == 1){ telepunch = 2; }
		if (window_timer == 11){ sound_play(sound_get("dumbass")); }
		if (window_timer > 10 && window_timer < 39){
		x = dspecial_id.x - 60 * spr_dir;
		y = dspecial_id.y + dspecial_id.char_height * 0.30;
		}
		if (window_timer >= 15){
		vsp = 0;
		hsp = 0;
		}
		if (free == false){
		window = 8;
		//state = PS_AIR_DODGE;
		//state_timer = 0;
		//hsp = 50 * spr_dir;
		//y = hit_player_obj.y + hit_player_obj.char_height * 0.10;
			}
		}
	}
}

/*
if (attack == AT_DSPECIAL_2){ //Grounded Down Special, it's actually Down Special ground
can_fast_fall = false;
	if(window == 1){ //Little jump start up
		if(window_timer == 1){
			times_through = 0;
			Uspecial_Charge = 0;
		}
        if (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)){
            if (times_through < 60){
                times_through++;
                window_timer = 2;
                Uspecial_Charge++
            }
        }
        if(!special_down){
        	window = 2;
        	window_timer = 0;
        }
	}
	if(window == 2){ //Charging
		if(Uspecial_Charge >= 60){ timestop = true; }
		if(window_timer == 1){
	    		sound_stop(sound_get("USPECIAL_CHARGE"));
                times_through = 0;
		}
	}
	if(window == 3){ //Spinning and turning
		can_jump = true;
        if (left_down && spr_dir == 1) {
            window = 2;
            spr_dir = -1;
            window_timer = 0;
            destroy_hitboxes();
        }
        if (right_down && spr_dir == -1) {
            window = 2;
            spr_dir = 1;
            window_timer = 0;
            destroy_hitboxes();
        }
        if (window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)){
            if (times_through < Uspecial_Charge/10){
                times_through++;
                window_timer = 0;
            }
        }
        if(shield_pressed){
        	window = 4;
        	window_timer = 0;
        }
	}
}
*/

if (attack == AT_DSPECIAL_2){ //Grounded Down Special changes
if (was_parried == false){
can_fast_fall = false;
	if (window == 1){
		can_shield = false;
		if(window_timer <= 2){
			Uspecial_Charge = 0;
		}
	}
	if (window < 3 && free == true && state_timer > 50){
		window = 10; //No a real window, so it goes into idle
		Uspecial_Charge = 0;
		vsp = -6;
		hsp = 5 * spr_dir;
		sound_stop(sound_get("USPECIAL_CHARGE"));
	}
	if (window == 4 && (jump_pressed || (tap_jump_pressed && can_tap_jump())) ){ window = 5; window_timer = 0; vsp = -9; }
	//if (window <= 3){ can_jump = false; }
	if (window == 2){
		if (hsp * spr_dir > 0 || hsp * spr_dir < 0){ window = 4; window_timer = 0; Uspecial_Charge = 0; }
		if (special_down && free == false && hsp == 0 && vsp == 0){ Uspecial_Charge++; }
        if (special_down == false){
        	window = 4;
        	window_timer = 0;
        }
        if (Uspecial_Charge >= 230){
        	window = 5;
        	window_timer = 0;
        	timestop_ready = true;
        }
	}
	if(window == 10){
		//if(Uspecial_Charge >= 191){ timestop = true; }
		if(window_timer <= 2){
			//sound_stop(sound_get("USPECIAL_CHARGE"));
		}
	}
	if (window == 3){ Uspecial_Charge = 0;
	if (hsp * spr_dir > 0){ window = 4; window_timer = 0; hsp += 5 * spr_dir; }
	if (free == false && ((window_timer mod 3) == 0)) { spawn_hit_fx( x-25 * spr_dir, y-52, Skrt); }
	}
	if (window == 4){
		sound_stop(sound_get("USPECIAL_CHARGE"));
		//if (abs(hsp) > 1){ can_jump = true; }
		if (((window_timer mod 3) == 0) && hitpause == false){ create_hitbox(AT_DSPECIAL_2, 5, x, y); }
        if (left_down && spr_dir == 1 && window_timer > 3 && window_timer < 15) {
            window = 3;
            spr_dir = -1;
            window_timer = 0;
            destroy_hitboxes();
        }
        if (right_down && spr_dir == -1 && window_timer > 3 && window_timer < 15) {
            window = 3;
            spr_dir = 1;
            window_timer = 0;
            destroy_hitboxes();
        }
        if (joy_pad_idle == false && window_timer >= 26){ window = 4; window_timer = 1; }
        if (free == true && shield_pressed){
        	window = 5;
        	window_timer = 0;
        }
	}
	if (window == 5){
		can_shield = false;
		if (timestop_ready == true && window_timer >= 3){ window = 6; window_timer = 0; }
	}
	if (window == 6){
		if (window_timer >= 30){ window_timer = 29; }
		if (special_down == false){ window = 7; window_timer = 0; }
	}
	if (window == 7){
		if (window_timer == 1){
		timestop = true;
		timestop_BG = instance_create(750, 50, "obj_article1");
		timestop_BG.state = 5;
		timestop_BG.state_timer = 0;
		//timestop_BG.depth = depth+26;
		}
		if (window_timer >= 5){ sound_stop(sound_get("USPECIAL_CHARGE")); hsp = 1; vsp = 0; }
		}
	}
}

if(attack == AT_UTILT){
	//move_cooldown[AT_UTILT] = 5;
	//got_hit_id = hit_player_obj.id;
	//got_hit_id = hit_player_obj.id;
	//var enemy_dist = point_distance(got_hit_id.x, got_hit_id.y, x, y);
	//if (hitpause == true){ can_strong = true; can_ustrong = true; can_attack = true; can_special = true; }
	if (was_parried == false){
	if (window == 1){ soft_armor = 100; super_armor = true; }
	if (window == 2){ soft_armor = 0; super_armor = false; }
	if (window == 1 && window_timer <= 2){ flyforward = false; utilt_id = noone; face_opp = false; }
	if (window == 2 && window_timer >= 3 && flyforward == false){ window = 3; window_timer = 2; destroy_hitboxes(); }
	if (window == 2 && flyforward == false){ hsp = 15 * spr_dir; }
	if (window == 2 && place_meeting( x + 1 * spr_dir, y - 1, asset_get("oPlayer")) == true){ window = 3; window_timer = 1; }
	if (hitpause == true && flyforward == false){ flyforward = true; }
	if (flyforward == true && window == 2){
		if (utilt_id != noone){
	reel_speed = 5;
	var enemy_angle = point_direction(utilt_id.x, utilt_id.y - utilt_id.char_height * 1, x, y);
	var enemy_dist = point_distance(utilt_id.x, utilt_id.y - utilt_id.char_height * 1, x, y);
	var dragging_speed = max(sqrt(enemy_dist) * reel_speed / 5, reel_speed);
		hsp = lengthdir_x(dragging_speed, enemy_angle + 180);
		//vsp = lengthdir_y(dragging_speed, enemy_angle + 180);
		ignores_walls = true;
		through_platforms = 0;
	}
	/*
	if (window_timer <= 2 && spr_dir == utilt_id.spr_dir && face_opp == false){
		face_opp = true; spr_dir = -1 * spr_dir;
	}
	*/
	if (spr_dir == 1 && hsp < 0.1){ spr_dir = -1; } else if (spr_dir == -1 && hsp > 0.1){ spr_dir = 1; }
	if (flyforward == true && utilt_id.free == true){
		window = 3;
		window_timer = 0;
		}
	}
	var shortest_dist = 900;
    var shortest_id = noone;
    with (asset_get("oPlayer")) {
        if (player != other.player &&
            ((other.spr_dir > 0 && x > other.x - 32) || // 32 was the default
            (other.spr_dir < 0 && x < other.x + 32))) { // but now it's 90
            var curr_dist = point_distance(x,y,other.x,other.y);
            if (curr_dist < shortest_dist) {
                shortest_dist = curr_dist;
                shortest_id = id;
            }
        }
    }
    if (shortest_id != noone) {
        with (shortest_id) {
            var dist_from = y - other.y - (char_height / 0.1);
            if (y > other.y - (char_height / 0.1) ) {
                other.vsp = 0 + sqrt(abs(dist_from)) / 1;
            } else if (y < other.y - (char_height / 0.1) ) {
                other.vsp = 0 - sqrt(abs(dist_from)) / 1;
            } else {
                other.vsp = 0;
            }
        }
    } else {
        //vsp *= 0.1;
    }
    if (spr_dir > 0 && hsp < 20) { hsp += 1; }
    if (spr_dir < 0 && hsp > -20) { hsp -= 1; }
	}
}

if(attack == AT_FTILT){
	if ((window == 2 || window == 3 || window == 4 || window == 5 && window_timer < 12) && has_hit_player){ hsp = hit_player_obj.hsp; }
	if (window < 5 && hitpause == true && was_parried == false){
		window = 5;
		window_timer = 0;
	}
	if (window <= 4){ can_move = false; can_dash = false; }
	if (window == 5 && window_timer <= 11 && place_meeting( x+-6 * spr_dir, y, hit_player_obj)){ hsp = -4 * spr_dir; }
	if (window == 5 && window_timer >= 16 && hitstop == false){ can_dash = true; }
}

if(attack == AT_NAIR){
	can_fast_fall = false;
	if((window < 4 && window == 4 && window_timer < 4) && has_hit_player == true){ set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1); hit_player_obj.hsp = hsp; hit_player_obj.vsp = vsp; }
	if(window == 2 && window_timer >= 12 && has_hit_player == false && free){ window = 5; window_timer = 0; }
	if(window == 2){
		can_fast_fall = true;
		if(window_timer == get_window_value( AT_NAIR, 2, AG_WINDOW_LENGTH )){
			if(free){
				window = 4;
				window_timer = 0;
			}
			
		}
		if(!free && has_hit_player == false){
			can_fast_fall = false;
			window = 6;
			window_timer = 0;
		}
	}
	if (window == 5 && window_timer < 4 && free == false){ window = 6; window_timer = 0; }
	if (window == 6 && window_timer >= 4){ window = 7; window_timer = 0; }
	//if (state_timer >= 26 && free == false){ set_state(PS_WAVELAND); }
}

if (attack == AT_UAIR){
	//can_fast_fall = false;
}

if (attack == AT_FAIR){
	if (window == 2 && has_hit_player == false){
		if (state_timer == 8){ create_hitbox(AT_FAIR, 6, x+70 * spr_dir, y-105); sound_play(sound_get("Gun")); }
		if (state_timer == 12){ create_hitbox(AT_FAIR, 6, x+80 * spr_dir, y-80);  sound_play(sound_get("Gun")); }
		if (state_timer == 16){ create_hitbox(AT_FAIR, 6, x+90 * spr_dir, y-31);  sound_play(sound_get("Gun")); }
		if (state_timer == 20){ create_hitbox(AT_FAIR, 6, x+90 * spr_dir, y-5);  sound_play(sound_get("Gun")); }
		if (state_timer == 24){ create_hitbox(AT_FAIR, 6, x+80 * spr_dir, y+15);  sound_play(sound_get("Gun")); }
	}
}

if (attack == AT_BAIR){
	if (has_hit_player == true){
		if (hitpause == false){
			if (hit_player_obj.state == PS_HITSTUN && hit_player_obj.state_timer < 2
			|| hit_player_obj.hsp < 11) {
			//if (window == 3){
		vsp = hit_player_obj.vsp * 0.6;
		hsp = hit_player_obj.hsp * 0.6;
				//}
			}
		}
	}
}

if(attack == AT_TAUNT){
	//if(window == 1 && window_timer <= 1 && ChaosEmerald == 7 && SuperMech == false){
	if (get_player_color(player) == 6 ){
			//sound_play(sound_get("YOU_SHOULD_KYS_YOURSELF_NOW"));
	}
	if (get_player_color(player) == 8 ){
			//sound_play(sound_get("YOU_MEAN_THE_CHAOS_EMERALDS"));
	}
	if (get_player_color(player) == 1 ){
			//sound_play(sound_get("IVE_LET_YOU_LIVE_LONG_ENOUGH"));
	}
	//if(window == 1 && window_timer <= 1 && ChaosEmerald == 7){ sound_play(sound_get("YOU_MEAN_THE_CHAOS_EMERALDS")); }
	//if(window == 4 && window_timer >= 1 && ChaosEmerald == 7){ attack = AT_TAUNT_2; window = 1; window_timer = 0; }
	//if(window == 1 && window_timer == 16 && ChaosEmerald != 7 ){ sound_play(sound_get("Mecha_Crush")); }
	if(window == 3){
		IllCrushYou = 5;
	}
	if(window == 5){
		IllCrushYou = 180;
		if (window_timer >= get_window_value( AT_TAUNT, 5, AG_WINDOW_LENGTH ) ){
			if(taunt_down){
				window = 3;
				window_timer = 0;
				//}
			}
		}
	}
}

if (attack == AT_TAUNT_2){
	can_fast_fall = false;
	move_cooldown[AT_TAUNT_2] = 900;
	if (window < 4){ can_move = false; }
	//if (window == 2 && (place_meeting( x + 1 * spr_dir, y + 140, asset_get("par_block")))){ window = 3; window_timer = 0; }
	if(window == 2 && window_timer == 1){
		sound_play(sound_get("ARC_BTL_CMN_Charge_Loop_LP"));
	}
	if (window == 3 && window_timer == 1){
		spawn_hit_fx( x, y-194, TauntAura); 
		sound_play(sound_get("S3&K_81"));
	}
	if (window == 3 && window_timer >= 8){ SuperMech = true; }
	if (window == 4 && free == false){
		//window = 5;
		//window_timer = 0;
	}
}

if (attack == AT_EXTRA_1){
	//Moving during 'Foresight'
    hsp += lengthdir_x(.2, joy_dir);
    vsp += lengthdir_y(.2, joy_dir);
}
/*
if (has_hit_player == true && EmeraldChance == true){
	if (hitpause == true){
	create_hitbox(AT_EXTRA_1, 1, x, y-20);
	EmeraldChance = false;
	}
}
*/

if (attack == AT_EXTRA_3){
	hud_offset = -20;
	can_jump = true;
	can_attack = true;
	can_special = true;
	can_move = false;
	can_dash = true;
	go_through = true;
	if (window_timer <= 2 && ( (hsp < -10 && spr_dir == -1 || hsp > 10 && spr_dir == 1)) ){ hsp = hsp + 2 * spr_dir; }
	if (joy_pad_idle == true || hsp == 0 || window_timer >= 94){
		window = 2;
		crouch_dash = 2;
	}
	if ( (hsp < -1 && spr_dir == 1 || hsp > 1 && spr_dir == -1) && ((get_gameplay_time() mod 3 / abs(hsp)) == 0)){
		spawn_hit_fx( x-20 * spr_dir, y-54, Skrt);
	}
}

//if (EmeraldChance == true && has_hit){

if (attack == AT_TAUNT && window == 1 && ChaosEmerald == 4){
	//SuperMech = true;
}

if (SuperMech == false){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 11);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
}

//SUPER MECHA FUN TIME
if (SuperMech == true){
	if (free == true && has_hit && hitpause == false && state_timer > 3 && (state != PS_ATTACK_AIR || state != PS_ATTACK_GROUND)){
		can_shield = true;
	}
	if (free == false && has_hit && hitpause == false && state == PS_PARRY && joy_pad_idle == false){ y = y-5; set_state(PS_AIR_DODGE); }

	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 18);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

}
/*
if(attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer == 1){
			set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
		}
		if(window_timer == 10){
			spawn_hit_fx( x + 30, y - 40, 157)
		}
	}
	if(window == 5){
	   	if (window_timer % 3 == 0 && !hitpause) {
			create_hitbox( AT_DSPECIAL_2, 2, x, y );
    	}
	}
}
