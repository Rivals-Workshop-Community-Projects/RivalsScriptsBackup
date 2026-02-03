if (window == 1 && hitpause == false && voice_clips == true && move_cooldown[AT_EXTRA_3] = 0){ random_mecha = random_func(0, 4, true); }

//if ((state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD
//|| state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) &&

switch (attack){
	case AT_JAB:
	if (was_parried == false){
		
		if (window == 1 && window_timer == 1
		|| window == 2 && window_timer == 2
		|| window == 5 && window_timer == 1
		|| window == 7 && window_timer == 1){
		//create_hitbox(AT_JAB, 5, x-50 * spr_dir, y-40);
		}
	if (window == 1){ var movesound = 0; turnbackaround = false; hit_player_obj = noone; }
		if (window == 5 && hit_player_obj > 0 && instance_exists(hit_player_obj) == true){
			if (free == true){ turnbackaround = false; }
			if (window_timer == 9){ turnbackaround = true; }
		}
		if (window == 6 && hit_player_obj > 0 && instance_exists(hit_player_obj) ){
			if (window_timer < 15){ x = lerp(x, hit_player_obj.x - (10 * spr_dir), 0.1); }
			if (hit_player_obj.x > x){ spr_dir = 1; 
				if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Imbecile")); random_mecha = 0; }
				}
			if (hit_player_obj.x < x){ spr_dir = -1;
				if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Imbecile")); random_mecha = 0; }
				}
		}
		if (window == 7 && hit_player_obj > 0 && instance_exists(hit_player_obj) ){
			if (free == false && has_hit == false){ x = lerp(x, hit_player_obj.x - 5 * spr_dir, 0.2); }
		move_cooldown[AT_JAB] = 20;
			if (window_timer < 3){
			if (hit_player_obj.x > x){ spr_dir = 1;
				if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Imbecile")); random_mecha = 0; }
				}
			if (hit_player_obj.x < x){ spr_dir = -1;
				if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Imbecile")); random_mecha = 0; }
				}
			}
		}
	}
break;
	case AT_DATTACK:
	
	if (attack_button == 0){
	if (was_parried == false){
		if (has_hit && hitpause){
			if (window == 2 && window_timer < 10){
			var harsh_hitt = spawn_hit_fx(x,y,Harsh_Hit);
			harsh_hitt.x = x-250 * spr_dir;
			harsh_hitt.y = y-50;
			harsh_hitt.draw_angle = 90 * spr_dir;
			harsh_hitt.uses_shader = false; exit;
			}
			if (window == 6 && window_timer > 19){
			var	fire_hitt = spawn_hit_fx(x+40 * spr_dir,y-75,148);
			fire_hitt.draw_angle = 400 * spr_dir;
			}
		}
		
	if (window == 1){ dattack_id = noone; set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0); }
	if (window == 2 && dattack_id == noone){ dattack_id = noone; set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0); }
	if (window == 2 && dattack_id == noone && free == true){ vsp += 0.1; }
	if (window == 3 && dattack_id == noone && free == true){ state = PS_DOUBLE_JUMP; state_timer = -1; vsp = -11; hsp = -8 * spr_dir; sound_play(sound_get("GroundJump")); }
	if (SuperMecha == false && timestop == false && window > 1 && window < 6 && hitpause == false && dattack_id > 0 && instance_exists(dattack_id) == true){
		soft_armor = 100;
		//dattack_id.y = lerp(dattack_id.y, y-dattack_id.char_height * 0.1, 0.4);
		if (state_timer < 40){
		dattack_id.x = lerp(dattack_id.x + 1 * spr_dir, x, 0.08);
		dattack_id.y = lerp(dattack_id.y, y - 25, 0.1);
		hsp = 13 * spr_dir;
		}
		vsp = 0;
		//x = lerp(x, dattack_id.x+119 * spr_dir, 0.2);
		//x = lerp(x, dattack_id.x+20 * spr_dir, 0.1);
		set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
	}
	if (SuperMecha == true && timestop == false && window > 1 && window < 6 && hitpause == false && dattack_id > 0 && instance_exists(dattack_id) == true){
		soft_armor = 100;
		dattack_id.hitstop = 1;
		dattack_id.hitstop_full = 5;
		//dattack_id.y = lerp(dattack_id.y, y-dattack_id.char_height * 0.1, 0.4);
		if (state_timer < 40){
		//dattack_id.x = lerp(dattack_id.x + 1 * spr_dir, x, 0.08);
		//dattack_id.y = lerp(dattack_id.y, y - 25, 0.1);
		x = lerp(x, dattack_id.x+65 * spr_dir, 0.1);
		hsp = 11 * spr_dir;
		}
		vsp = 0;
		//x = lerp(x, dattack_id.x+119 * spr_dir, 0.2);
		//x = lerp(x, dattack_id.x+20 * spr_dir, 0.1);
		set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
	}
	if (window == 3 && dattack_id > 0 && timestop == false){ window = 5; window_timer = 0; }
	if (window == 5 && window_timer > 9 && dattack_id > 0){
		if (place_meeting( x, y, dattack_id)){
			window = 6;
			window_timer = 20;
		}
	}
	if (window == 6 && window_timer < 19 && dattack_id > 0){
		if (place_meeting( x, y, dattack_id)){
			window_timer = 20;
		}
	}
	if (window == 7 && free && window_timer > 1 && hitpause == false && dattack_id > 0){
		window = 8;
		window_timer = -1;
		vsp = -10;
		hsp = -1 * spr_dir;
	}
	if (window == 8 && window_timer > 5){
		can_attack = true;
		can_special = true;
	}
	
		}
	}
	
	if (attack_button == 1){
		if (window == 2){
			if (has_hit == true && hitpause == false){
				window = 9;
				window_timer = -1;
			}
			if (window_timer > 6 && free == true){
			state = PS_DOUBLE_JUMP;
			state_timer = -1; vsp = -11; hsp = -8 * spr_dir;
			sound_play(sound_get("GroundJump"));
			}
		}
		if (window == 9){
			can_move = true;
			if (window_timer < 2 && hitpause == false){
			vsp = -5;
			hsp = 5 * spr_dir;
			}
			if (window_timer > 5){
			can_attack = true;
			can_special = true;
			}
		}
	}
break;

	case AT_UTILT: //Nothing yet
break;
	
	case AT_FTILT:
		if (attack_button == 0){
	if (window == 1){ hit_player_obj = noone; }
	if (window == 2){
		if (hitpause == false && has_hit && was_parried == false){ window = 3; window_timer = 0; }
	}
	if (window == 3){
		if (hitpause == false && ftilt_hit_id > 0 && instance_exists(ftilt_hit_id) ){
			hsp = -6 * spr_dir;
			//x = lerp(x, ftilt_hit_id.x-310 * spr_dir, 0.05);
			//ftilt_hit_id.x = lerp(ftilt_hit_id.x, x-95 * spr_dir, 0.1);
			//ftilt_hit_id.y = lerp(ftilt_hit_id.y, y-5 * spr_dir, 0.1);
			if (window_timer < 13){
				//if (ftilt_hit_id.x > x){ spr_dir = 1; }
				//if (ftilt_hit_id.x < x){ spr_dir = -1; }
			}
		}
		if (has_hit == true && window_timer >= get_window_value( AT_FTILT, 3, AG_WINDOW_LENGTH )){ window = 5; window_timer = 0; }
	}
	if (window == 5){
	//if (window_timer > 3 && window_timer <= 5 && hitpause == false && instance_exists(ftilt_hit_id) && place_meeting( x+1 * spr_dir, y, ftilt_hit_id)){ hsp += 5 * spr_dir; }
	if (window_timer > 3 && window_timer <= 5 && hitpause == false && instance_exists(ftilt_hit_id)){ hsp += 5 * spr_dir; }
		}
	}
	if (attack_button == 1){
		if (window == 2 && window_timer > 5){
			window = 5;
			window_timer = 9;
		}	
	}
break;
	
	case AT_DTILT:
	move_cooldown[AT_DTILT] = 4;
break;
	
	case AT_USTRONG:
	can_move = false;
	can_fast_fall = false;
	can_jump = false;
	if (was_parried == false){
	if (window == 1){
		set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
	}
	if (window > 1){ set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1); }
	if (window == 2){
		if (has_hit && random_mecha == 2 && voice_clips == true){
			sound_play(sound_get("Mecha_Aagh"));
			random_mecha = 0;
		}
		if (free == false){ spawn_hit_fx(x, y-1, 102); }
		if (window_timer == 1 && has_hit == false){
			//vsp = -8 - (strong_charge / 10);
			vsp = -8 - (strong_charge / 50);
		}
		if (window_timer > 7 && has_hit == true && hitpause == false){
			can_special = true;
		}
	}
	if (window == 3){
		if (has_hit == true && hitpause == false){
			can_special = true;
			can_attack = true;
		}
	}
	if (has_hit_player == true && hitpause == false){
		hit_player_obj.spr_dir = spr_dir;
		vsp += hit_player_obj.vsp / 40;
		hit_player_obj.hsp = hsp;
		}
	}
	if (was_parried == true){ //A bit of a launch if Mecha gets parried
		if (window == 2 && window_timer <= 3){ vsp = -5; }
	}
break;
	
	case AT_FSTRONG:
	if (was_parried == true){
		if (window == 2){
		hsp = (0.3 * strong_charge) * spr_dir;
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
		}
	}
		if (attack_button == 0){
	if(window == 1){ grabbedid = noone;
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1); }
	if(window == 2 && window_timer < 3){ hsp = -5 * spr_dir + (0.1 * strong_charge * spr_dir); } //fly back
	if(window == 2 && window_timer > 3 && window_timer < 6){ hsp = 12 * spr_dir + (0.2 * strong_charge * spr_dir); }
    if(window == 2){
        if (window_timer == 5 && grabbedid > 0){
        	if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Pest")); random_mecha = 0; }
        }
    }
    if ((window == 2 && window_timer > 7 || window == 3) && grabbedid != noone){
    	if (hsp >= 6 && spr_dir == 1 || hsp <= -6 && spr_dir == -1){
    		spawn_hit_fx(x+5 * spr_dir, y-24, Burst_Tail);
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
				grabbedid.hitpause = true;
				grabbedid.hitstop = 2;
				if (hsp < 5 * spr_dir){
				}
				if(window == 2 && window_timer >= 1){
					has_walljump = true;
					grabbedid.x = lerp(grabbedid.x, x+65 * spr_dir, 0.6);
					grabbedid.y = lerp(grabbedid.y, y+1 - grabbedid.char_height  * 0.1, 0.4);
				}
				if(window == 3 && hitpause == false){
					grabbedid.x = lerp(grabbedid.x, x+45 * spr_dir, 0.4);
					grabbedid.y = lerp(grabbedid.y, y+1 - grabbedid.char_height  * 0.1, 0.4);
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
		
	if (attack_button == 1){
		if (window < 4){
		if (strong_charge < 60){
		set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 204);
		//set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fstrong_hardhit"));
		if (get_player_color(player) != 8) { set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fstrong_hit")); }
		if (get_player_color(player) == 8) { set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("EA_fstrong_hit")); }
		}
		if (strong_charge >= 60){
			spawn_hit_fx(x+5 * spr_dir, y-24, Burst_Tail);
			set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, Explosive_Punch);
			//set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fstrong_hardhit"));
			if (get_player_color(player) != 8) { set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fstrong_hardhit")); }
			if (get_player_color(player) == 8) { set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("EA_fstrong_hardhit")); }
			}
		}
		if (window == 2){
			if (window_timer < 3){ hsp = -5 * spr_dir + (0.1 * strong_charge * spr_dir); } //fly back
			if (window_timer > 3 && window_timer < 6){ hsp = 11 * spr_dir + (0.2 * strong_charge * spr_dir); } //Fly forward
			if (has_hit){
				destroy_hitboxes();
				window = 3;
				window_timer = 9;
			}
		}
		if (window == 3){
			if (has_hit == false && window_timer == 9){ window_timer = 14; } 
			if (has_hit && window_timer == 15){
				spawn_hit_fx(my_hitboxID.x+6 * spr_dir, my_hitboxID.y-24, (Explosive_Punch));
			}
			if (has_hit && hitpause == false){
				hsp = 7 * spr_dir;
				if (spr_dir = 1){
				//hsp = hsp - 9;
				} else {
				//hsp = hsp + 9;
				}
			}
		}
	}
break;
	
	case AT_DSTRONG:
	if (window == 1){
	force_depth = 0;
	grabbedid = noone;
    }
    	if (attack_button == 0){
    	if (window == 3 && window_timer == 18 && random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Useless")); }
	if (window == 1 || window == 2 || window == 3){
		if (grabbedid != noone){
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
					if (window_timer > 1){ force_depth = 1; depth = -1; }
					
					if (window_timer < 6){
					grabbedid.x = lerp(grabbedid.x, x+45 * spr_dir, 0.1);
					grabbedid.y = lerp(grabbedid.y, y-1, 0.1);
					}
					if (window_timer >= 6 && window_timer < 7){
					grabbedid.x = lerp(grabbedid.x, x+40 * spr_dir, 0.2);
					grabbedid.y = lerp(grabbedid.y, y-1, 0.2);
					}
					if (window_timer >= 7 && window_timer < 11){
					grabbedid.x = lerp(grabbedid.x, x+30 * spr_dir, 0.4);
					grabbedid.y = lerp(grabbedid.y, y-4, 0.4);
					}
					if (window_timer >= 11 && window_timer < 14){
					grabbedid.x = lerp(grabbedid.x, x+25 * spr_dir, 0.5);
					grabbedid.y = lerp(grabbedid.y, y-5, 0.5);
					}
				}
				if(window == 3){
					force_depth = 1;
					if (window_timer <= 5){
					grabbedid.x = lerp(grabbedid.x, x+7 * spr_dir, 0.9);
					grabbedid.y = lerp(grabbedid.y, y-15, 0.9);
					}
					if (window_timer >= 5){
					force_depth = 0;
					grabbedid.x = lerp(grabbedid.x, x+30 * spr_dir, 0.9);
					grabbedid.y = lerp(grabbedid.y, y-17, 0.9);
					}
					if (window_timer >= 10){
					grabbedid.x = lerp(grabbedid.x, x+50 * spr_dir, 0.9);
					grabbedid.y = lerp(grabbedid.y, y-20, 0.9);
					}
					if (window_timer >= 15){
					grabbedid.x = lerp(grabbedid.x, x+48 * spr_dir, 0.9);
					grabbedid.y = lerp(grabbedid.y, y-22, 0.9);
					}
					if (window_timer >= 20){
					grabbedid.x = lerp(grabbedid.x, x+42 * spr_dir, 0.9);
					grabbedid.y = lerp(grabbedid.y, y-30, 0.9);
					}
				}
			}
		}else{
	}
	if (window == 3){ //Missing the first grab, just go into a window that doesn't exist - back to idle.
	can_strong = false;
	can_ustrong = false;
	move_cooldown[AT_USTRONG] = 50;
	move_cooldown[AT_FSTRONG] = 50;
	move_cooldown[AT_DSTRONG] = 50;
	if (grabbedid > 0 && instance_exists(grabbedid)){
		if (state_timer < 60){ grabbedid.old_vsp = -4; } 
		//if (state_timer > 60 && attack_pressed) { window = 6; window_timer = 0; }
		if (state_timer > 40 && state_timer < 51){
			if (spr_dir == 1){
			if (right_down == true){ window = 5; window_timer = 0; }
			if (left_down == true){ window = 6; window_timer = 0; }
			}
			if (spr_dir == -1){
			if (left_down == true){ window = 5; window_timer = 0; }
			if (right_down == true){ window = 6; window_timer = 0; }
			}
		}
	}
		if (window_timer >= 5 && grabbedid == noone){ window = 7; window_timer = 0; }
		if (window_timer >= 25 && grabbedid != noone){ window = 4; window_timer = 0; }
		}
	}
	if (random_mecha == 2 && voice_clips == true){
		if (window == 5 && random_mecha == 2){ sound_play(sound_get("Mecha_There")); random_mecha = 0; }
		if (window == 6 && random_mecha == 2){ sound_play(sound_get("Mecha_Hhuh")); random_mecha = 0; }
	}
    	}
    if (attack_button == 1){
    	if (window == 4 && has_hit == true && window_timer == 1 && random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Useless")); }
    }
break;
	
	case AT_NAIR:
	if ((window < 4 && window == 4 && window_timer < 4) && has_hit_player == true){ set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1); hit_player_obj.hsp = hsp; hit_player_obj.vsp = vsp; }
	if (window == 2 && window_timer >= 12 && has_hit_player == false && free){ window = 5; window_timer = 0; }
	if (window == 4 && window_timer >= 6 && free == false){ window = 5; window_timer = 0; }
	if (window == 2){
		if (has_hit == true){
		can_fast_fall = false;
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 7;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
        	}
		}
		
		if (window_timer == get_window_value( AT_NAIR, 2, AG_WINDOW_LENGTH )){
			if (free){ window = 4; window_timer = 0; }
		}
		if (!free && has_hit == false){ can_fast_fall = false; window = 6; window_timer = 0; }
	}
	if (window == 4 && hitpause == false && has_hit == true){ can_fast_fall = true; }
	if (window == 5 && window_timer < 4 && free == false){ window = 6; window_timer = 0; }
	if (window == 6 && window_timer >= 4){ window = 7; window_timer = 0; }
break;
	case AT_UAIR:
	if (window == 2){
		prev_attack = 1;
	}
	if (window == 3){
		prev_attack = 0;
	}
break;
	case AT_FAIR:
	if (window == 2){
		if (window_timer < 17){ can_fast_fall = false; }
		if (has_hit == true && can_fast_fall == false){
		var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 7;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
        	}
		}
		prev_attack = 2;
	}
	if (window == 3){
		can_fast_fall = true;
		prev_attack = 0;
		if (has_hit == true){
			if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Farewell")); random_mecha = 0; }
		}
	}
break;
	case AT_DAIR:
	prev_attack = 3;
	if (window == 1){
	//random_mecha = random_func(0, 4, true);
	}
	if (has_hit == true && hitpause == false && window == 2 && window_timer == 2){
		vsp = -5 - (abs(hsp) / 3);
		can_fast_fall = false;
	}
break;
	case AT_BAIR:
	if (window == 2 && window_timer < 12){
		prev_attack = 4;
	}
	if (window == 2 && window_timer >= 12 || window == 3){
		prev_attack = 0;
	}
	
	if (has_hit_player == true){
	if (hitpause == false && (left_down || right_down) ){
		if (hit_player_obj.state == PS_HITSTUN){
		vsp = hit_player_obj.vsp * 0.8;
		hsp = hit_player_obj.hsp * 0.8;
			}
		}
	}
break;

	case AT_NSPECIAL:
	can_fast_fall = false;
	if (window <= 5){ trigger_b_reverse(); }
	if (air_special == true && state == PS_ATTACK_GROUND &&
	!(window == 5 || window == 8)){
	window = 9;
	window_timer = 0;
	air_special = false;
	hsp = hsp * 1.1;
	}
	if (window == 1){
		air_special = false;
		if (window_timer == 1){ Nspecial_moves = 1000; }
	}
    if (window == 2){
    	can_jump = false;
    	can_move = false;
    	if (Nspecial_moves > 1 && state == PS_ATTACK_AIR){
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
    				hsp = -13 * spr_dir;
    			}else{
    				window = 4;
    				window_timer = -1;
    				hsp = 13 * spr_dir;
    			}
    		}
    		if(right_pressed){
    			Nspecial_moves--;
    			if(spr_dir == -1){
    				window = 3;
    				window_timer = -1;
    				hsp = -13 * spr_dir;
	    		}else{
    				window = 4;
    				window_timer = -1;
    				hsp = 13 * spr_dir;
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
    	if (nspecial_time <= 0 && SuperMecha == false){
    		//No more bullets
    		window = 5;
    	    window_timer = 1;
    	    move_cooldown[AT_NSPECIAL] = 50;
    	    sound_play(asset_get("sfx_ell_steam_release"));
    	    if (random_mecha == 2 && voice_clips == true){
        	sound_play(sound_get("Mecha_Is_That_Your_Best"));
        	}
    	}
    }
    if (window == 3){
    	if (window_timer == get_window_value( AT_NSPECIAL, 3, AG_WINDOW_LENGTH )){
	        if (special_down){ window = 2; window_timer = 0; }else{ window = 5; window_timer = 0; }
    	}
    }
    if (window == 4){
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
    if (window == 5){
    	if (state == PS_ATTACK_AIR){ window = 8; window_timer = 2; vsp = -8; sound_play(sound_get("gun_unload")); }
    }
    if (window == 6){
    	random_mecha = random_func(0, 1, true);
    	air_special = true;
    	nspecial_air_time = 100;
    	can_move = false;
    	if (window_timer >= 14){ window = 7; window_timer = 0; }
    }
    if (window == 7){
    	if (instance_exists(asset_get("camera_obj"))){
		//Little safety net so players don't fling themselves
		if (x-425 > get_instance_x(asset_get("camera_obj")) ){ hsp -= 2; }
		if (x+425 < get_instance_x(asset_get("camera_obj")) ){ hsp += 2; }
		if (y-415 > get_instance_y(asset_get("camera_obj")) ){ vsp -= 2; }
		if (y+415 < get_instance_y(asset_get("camera_obj")) ){ vsp += 2; }
		}
    	can_move = false;
    	grav = 0.05;
    	if (joy_pad_idle == false){
    	hsp += lengthdir_x(1, joy_dir);
    	vsp += lengthdir_y(0.07, joy_dir);
    	}
    	var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 7;
        if (fly_dist > max_speed){
        	hsp = lengthdir_x(7, fly_dir);
            vsp = lengthdir_y(7, fly_dir);
        }
        var floor_distance;
		for (var i = 0; i < 10; i++;) {
		floor_distance = y + (20);
		if ( (place_meeting( x, floor_distance, asset_get("par_block")) )
		|| (place_meeting( x, floor_distance, asset_get("par_jumpthrough")) ) )  {
		vsp -= 0.1;
		if ((state_timer mod 10) == 0){
			state_timer = 0;
				}
			}
		}
        if (nspecial_time <= 0 && SuperMecha == false){
        //Can't shoot anymore because no bullets
        	window = 8;
        	window_timer = 0;
        	move_cooldown[AT_NSPECIAL] = 50;
        	sound_play(asset_get("sfx_ell_steam_release"));
        	if (random_mecha == 2 && voice_clips == true){
        	sound_play(sound_get("Mecha_Is_That_Your_Best"));
        	}
		}
    	if (window_timer >= 6 && special_down){ window_timer = 0; window = 7; } else if (window_timer >= 6){ window = 8; window_timer = 0; }
    }
    if (window == 8){
    	//move_cooldown[AT_NSPECIAL] = 10;
    	max_height = 0;
    	grav = 1;
    	if (window_timer < 2){
    		vsp = -5;
    	}
    	if (free == false){
    		window = 5;
    		window_timer = 7;
    		state_timer = 0;
    	}
    }
    
    if (window == 10){
    	off_edge = false;
    	if(window_timer == get_window_value( AT_NSPECIAL, 10, AG_WINDOW_LENGTH )){
    		window = 11;
    		window_timer = 0;
    	}
    }
    
    if (window == 11){
    	if(window_timer == get_window_value( AT_NSPECIAL, 11, AG_WINDOW_LENGTH )){
    		window = 12;
    		window_timer = 0;
    	}
    }
    
    
break;

	case AT_NSPECIAL_2: //Super Mecha Air NSpecial
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 60;
	
	if (window < 3 || window == 3 && window_timer < 29){
	var floor_distance;
	for (var i = 0; i < 60; i++;) {
	floor_distance = y + (i);
	
	var fly_dir0 = point_direction(0,0,hsp,vsp);
	var fly_dist0 = point_distance(0,0,hsp,vsp);
	if (fly_dist0 > 9){
	hsp = lengthdir_x(9, fly_dir0)
	vsp = lengthdir_y(9, fly_dir0);
	}
	
	if ( ( place_meeting( x, floor_distance, asset_get("par_block"))) )  {
	vsp -= 0.1;
	}
	if (place_meeting( x, floor_distance, asset_get("par_jumpthrough")) ) {
	vsp -= 0.05;
			}
		}
	}
	
	if (window == 1){
		var fly_dir = point_direction(0,0,hsp,vsp);
	    var fly_dist = point_distance(0,0,hsp,vsp);
	    if (fly_dist > 1){
	    //hsp -= lengthdir_x(1, fly_dir)
	    //vsp -= lengthdir_y(1, fly_dir);
	    }
	}
	if (window == 2){
		if (window_timer == 19){ white_flash_timer = 7; }
		if (window_timer == 28){
			/*
			var Unibeaming = spawn_hit_fx(x+20 * spr_dir, y-240, Unibeam);
			Unibeaming.force_depth = true;
			//Unibeaming.depth = depth-1;
			Unibeaming.draw_angle = 330 * spr_dir;
			var Unibeaming_stretch =  spawn_hit_fx(x+890 * spr_dir, y+373, Unibeam_stretch);
			Unibeaming.force_depth = true;
			//Unibeaming.depth = depth-1;
			Unibeaming_stretch.draw_angle = 240 * spr_dir;
			Unibeaming_stretch.image_yscale = 3;
			*/
		}
		if (window_timer == 20){ spawn_hit_fx(x+5 * spr_dir, y-50, 66); }
		if (window_timer > 19){
			//create_hitbox(AT_NSPECIAL_2, 1, x+5 * spr_dir, y-80);
			//create_hitbox(AT_NSPECIAL_2, 1, x-180 * spr_dir, y-160);
			//create_hitbox(AT_NSPECIAL_2, 1, x-40 * spr_dir, y-80);
			//create_hitbox(AT_NSPECIAL_2, 2, x-110 * spr_dir, y-80);
		}
		
	if ((get_gameplay_time() mod 2) == 0){
		/*
		var random_elec = random_func_2(1, 5, true);
		var random_hori = random_func(0, 10, true);
		var random_verti = random_func_2(0, 10, true);
		var random_angle = random_func(0, 4, true);
		if (random_angle == 0){ random_angle = 0; }
		if (random_angle == 1){ random_angle = 270; }
		if (random_angle == 2){ random_angle = 180; }
		if (random_angle == 3){ random_angle = 90; }
		
		if (random_elec == 1){ var elec1 = spawn_hit_fx((x+10 + random_hori) * spr_dir, y-61 + random_verti, Electric_1); elec1.force_depth = true; elec1.depth = -5; elec1.draw_angle = random_angle; }
		if (random_elec == 2){ var elec2 = spawn_hit_fx((x+10 + random_hori) * spr_dir, y-61 + random_verti, Electric_2); elec2.force_depth = true; elec2.depth = -5; elec2.draw_angle = random_angle; }
		if (random_elec == 3){ var elec3 = spawn_hit_fx((x+10 + random_hori) * spr_dir, y-61 + random_verti, Electric_3); elec3.force_depth = true; elec3.depth = -5; elec3.draw_angle = random_angle; }
		if (random_elec == 4){ var elec4 = spawn_hit_fx((x+10 + random_hori) * spr_dir, y-61 + random_verti, Electric_4); elec4.force_depth = true; elec4.depth = -5; elec4.draw_angle = random_angle; }
		if (random_elec == 5){ var elec5 = spawn_hit_fx((x+10 + random_hori) * spr_dir, y-61 + random_verti, Electric_4); elec5.force_depth = true; elec5.depth = -5; elec5.draw_angle = random_angle; }
		*/
		}
	}
	
	if (window == 3){
		if (window_timer < 19){
			//create_hitbox(AT_NSPECIAL_2, 1, x+5 * spr_dir, y-80);
			//create_hitbox(AT_NSPECIAL_2, 1, x-180 * spr_dir, y-160);
			//create_hitbox(AT_NSPECIAL_2, 1, x-100 * spr_dir, y-100);
			//create_hitbox(AT_NSPECIAL_2, 1, x-10 * spr_dir, y-100);
			//create_hitbox(AT_NSPECIAL_2, 2, x-110 * spr_dir, y-80);
		}
	}
	
break;
	
	case AT_USPECIAL: //Aerial
	trigger_b_reverse();
	if (was_parried == false){
		if (attack_button == 1){
			move_cooldown[AT_USPECIAL] = 200;
			
			if (window == 6 && window_timer < 9 && hitpause == false){
				vsp = -9;
			}
			
		}
		
		if (attack_button == 0){
	if (window < 6 || window > 6 || window == 6 && window_timer < 15){
		can_fast_fall = false;
	}
	if (window == 1){
		if (joy_pad_idle == false){
    	hsp += lengthdir_x(1, joy_dir);
    	}
    	var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 6;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
	}
	
	if (window == 8 && has_walljump){ can_wall_jump = true; }
	if (hit_player_obj > 0 && instance_exists(hit_player_obj) == true){
		if (window == 5){
		hit_player_obj.x = lerp(hit_player_obj.x, x, 0.4);
		hit_player_obj.y = lerp(hit_player_obj.y, y-hit_player_obj.char_height * 1, 0.3);
		hit_player_obj.hitpause = true;
		hit_player_obj.hitstop = 5;
		}
		if (window == 6 && window_timer < 5){
			hit_player_obj.x = x;
			hit_player_obj.y = y-hit_player_obj.char_height * 1
			hit_player_obj.hitpause = true;
			hit_player_obj.hitstop = 5;
		}
	}
	if (window == 4){
		if (window_timer >= get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)){
		window = 8;
		window_timer = 0;
		}
	}
	
	if (window == 2){
		if (was_parried == true){ was_parried = false; }
	}
	
	if (window == 5){ //Nothing window
		if (window_timer == 1){
			if (random_mecha == 2 && voice_clips == true){ sound_play(sound_get("Mecha_Doomed")); }
		}
		if (window_timer < 3){
		vsp = (hit_player_obj.old_vsp * 1.2) / 1;
		}
		if (window_timer > 21){
		window = 6;
		window_timer = 0;
		move_cooldown[AT_USPECIAL] = 15;
		}
		if (instance_exists(asset_get("camera_obj"))){
		//Little safety net so players don't fling themselves
		if (y+210 < get_instance_y(asset_get("camera_obj")) ){ vsp += 5; }
		}
	}

	if (window == 6){
		can_move = true;
		if (move_cooldown[AT_USPECIAL] > 0){
			window_timer = 0;
			vsp = -1;
		}
		if (window_timer < 10){ hit_player_obj.y += 5; }
		if (window_timer > 3 && window_timer < 8){ vsp = -4; }
		if (window_timer > 8 && hitpause == false){ can_fast_fall = true; }
	}
	if (window == 7){
		if (window_timer > 16 && window_timer < 24){
		x = hit_player_obj.x - 1 * spr_dir;
		y = hit_player_obj.y - hit_player_obj.char_height * 1.00;
		hit_player_obj.hitpause = true;
		hit_player_obj.hitstop = 1;
		hit_player_obj.hitstop_full = 5;
		}
		if (window_timer < 24){ hsp = hit_player_obj.hsp * 0.5; }
		if (window_timer >= 35){ can_jump = true; }
	}
	if (window == 8){ //"Floating around at the speed of diagonal"
		move_cooldown[AT_USPECIAL] = 195;
		if (joy_pad_idle == false){
    	hsp += lengthdir_x(0.2, joy_dir);
    	}
    	var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 8;
        if (fly_dist > max_speed){
        	hsp = lengthdir_x(max_speed, fly_dir);
		}
		if (free == false){ state = PS_WAVELAND; }

	if (window_timer == 1){ sound_play(sound_get("floating")); }
			}
		}
	}
	
	if (attack_button == 1){
		if (window < 5 && has_hit && hitpause == false){
		window = 5;
		window_timer = 0;
		}
	}
	
	//---SUPER MECHA---//
	if (window > 10 && window < 17){
		can_move = false;
		if (instance_exists(asset_get("camera_obj"))){
		//Edge of screen push back
		if (x-20 > get_instance_x(asset_get("camera_obj")) ){ hsp -= 2; }
		if (x+20 < get_instance_x(asset_get("camera_obj")) ){ hsp += 2; }
		if (y+75 > get_instance_y(asset_get("camera_obj")) ){ vsp = 0;  }
		if (y+170 < get_instance_y(asset_get("camera_obj")) ){ vsp += 1; }
		}
	}
	if (window == 10){
	can_move = false;
        if (window_timer >= get_window_value( AT_USPECIAL, 10, AG_WINDOW_LENGTH)){
        spawn_hit_fx(x-66 * spr_dir, y-108, USpecial_teleport);
        }
	}
	
	if (window == 11 & window_timer > 2){ draw_indicator = false; }
	if (window == 12){
		if (window_timer == 1){
		//var UspecialTeleport = spawn_hit_fx(x-1 * spr_dir, y-1, USpecial_teleport2);
		//with (UspecialTeleport){
		//x = other.x-900;
		//y = other.y-90;
			}
		}
	
	if (window == 11 || window == 12){
		draw_indicator = false;
		if (instance_exists(asset_get("camera_obj"))){
		//Edge of screen push back into the center
		if (x-20 > get_instance_x(asset_get("camera_obj")) ){ x -= 90; }
		if (x+20 < get_instance_x(asset_get("camera_obj")) ){ x += 90; }
		if (y+75 > get_instance_y(asset_get("camera_obj")) ){ y -= 90;  }
		if (y+170 < get_instance_y(asset_get("camera_obj")) ){ y += 90; }
		}
	}
	
	if (window == 16){ //Boom teleport end
	if (window_timer <= 1){
		spawn_hit_fx(x-1 * spr_dir, y-15, 304);
		//spawn_hit_fx(x-1 * spr_dir, y-1, USpecial_teleport2);
		}
	}
	
	if (window == 16){
		if (window_timer > 10 && special_down == false){
		window = 17;
		window_timer = -1;
		//Not holding special? Just end it
		}
		
		if ((get_gameplay_time() mod 10) == 0){ create_hitbox(AT_USPECIAL, 3, x+50 * spr_dir, y-200); var GigabeamFX = spawn_hit_fx(x-105 * spr_dir, y-380, Gigabeam); shake_camera( 10, 1 ); }
		if (get_player_color(player) != 8) { GigabeamFX.uses_shader = false; exit; }
		//if ((get_gameplay_time() mod 10) == 0){ create_hitbox(AT_USPECIAL, 3, x+50 * spr_dir, y-200); }
    	var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 8;
        if (fly_dist > max_speed){
            //hsp = lengthdir_x(max_speed, fly_dir);
            //vsp = lengthdir_y(max_speed, fly_dir);
        }
	}
break;

	case AT_USPECIAL_2: //Grounded
		if (attack_button == 1){
			
		if (window == 1){
			window = 4;
			window_timer = -1;
		}
		
		if (window == 5){
			window = 6;
			window_timer = 0;
		}
			}
		
		if (attack_button == 0){
			
	if (window == 1 || window == 2){ was_parried = false; }
		
	if (window == 1){
		can_move = true;
		//random_mecha = random_func(0, 4, true);
	if (window_timer < 3){
		marked_id = false;
		target_addup = 0;
			with (asset_get("oPlayer")){
	        if (player != other.player){
	        	targeted = false;
	        	}
			}
		}
	}
	
	if (window == 2){
		with (asset_get("oPlayer")) {
        	if (player != other.player) {
        		if ((state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD
        		|| state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) &&
        		place_meeting( x, y, asset_get("pHitBox"))){
        		other.window_timer--;
        		}
			}
		}
	}

	if (window == 3){
		if (window_timer == 20 && voice_clips == true && (get_player_color(player) != 8) ){ sound_play(sound_get("Mecha_Where_Are_You")); }
		if (marked_id > 0){ window = 4; window_timer = 0; }
	}
	if (window == 4 && marked_id > 0 && hit_player_obj.free == true){ window = 6; window_timer = 0; }
	if (window == 4 &&
	window_timer >= get_window_value( AT_USPECIAL_2, 4, AG_WINDOW_LENGTH) &&
	marked_id > 0 && hit_player_obj.free == false){ window = 5; window_timer = 0; }
	
	if ((window == 5 || window == 6) && window_timer == 2){
	if (random_mecha == 2 && voice_clips == true ){ sound_play(sound_get("Mecha_SeeYou")); }
	}
	
	if (window == 7 && window_timer == 14){ sound_play(sound_get("uspecial_reloadgun")); }
	
	}
break;

	case AT_USPECIAL_GROUND: //Super Mecha Up Special
	move_cooldown[AT_USPECIAL_GROUND] = 10;
	soft_armor = 100;
	if (window == 1){ SuperRocket = 0; super_beam_id = noone; }
	if (window == 2){
		white_flash_timer += 1;
		//sparkle.force_depth = true;
		//sparkle.depth = depth-9;
		if (special_down && window_timer >= get_window_value( AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH)){
			if (SuperRocket < 10){
			//window_timer = 0;
			//SuperRocket += 1;
			}
		}
	}
	if (window == 4){
		
		//if (window_timer == 8){ white_flash_timer = 11; }
		if (window_timer == 1){
			//var Kamaebeaming = spawn_hit_fx(x-160 * spr_dir, y-135, Unibeam);
			//Kamaebeaming.force_depth = true;
			//Kamaebeaming.depth = depth-1;
			//Kamaebeaming.draw_angle = 45 * spr_dir;
			//Kamaebeaming.uses_shader = false;
			//var Unibeaming_stretch =  spawn_hit_fx(x+90 * spr_dir, y+173, Unibeam_stretch);
			//Unibeaming.force_depth = true;
			//Unibeaming.depth = depth-1;
			//Unibeaming_stretch.draw_angle = 240 * spr_dir;
			//Unibeaming_stretch.image_yscale = 3;
		}
	}
	
	break;

	case AT_FSPECIAL: //Aerial
	trigger_b_reverse();
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 60;
	move_cooldown[AT_FSPECIAL_2] = 60;
	
	if (window == 1){
		if (window_timer == 2){ spawn_hit_fx(x-20 * spr_dir, y-70, Shockwave); }
	}
	if (window == 2 && special_down && window_timer >= get_window_value( AT_FSPECIAL, 2, AG_WINDOW_LENGTH )){
		window = 3;
		window_timer = 0;
	}
	if (window == 3 && random_mecha == 2 && voice_clips == true && has_hit){ sound_play(sound_get("Mecha_Too_Slow")); random_mecha = 0; }
break;
	
	case AT_FSPECIAL_2: //Ground
	trigger_b_reverse();
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 90;
	move_cooldown[AT_FSPECIAL_2] = 90;
	
	if (window == 1){
		fspecial_id = noone;
		if (window_timer == 2){ spawn_hit_fx(x-20 * spr_dir, y-70, Shockwave); }
	}
	
	if (window == 2 && special_down && window_timer >= get_window_value( AT_FSPECIAL, 2, AG_WINDOW_LENGTH )){
		window = 3;
		window_timer = 0;
	}
	
	if (window == 3 && window_timer < 3){
		if (attack_button == 1){
		window = 5;
		window_timer = 16;
		}
	}
	
	if (special_down == false
		&& (window == 2 && window_timer >= 6 && down_down || window == 4 && window_timer < 3 && down_down)){
		attack = AT_EXTRA_3;
		window = 1;
		window_timer = -1;
		hsp = 10.20 * spr_dir;
		vsp = 2;
	}
	
	if (attack_button == 0){
	if (fspecial_id > 0 && instance_exists(fspecial_id)){
		if (window == 5 && window_timer < 25){
		fspecial_id.hitpause = true;
		fspecial_id.hitstop = 5;
		fspecial_id.x = lerp(fspecial_id.x, x+35 * spr_dir, 0.4);
		fspecial_id.y = lerp(fspecial_id.y, y - fspecial_id.char_height * 0.1, 0.2);
			}
		}
	}
	
	if (window == 5 && random_mecha == 2 && voice_clips == true && has_hit){ sound_play(sound_get("Mecha_Die2")); random_mecha = 0; }
	
break;
	
	case AT_FSPECIAL_AIR: //Super Mecha FSpecial
	//if (SuperMecha == true){
	soft_armor = 100;
	if (window == 1){
		can_move = false;
		can_fast_fall = false;
		if (window_timer > 8 && window_timer < 10 && special_down == false){
			window = 6;
			window_timer = -1;
			//hsp = 25 * spr_dir;
		}
		grabbed_id = noone;
		if (window_timer == 9){
		var fspecial_particle = spawn_hit_fx(x-40 * spr_dir, y-50, FSpecial_particle);
		fspecial_particle.force_depth = true;
		fspecial_particle.depth = depth-5;
		}
		if (window_timer == 9 && voice_clips == true && random_mecha == 2 && (get_player_color(player) != 8) ){
			sound_play(sound_get("Mecha_Die"));
			random_mecha = 0;
		}
		if (window_timer == 32){
			white_flash_timer = 10;
		}
	}
	if (window == 2){
		can_move = false;
		can_fast_fall = false;
		soft_armor = 99;
		if (window_timer > 20 && was_parried == true){ window = 10; window_timer = -1; }
		}
		
	if (window == 3){
		can_move = false;
		can_fast_fall = false;
		soft_armor = 0;
		if (was_parried == true){ window = 10; window_timer = -1; }
	if (joy_pad_idle == false){
    	hsp += lengthdir_x(0.6, joy_dir);
    	vsp += lengthdir_y(0.6, joy_dir);
    }
    if (joy_pad_idle == true){
    	hsp = lengthdir_x(0, joy_dir);
    	vsp = lengthdir_y(0, joy_dir);
    }
	var fly_dir = point_direction(0,0,hsp,vsp);
	var fly_dist = point_distance(0,0,hsp,vsp);
	if (fly_dist > 6){
		hsp = lengthdir_x(6, fly_dir);
		vsp = lengthdir_y(6, fly_dir);
        }
	}
	
	if (window == 4 && instance_exists(grabbed_id) && grabbed_id > 0){
		can_move = false;
		can_fast_fall = false;
		var random_pos1 = random_func(0, 50, true);
		var random_pos2 = random_func_2(0, 70, true);
		if (window_timer > 4 && (get_gameplay_time() mod 3) == 0){
			spawn_hit_fx(x + (80 - random_pos1) * spr_dir, y-80 + random_pos2, 303);
		}
		grabbed_id.x = lerp(grabbed_id.x, x+45 * spr_dir, 0.6);
		grabbed_id.y = lerp(grabbed_id.y, y-1 * spr_dir, 0.2);
	}
	
	if (window == 6){
		if (window_timer > 0){
		//var redeyes = spawn_hit_fx(x-5 * spr_dir, y-73, RedEyes);
		//redeyes.force_depth = true;
		//redeyes.depth = depth-10;
		//redeyes.image_alpha += 1;
		}
	}
	
	if (window == 7){
		can_move = false;
		can_fast_fall = false;
		move_cooldown[AT_TAUNT] = 20;
		move_cooldown[AT_FSPECIAL_2] = 50;
		if (window_timer < 14){ spawn_hit_fx(x, y, FSpecial_afterimage); }
		if (window_timer == 0 || window_timer < 4){
			var redeyes = spawn_hit_fx(x+12 * spr_dir, y-73, RedEyes);
			redeyes.force_depth = true;
			redeyes.depth = depth-10;
			//	redeyes.image_alpha += 1;
			//redeyes.image_yscale += 1;
		}
		if (window_timer >= 4 && window_timer < 8){
			var redeyes = spawn_hit_fx(x+12 * spr_dir, y-71, RedEyes);
			redeyes.force_depth = true;
			redeyes.depth = depth-10;
			//	redeyes.image_alpha += 1;
			//redeyes.image_yscale += 1;
		}
		if (window_timer >= 8 && window_timer < 12){
			var redeyes = spawn_hit_fx(x+12 * spr_dir, y-68, RedEyes);
			redeyes.force_depth = true;
			redeyes.depth = depth-10;
			//	redeyes.image_alpha += 1;
			//redeyes.image_yscale += 1;
		}
		/*
		if (window_timer >= 2 && window_timer < 4){
			var redeyes = spawn_hit_fx(x+12 * spr_dir, y-72, RedEyes);
			redeyes.force_depth = true;
			redeyes.depth = depth-10;
			redeyes.image_alpha += 1;
			//redeyes.image_yscale += 1;
		}
		if (window_timer >= 4 && window_timer < 6){
			var redeyes = spawn_hit_fx(x+12 * spr_dir, y-69, RedEyes);
			redeyes.force_depth = true;
			redeyes.depth = depth-10;
			redeyes.image_alpha += 1;
			//redeyes.image_yscale += 1;
		}
		if (window_timer >= 6){
			var redeyes = spawn_hit_fx(x+12 * spr_dir, y-69, RedEyes);
			redeyes.force_depth = true;
			redeyes.depth = depth-10;
			redeyes.image_alpha += 1;
			//redeyes.image_yscale += 1;
		}
		*/
		
		if (window_timer > 3 && window_timer < 7){ 
			if (left_down){ spr_dir = -1; }
			if (right_down){ spr_dir = 1; }
		}
		if (window_timer > 10){
			can_attack = true;
			can_crouch = true;
			can_dash = true;
		}
		if (free == true){ vsp = -25; }
	}
	
	//}

break;
	
	case AT_DSPECIAL: //Aerial
	trigger_b_reverse();
	if (attack_button == 0){
	can_fast_fall = false;
	can_shield = false;
	dspecial_charge = 0;
	move_cooldown[AT_DSPECIAL] = 25;
	var randomsparks = -50 + random_func( 0, 50, true );
	
	if (was_parried == true){
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
	}
	
	if (was_parried == false){
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
		if (instance_exists(dspecial_id) == false){ dspecial_id = noone; }
		
	if (window == 1){
		set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 9);
		
	var fly_dir = point_direction(0,0,hsp,vsp);
    var fly_dist = point_distance(0,0,hsp,vsp);
    if (fly_dist > 1){
    hsp -= lengthdir_x(0.6, fly_dir);
    vsp -= lengthdir_y(0.6, fly_dir);
    if (window_timer == 1){ sound_play(sound_get("uspecial_flyup"), false, noone, 0.8, 1.1); }
    }
    if (window_timer > 6 && free == false){ set_state(PS_WAVELAND); }
	can_move = false; dspecial_id = noone;
	if (state == PS_ATTACK_GROUND){
		window = 3;
		window_timer = -1;
		hsp = 9 * spr_dir;
	}
	if (SuperMecha == false){ move_cooldown[AT_DSPECIAL] = 100; }
	if (SuperMecha == true){ move_cooldown[AT_DSPECIAL] = 10; }
	}
	
	if (dspecial_id > 0 && state_timer == 25 && random_mecha == 2 && voice_clips == true){
		sound_play(sound_get("Mecha_Die"));
		random_mecha = 0;
	}
	
	if (window == 2){
		move_cooldown[AT_DSPECIAL_2] = 50;
		if (instance_exists(dspecial_id) && dspecial_id > 0){ soft_armor = 100; }
		if (free == false && dspecial_id < 0){
		if (abs(hsp) < abs(vsp)){ attack = AT_DSPECIAL_2; window = 4; window_timer = 0; }
		if (abs(hsp) > abs(vsp)){ attack = AT_DSPECIAL_2; window = 4; window_timer = 0; }
		}
		if (window < 6 && place_meeting( x + 10 * spr_dir, y - 20, asset_get("par_block")) && cling_once == 0){
		window = 6; window_timer = 0;
		spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		cling_once = 1;
		}
	}
	
	if (window == 3){
		can_move = false;
		if (state == PS_ATTACK_GROUND){
		    //draw_y = -2;
			if (state_timer < 48){
			spawn_hit_fx( x-12 * spr_dir, y-53, Skrt);
			sound_play(sound_get("skrt"));
			}
		}
		if (free == true){
		if ( (place_meeting( x + 5 * spr_dir, y - 10, asset_get("par_block"))) && cling_once == 0) {
		window = 6; window_timer = 0;
		spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		cling_once = 1;
		}
		if (abs(hsp) < abs(vsp)){ vsp -= 1; hsp -= 1 * spr_dir; }
		if (abs(hsp) > abs(vsp)){ vsp -= 0.1; hsp -= 0.2 * spr_dir; }
		}
	}
	if (window == 4){
		if (hsp == 0 && vsp >= 0.1 && cling_once == 0){
			window = 6;
			window_timer = 0;
			cling_once = 1;
		}
	}
	if (window <= 4){
		if (free == true){
		grounded = 0;	
		}
		if (free == false){
			grounded += 1;
			if (grounded == 1 && dspecial_id > 0){
				spawn_hit_fx(x+20 * spr_dir, y-25, Burst_Trail_End);
				if (get_player_color(player) != 8){ sound_play(sound_get("dspecial_hitground")); }
				if (get_player_color(player) == 8){ sound_play(sound_get("EA_dspecial_land")); }
			}
		}

		if (dspecial_id > 0){
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 10;
			dspecial_id.hitstop_full = 1;
		if (hitpause == false){
			dspecial_id.x = x + 4 * spr_dir;
			dspecial_id.y = y - dspecial_id.char_height * 0.10;
			if (state == PS_ATTACK_GROUND){
			var randomfire = -50 + random_func( 0, 50, true );
			if ((get_gameplay_time() mod 5) == 0){ create_hitbox(AT_DSPECIAL, 6, x, y); }
			if ((get_gameplay_time() mod 1) == 0){ spawn_hit_fx(x+50 * spr_dir, y+20 + randomfire, 100); }
			if (window_timer > 6 && SuperMecha == false){
				window = 5;
				window_timer = 0;
				}
			}
			
			if (free == true){
			var mydir = point_direction(hsp,vsp,0,0);
			var fire_afterimage = spawn_hit_fx(x-50 * spr_dir, y-55, Burst_Tail);
			fire_afterimage.draw_angle = 320 * spr_dir;
			}
			
			var floor_distance;
			for (var i = 0; i < 1; i++;) {
			floor_distance = y + (100);
			
			if (state == PS_ATTACK_AIR && window_timer > 10	
			&& !( place_meeting( x, floor_distance, asset_get("par_block"))) ){
			window = 5;
			window_timer = 0;
					}
				}
			}
		}
	}
	if (window == 4 && window_timer > 11 && dspecial_id < 0){
		window = 5;
		window_timer = 0;
	}
	if (window == 6){
		djumps = 0;
		walljump_hsp = 8;
		walljump_vsp = 9;
		if (has_walljump){ cling_once = 2; }
		if (window_timer <= 1){
			move_snap(32, 0);
		}
		if (window_timer >= 12 && (jump_pressed || (tap_jump_pressed && can_tap_jump())) ){
		state = PS_WALL_JUMP;
		state_timer = 0;
		spr_dir = spr_dir * -1;
		clear_button_buffer( PC_JUMP_PRESSED );
		move_cooldown[AT_USPECIAL] = 20;
		move_cooldown[AT_USPECIAL_2] = 20;
		move_cooldown[AT_DSPECIAL] = 30;
		}
		can_move = false;
		can_jump = false;
		if (dspecial_id > 0 && instance_exists(dspecial_id) == true && hsp == 0){
			dspecial_id.y = y-1;
			dspecial_id.x = x + 5 * spr_dir;
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 1;
			dspecial_id.hitstop_full = 5;
			if (window_timer >= 30){
				state = PS_DOUBLE_JUMP;
				vsp = -8;
				hsp = -6 * spr_dir;
				dspecial_id.vsp = -6;
			}
			can_special = true;
			}
		}
	}
	
	if (window == 10){
	set_window_value(AT_DSPECIAL, 13, AG_WINDOW_VSPEED, 27);
	set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HSPEED, 27);
	can_move = false; dspecial_id = noone;
	var fly_dir = point_direction(0,0,hsp,vsp);
    var fly_dist = point_distance(0,0,hsp,vsp);
    if (fly_dist > 1){
    hsp -= lengthdir_x(1, fly_dir)
    vsp -= lengthdir_y(1, fly_dir);
    if (window_timer == 1){ sound_play(sound_get("uspecial_flyup"), false, noone, 0.8, 1.1); }
    }
    if (window_timer > 6 && free == false){ window = 3; window_timer = -1; }
    if (SuperMecha == false){ move_cooldown[AT_DSPECIAL] = 100; }
    if (SuperMecha == true){ move_cooldown[AT_DSPECIAL] = 10; }
    	if (state == PS_ATTACK_GROUND){
    		destroy_hitboxes();
    		attack = AT_DSPECIAL_2;
    		window = 10;
    		window_timer = 0;
    	}
	}
	
	if (dspecial_id > 0 && state_timer == 25 && random_mecha == 2 && voice_clips == true){
		sound_play(sound_get("Mecha_Die"));
		random_mecha = 0;
	}
	
	if (window == 11){
		cling_once = 0;
		move_cooldown[AT_DSPECIAL_2] = 50;
		if (free == false && dspecial_id < 0){
		if (abs(hsp) < abs(vsp)){ attack = AT_DSPECIAL_2; window = 14; window_timer = 0; destroy_hitboxes(); }
		if (abs(hsp) > abs(vsp)){ attack = AT_DSPECIAL_2; window = 14; window_timer = 0; destroy_hitboxes(); }
		}
		if (window < 15 && place_meeting( x + 10 * spr_dir, y - 20, asset_get("par_block")) && cling_once == 0){
		window = 15; window_timer = 0;
		//spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		cling_once = 1;
		destroy_hitboxes();
		}
		if (instance_exists(dspecial_id) && dspecial_id > 0){ soft_armor = 100; }
		if (state == PS_ATTACK_AIR && dspecial_id < 0){
		if ((get_gameplay_time() mod 5) == 0){
			var burst = spawn_hit_fx(x+25 * spr_dir, y-40, SuperMechaBurst);
			burst.draw_angle = -45 * spr_dir;
			burst.force_depth = true;
			burst.depth = depth-2;
		}
		var burstTrail = spawn_hit_fx(x-15 * spr_dir, y-45, Burst_Tail2);
		burstTrail.draw_angle = -45 * spr_dir;
		//burstTrail.force_depth = true;
		//burstTrail.depth = depth-1;
		white_flash_timer = 5;
		}
	}
	
	if (window == 12){
		can_move = false;
		if (free == false && dspecial_id < 0){
		if (abs(hsp) < abs(vsp)){ attack = AT_DSPECIAL_2; window = 14; window_timer = 0; }
		if (abs(hsp) > abs(vsp)){ attack = AT_DSPECIAL_2; window = 14; window_timer = 0; }
		}
		if (state == PS_ATTACK_GROUND){
		    //draw_y = -2;
			if (state_timer < 48){
			spawn_hit_fx( x-12 * spr_dir, y-53, Skrt);
			sound_play(sound_get("skrt"));
			}
		}
		if (free == true){
		if ( (place_meeting( x + 5 * spr_dir, y - 10, asset_get("par_block"))) && cling_once == 0) {
		window = 15; window_timer = 0;
		//spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		cling_once = 1;
		}
		if (abs(hsp) < abs(vsp)){ vsp -= 1; hsp -= 1 * spr_dir; }
		if (abs(hsp) > abs(vsp)){ vsp -= 0.1; hsp -= 0.2 * spr_dir; }
		}
	}
	
	if (window == 13){
		if (hsp == 0 && vsp >= 0.1 && cling_once == 0){
			window = 15;
			window_timer = 0;
			cling_once = 1;
		}
		
		if (free == true){ grounded = 0; }
		if (free == false){
			grounded += 1;
			if (grounded == 1 && dspecial_id > 0){
				var SuperSlam = spawn_hit_fx(x+20 * spr_dir, y-25, Burst_Trail_End);
				SuperSlam.uses_shader = false; exit;
				if (get_player_color(player) != 8){ sound_play(sound_get("super_dspecial_groundslam")); }
				if (get_player_color(player) == 8){ sound_play(sound_get("EA_dspecial_land")); }
			}
		}

		if (dspecial_id > 0){
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 10;
			dspecial_id.hitstop_full = 1;
			
			if (hsp == 0 && vsp > 0){
				window = 15;
				window_timer = 0;
			}
		    
		    if (state == PS_ATTACK_GROUND){
		    	if (vsp == 0){
		    var burstTrail = spawn_hit_fx(x-5 * spr_dir, y-25, Burst_Tail2);
			burstTrail.draw_angle = 0;
			if (hitpause == true){ burstTrail.hsp = 10 * spr_dir; }
			//burstTrail.force_depth = true;
			//burstTrail.depth = depth-1;
			if (((get_gameplay_time() mod 17) == 0) && hitpause == false){
			var burst = spawn_hit_fx(x+85 * spr_dir, y-50, SuperMechaBurst);
			burst.draw_angle = 0;
			burst.force_depth = true;
			burst.depth = depth-2;
			create_hitbox(AT_DSPECIAL, 11, x, y);
				if (joy_pad_idle == false){
				if (up_down){
					set_window_value(AT_DSPECIAL, 13, AG_WINDOW_VSPEED, -19);
					set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HSPEED, 19);
				}
				if (left_down){ spr_dir = -1; }
				if (right_down){ spr_dir = 1; }
				
				}
			}
			
		    }
		}
			if (state == PS_ATTACK_AIR){
				if (vsp < 0){
		    var burstTrail = spawn_hit_fx(x+15 * spr_dir, y-35, Burst_Tail2);
			burstTrail.draw_angle = -315 * spr_dir;
			//burstTrail.force_depth = true;
			//burstTrail.depth = depth-1;
			
			if (((get_gameplay_time() mod 16) == 0) && hitpause == false){
			var burst = spawn_hit_fx(x+65 * spr_dir, y-60, SuperMechaBurst);
			burst.draw_angle = -315 * spr_dir;
			burst.force_depth = true;
			burst.depth = depth-2;
			create_hitbox(AT_DSPECIAL, 11, x, y);
					}
				}
				if (vsp > 0){
		    var burstTrail = spawn_hit_fx(x-15 * spr_dir, y-45, Burst_Tail2);
			burstTrail.draw_angle = -45 * spr_dir;
			//burstTrail.force_depth = true;
			//burstTrail.depth = depth-1;
			
			if ((get_gameplay_time() mod 5) == 0){
			var burst = spawn_hit_fx(x+25 * spr_dir, y-40, SuperMechaBurst);
			burst.draw_angle = -45 * spr_dir;
			burst.force_depth = true;
			burst.depth = depth-2;
					}
				}
			}
		}
		
		if (hitpause == true && has_hit == true && window_timer > 7){
			//if (joy_pad_idle == true){
		    //hsp = lengthdir_x(16, fly_dir)
		    //vsp = lengthdir_y(16, fly_dir);
			//}
			if (joy_pad_idle == false){
			if (up_down){
				set_window_value(AT_DSPECIAL, 13, AG_WINDOW_VSPEED, -19);
				set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HSPEED, 19);
			}
			if (left_down){ spr_dir = -1; }
			if (right_down){ spr_dir = 1; }
				}
			}
		
		if (hitpause == false){
			dspecial_id.x = x + 4 * spr_dir;
			dspecial_id.y = y - dspecial_id.char_height * 0.10;
			if (state == PS_ATTACK_GROUND){
			//var randomfire = -50 + random_func( 0, 50, true );
			//if ((get_gameplay_time() mod 5) == 0){ create_hitbox(AT_DSPECIAL, 11, x, y); }
			//if ((get_gameplay_time() mod 1) == 0){ spawn_hit_fx(x+50 * spr_dir, y+20 + randomfire, 100); }
			if (window_timer > 6 && SuperMecha == false){
				window = 14;
				window_timer = 0;
				}
			}
			
			if (free == true){
			//var mydir = point_direction(hsp,vsp,0,0);
			//var fire_afterimage = spawn_hit_fx(x-55 * spr_dir, y-80, Burst_Tail2);
			//fire_afterimage.draw_angle = 320 * spr_dir;
			}
			
			var floor_distance;
			for (var i = 0; i < 1; i++;) {
			floor_distance = y + (100);
			
			if (state == PS_ATTACK_AIR && window_timer > 10
			&& !( place_meeting( x, floor_distance, asset_get("par_block"))) ){
			window = 14;
			window_timer = 0;
			destroy_hitboxes();
				}
			}
		}
	}
	
	if (window == 15){
		djumps = 0;
		walljump_hsp = 8;
		walljump_vsp = 9;
		if (has_walljump){ cling_once = 2; }
		if (window_timer <= 1){
			//move_snap(32, 0);
		}
		
		if ((get_gameplay_time() mod 2) == 0){
			var upskrt = spawn_hit_fx( x-32 * spr_dir, y-32, Skrt);
			upskrt.draw_angle = 270 * spr_dir;
			upskrt.image_yscale = -1;
		}
		
		var wall_distance;
		for (var i = 0; i < 10; i++;) {
			if (spr_dir == 1){ wall_distance = x + (20); }
			if (spr_dir == -1){ wall_distance = x - (20); }
		
		if !(place_meeting( wall_distance, y, asset_get("par_block"))){
			window = 16;
			window_timer = 0;
		}
		if (window_timer >= get_window_value( AT_DSPECIAL, 15, AG_WINDOW_LENGTH )){
			if (place_meeting( wall_distance, y, asset_get("par_block"))){
			window_timer = 1;
			}
		}
		
		}
		
		if (window_timer >= 12 && (jump_pressed || (tap_jump_pressed && can_tap_jump())) ){
		state = PS_WALL_JUMP;
		state_timer = 0;
		spr_dir = spr_dir * -1;
		clear_button_buffer( PC_JUMP_PRESSED );
		move_cooldown[AT_USPECIAL] = 20;
		move_cooldown[AT_USPECIAL_2] = 20;
		move_cooldown[AT_DSPECIAL] = 30;
		}
		can_move = false;
		can_jump = false;
		if (dspecial_id > 0 && instance_exists(dspecial_id) == true && hsp == 0){
			dspecial_id.y = y-1;
			dspecial_id.x = x + 5 * spr_dir;
			dspecial_id.hitpause = true;
			dspecial_id.hitstop = 1;
			dspecial_id.hitstop_full = 5;
			if (window_timer >= 30){
				state = PS_DOUBLE_JUMP;
				vsp = -8;
				hsp = -6 * spr_dir;
				dspecial_id.vsp = -6;
			}
			can_special = true;
		}
	}
	
	if (window == 16){
		if (dspecial_id > 0){
			white_flash_timer += 3;
			window = 17;
			window_timer = 0;
		}
	}
	
	if (window == 17){
		if (dspecial_id > 0 && instance_exists(dspecial_id)){
			x = lerp(x, dspecial_id.x + (10 * spr_dir), 0.09);
			y = lerp(y, dspecial_id.y-90, 0.1);
		}
	}
	
	}
	
	if (attack_button == 1){
		can_fast_fall = false;
		can_shield = false;
		can_shield = false;
		if (window == 1){
			set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 9);
			
		var fly_dir = point_direction(0,0,hsp,vsp);
	    var fly_dist = point_distance(0,0,hsp,vsp);
	    if (fly_dist > 1){
	    hsp -= lengthdir_x(0.6, fly_dir);
	    vsp -= lengthdir_y(0.6, fly_dir);
	    if (window_timer == 1){ sound_play(sound_get("uspecial_flyup"), false, noone, 0.8, 1.1); }
	    }
	    if (window_timer > 6 && free == false){ set_state(PS_WAVELAND); }
		can_move = false; dspecial_id = noone;
		if (state == PS_ATTACK_GROUND){
			window = 3;
			window_timer = -1;
			hsp = 9 * spr_dir;
		}
		if (SuperMecha == false){ move_cooldown[AT_DSPECIAL] = 100; }
		if (SuperMecha == true){ move_cooldown[AT_DSPECIAL] = 10; }
		}
		
		if (window == 2){
		move_cooldown[AT_DSPECIAL_2] = 50;
		if (free == false && dspecial_id < 0){
		if (abs(hsp) < abs(vsp)){ attack = AT_DSPECIAL_2; window = 4; window_timer = 0; }
		if (abs(hsp) > abs(vsp)){ attack = AT_DSPECIAL_2; window = 4; window_timer = 0; }
		}
		if (window < 6 && place_meeting( x + 10 * spr_dir, y - 20, asset_get("par_block")) && cling_once == 0){
		window = 6; window_timer = 0;
		spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		cling_once = 1;
			}
		}
		
		if (window == 3){
		can_move = false;
		if (state == PS_ATTACK_GROUND){
		    //draw_y = -2;
			if (state_timer < 48){
			spawn_hit_fx( x-12 * spr_dir, y-53, Skrt);
			sound_play(sound_get("skrt"));
			}
		}
		if (free == true){
		if ( (place_meeting( x + 5 * spr_dir, y - 10, asset_get("par_block"))) && cling_once == 0) {
		window = 6; window_timer = 0;
		spawn_hit_fx(x+20 * spr_dir, y-25, 193);
		cling_once = 1;
		}
		if (abs(hsp) < abs(vsp)){ vsp -= 1; hsp -= 1 * spr_dir; }
		if (abs(hsp) > abs(vsp)){ vsp -= 0.1; hsp -= 0.2 * spr_dir; }
			}
		}
		
		if (window == 6){
		djumps = 0;
		walljump_hsp = 8;
		walljump_vsp = 9;
		if (has_walljump){ cling_once = 2; }
		if (window_timer <= 1){
			move_snap(32, 0);
		}
		if (window_timer >= 12 && (jump_pressed || (tap_jump_pressed && can_tap_jump())) ){
		state = PS_WALL_JUMP;
		state_timer = 0;
		spr_dir = spr_dir * -1;
		clear_button_buffer( PC_JUMP_PRESSED );
		move_cooldown[AT_USPECIAL] = 20;
		move_cooldown[AT_USPECIAL_2] = 20;
		move_cooldown[AT_DSPECIAL] = 30;
			}
		}
		can_move = false;
		can_jump = false;
		
		if (window < 4){
			if (has_hit == true && hitpause == false){
			window = 4;
			window_timer = 0;
			vsp = -10;
			hsp = -10 * spr_dir;
			}
		}
	}
	
break;
	
	case AT_DSPECIAL_2: //Grounded 
	if (was_parried == false){
	can_fast_fall = false;
	if (get_player_color(player) != 8){ var dspecial_charge_sound = sound_get("dspecial_charge"); }
	if (get_player_color(player) == 8){ var dspecial_charge_sound = sound_get("EA_dspecial_charge"); }
		if (window == 1){
			set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
			if (window_timer == 2){
				sound_play(dspecial_charge_sound);
			}
			dspecial_charge = 0;
			can_shield = false;
			
			//Mecha changes his voice line when over 100%:
			if (get_player_damage( player ) >= 100) {
			set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("Mecha_LiveLongEnough"));
			} else {
			set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("Mecha_EAUH"));
			}
			
		}
		if (window > 2){ sound_stop(dspecial_charge_sound); }
		if (window == 2 && window_timer > 10 && free == true){
			vsp = -11; hsp = hsp / 5; window = 20; window_timer = 0;
			var jumpout = spawn_hit_fx(x-20, y, Shockwave);
			jumpout.draw_angle = 90;
			sound_stop(dspecial_charge_sound);
		}
		if (window == 2){
			force_depth = true;
			depth = depth-1;
			if ((get_gameplay_time() mod 7) == 0){ create_hitbox(AT_DSPECIAL_2, 6, x-8 * spr_dir, y-45); }
			if (special_down == false && state_timer > 25 || timestop == true){
				window = 4; window_timer = -1;
				set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 10 + (dspecial_charge / 3));
			}
			if (window_timer == 2){ dspecial_charge += 1; }
	        if (dspecial_charge >= 18){
	        	window = 6;
	        	window_timer = 0;
	        	timestop_ready = true;
	        }
		}
		if (window == 3){
			if (dspecial_charge > 0){ dspecial_charge -= 1; }
			if (state == PS_ATTACK_GROUND && ((window_timer mod 4) == 0)) { spawn_hit_fx( x-25 * spr_dir, y-52, Skrt); }
		}
		if (window == 4){
			if (state == PS_ATTACK_GROUND && ((get_gameplay_time() mod 4) == 0)){
				spawn_hit_fx( x-20 * spr_dir, y-53, Skrt);
			}
			
			dspecial_charge = 0;
			timestop_ready = false;
			set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 11 + (dspecial_charge / 1));
			if (((window_timer mod 3) == 0) && hitpause == false){ create_hitbox(AT_DSPECIAL_2, 5, x, y); }
	        if (left_down && spr_dir == 1 && window_timer > 5 && window_timer < 10 && move_cooldown[AT_DSPECIAL_2] < 1){
	        	move_cooldown[AT_DSPECIAL_2] = 40;
	            window = 3;
	            spr_dir = -1;
	            window_timer = 0;
	            destroy_hitboxes();
	        }
	        if (right_down && spr_dir == -1 && window_timer > 5 && window_timer < 15 && move_cooldown[AT_DSPECIAL_2] < 1){
	        	move_cooldown[AT_DSPECIAL_2] = 40;
	            window = 3;
	            spr_dir = 1;
	            window_timer = 0;
	            destroy_hitboxes();
	        }
	        if (joy_pad_idle == false && window_timer >= get_window_value( AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH )){ window = 4; window_timer = 1; }
	        if (state_timer > 90 && jump_pressed || (tap_jump_pressed && can_tap_jump() )){
	        	window = 5;
	        	window_timer = 1;
	        	vsp -= 4;
	        }
		}
		if (window == 5){
			can_shield = false;
			dspecial_charge = 0;
		}
		if (window == 6){
			timestop_amount = 90;
			timestop_time = 0;
			hit_player_obj = noone;
			prevous_x = x;
			prevous_y = y;
			prevous_spr = spr_dir;
			if (window_timer == 1){
			loopingwindow = 50;
			timestop = true;
			timestop_BG = instance_create(x, y-10, "obj_article1");
			timestop_BG.state = 5;
			timestop_BG.state_timer = 0;
			timestop_BG.image_alpha = 0;
			}
			if (loopingwindow > 0 && window_timer >= 18){
				window_timer = 18;
				loopingwindow--;
				white_flash_timer += 1.3;
			}
			if (loopingwindow == 0 && window_timer >= get_window_value( AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH )){
				window = 7; window_timer = 0;
			}
		}
		if (window == 7){
			if (timestop_BG > 0 && window_timer == 1 && instance_exists(asset_get("camera_obj")) ){
			timestop_BG.image_alpha = 1;
				}
			}
		if (window == 8){
			white_flash_timer = 10;
			draw_indicator = false;
			x = prevous_x + 90 * spr_dir;
			y = prevous_y;
			set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 0);
			}
		if (window == 9){
			if ( (hsp < -1 && spr_dir == 1 || hsp > 1 && spr_dir == -1) && ((get_gameplay_time() mod 3 / abs(hsp)) == 0)){
			spawn_hit_fx( x-20 * spr_dir, y-54, Skrt);
				}
			}
		if (window > 9 && window < 13){ can_move = false; off_edge = false; }
		
		//Super Mecha Chaos Blast timing stuff
		if (window == 10){
			if ((get_gameplay_time() mod 2) == 0){
			ChaosBlast = 1;
			}
		}
		
		if (voice_clips == true){
		if (window == 10 && window_timer == 2 && hitpause == false){
			sound_play(sound_get("Mecha_Chaos"));
		}
		if (window == 12 && window_timer == 5 && hitpause == false){
			sound_play(sound_get("Mecha_Blast"));
			}
		}
		
		if (window == 14){
			if (has_hit || last_player_id > 0){ destroy_hitboxes(); }	
		}
		
	}
break;

	case AT_TAUNT:
	if (get_player_color(player) != 8){ var charge_loop = (sound_get("charge_loop")); }
	if (get_player_color(player) == 8){ var charge_loop = (sound_get("EA_charge_loop")); }
	move_cooldown[AT_TAUNT] = 100;
	//attack = AT_TAUNT_2; window = 1; window_timer = -1;
	if (window == 1 || window == 2 && window_timer < 5){
		can_taunt = false;
		can_dash = true;
		can_attack = true;
		can_special = true;
		can_shied = true;
		
		set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
	}
	if (window == 2 && window_timer > 4){ TauntSuper = 300; }
	if (window == 1 && EmeraldAmount == 4 && SuperMecha == false && emerald_hud == true){ attack = AT_TAUNT_2; window = 1; window_timer = -1; }
	
	//if (window == 2 && window_timer < 7 && taunt_down && SuperMecha == false){ SuperMecha = true; white_flash_timer = 10; move_cooldown[AT_TAUNT_2] = 900; }
	//^ Super Debug ^
	
	if (window == 3){
		can_dash = false;
		if (voice_clips == true && window_timer == 1 && move_cooldown[AT_EXTRA_1] <= 1){
			if (get_player_color(player) != 8){ sound_play(sound_get("Mecha_Crush")); }
		}
		if (window_timer == 1 && move_cooldown[AT_EXTRA_1] > 1){
			//Skipping whole thing if they are trying to refresh Foresight
			sound_play(sound_get("S3&K_charge"));
			window = 5;
			window_timer = 1;
			move_cooldown[AT_EXTRA_1] = 90;
		}
	}
	if(window == 5){
	TauntSuper = 180;
	if (window_timer >= get_window_value( AT_TAUNT, 5, AG_WINDOW_LENGTH ) ){
		//if (window_timer == 1 && move_cooldown[AT_EXTRA_1] > 10){ move_cooldown[AT_EXTRA_1] = 9; }
		if (taunt_down){
			window = 3;
			window_timer = 2;
			}
		}
	if (window_timer == 9 && move_cooldown[AT_EXTRA_1] == 0){ sound_stop(charge_loop); sound_play(charge_loop); }
	}
	
	if (window == 6 && move_cooldown[AT_EXTRA_1] == 0){ TauntElec = 170; }
break;

	case AT_TAUNT_2:
	can_fast_fall = false;
	suppress_stage_music();
	soft_armor = 100;
	hitpause = false;
	hitstop = 0;
	if ( (place_meeting( x, y+1, asset_get("par_block")) ) || (place_meeting( x, y+1, asset_get("par_jumpthrough")) ) )  {
		if (state_timer < 50 && ((get_gameplay_time() mod 7) == 0)){
	spawn_base_dust(x-40, y, "dash", 1);
	spawn_base_dust(x+40, y, "dash", -1);
	spawn_base_dust(x-20 - (state_timer * spr_dir), y, "wavedash", 1);
	spawn_base_dust(x+20 + (state_timer * spr_dir), y, "wavedash", -1);
	//spawn_base_dust(x+90, y, "wavedash");
	spawn_base_dust(x, y, "n_wavedash");
		}
	}
	
	if (window == 1){ move_cooldown[AT_TAUNT_2] = 3220; }
	if (window < 4){ can_move = false; }
	if (window == 3){
		if (window_timer == 1){
		spawn_hit_fx( x-252 * spr_dir, y-284, TauntAura); 
		sound_play(sound_get("SuperMecha_flyingup"));
		}
		if (window_timer > 39){
			SuperMecha = true;
			initial_dash_speed = 13; //originally 9
			initial_dash_time = 4; //originally 10
			dash_speed = 14; //originally 10
			dash_turn_time = 7; //originally 16
			fast_fall = 20; //originally 16
			leave_ground_max = 11; //originally 8
			short_hop_speed = 9; //originally 6
			djump_speed = 13; //originally 10
			air_accel = .45; //originally .25
			wave_land_adj = 0.1; //originally 1.0
			
		}
	}
	if (window == 4 && window_timer >= 90){ window = 10; window_timer = -1; }
	//Not a window, just so he is set free
	
case AT_FTHROW: //Yeah Taunt

	if (window == 1 && window_timer == 1){
		EmeraldAmount += 1;
	}

break;
	
break;

	case AT_EXTRA_1: //Foresight
	can_move = false;
	has_airdodge = false;
	go_through = true;
	if (SuperMecha == false){ move_cooldown[AT_EXTRA_1] = 99999; }
	//if (SuperMecha == true){ create_hitbox(AT_EXTRA_1, 1, hit_player_obj.x, hit_player_obj.y-15); }
	if (SuperMecha == true && window < 3){ create_hitbox(AT_EXTRA_1, 1, x-15, y-15); }
	draw_indicator = false;
	
	if (down_down){ fall_through = true; }
	if (window == 1){
	if (joy_pad_idle == true){
    var fly_dir = point_direction(0,0,hsp,vsp);
    var fly_dist = point_distance(0,0,hsp,vsp);
    hsp = lengthdir_x(16, fly_dir)
    vsp = lengthdir_y(16, fly_dir);
	}
	if (joy_pad_idle == false){
    hsp = lengthdir_x(18, joy_dir)
    vsp = lengthdir_y(18, joy_dir);
		}
	}
    if (window == 2){
    invincible = true;
    invincible_time = 20;
	var fly_dir = point_direction(0,0,hsp,vsp);
    var fly_dist = point_distance(0,0,hsp,vsp);
    hsp = lengthdir_x(1, fly_dir)
    vsp = lengthdir_y(1, fly_dir);
    
    if (random_mecha == 2 && voice_clips == true){
	sound_play(sound_get("Mecha_heh"));
	random_mecha = 0;
    	}
    }
    if (window == 3){
    invincible = true;
    invincible_time = 20;
	var fly_dir = point_direction(0,0,hsp,vsp);
    var fly_dist = point_distance(0,0,hsp,vsp);
    hsp = lengthdir_x(3, fly_dir)
    vsp = -6;
    set_state(PS_WAVELAND);
    }
break;
	
	case AT_EXTRA_2: //Not needed anymore (was super dash)
break;
	
	case AT_EXTRA_3:
	hud_offset = -18;
	can_jump = true;
	can_attack = true;
	can_special = true;
	can_move = false;
	can_dash = true;
	go_through = true;
	dashing = false;
    if (voice_clips == true && (state_timer % 12 == 1) && (get_player_color(player) != 8) ) { sound_play(sound_get("S3&K_beep1"), false, noone, 0.3, 1); }
    if ( (get_player_color(player) == 8) && (state_timer % 12 == 1) ) { sound_play(sound_get("EA_beep"), false, noone, 0.3, 1); }
	if (window_timer <= 2 && ( (hsp < -10 && spr_dir == -1 || hsp > 10 && spr_dir == 1)) ){ hsp = hsp + 2 * spr_dir; }
	if (joy_pad_idle == true || hsp == 0 || window_timer >= 99){
		window = 3;
		crouch_dash = 2;
	}
	if ( (hsp < -1 && spr_dir == 1 || hsp > 1 && spr_dir == -1) && ((get_gameplay_time() mod 3 / abs(hsp)) == 0)){
		spawn_hit_fx( x-20 * spr_dir, y-54, Skrt);
	}
break;


	case AT_NTHROW:
	//Not a thing, just here so I can collapse the last case
	break;
}

if (SuperMecha == false){
	//So far high up it's not gonna hit anyone for the time being
	set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -90000);
	set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -90000);
	set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -90000);
	set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -90000);
	set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -90000);
	set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -90000);
	set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_Y, -90000);
}

if (SuperMecha == true){
	set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_Y, -32);
	
	
	if (last_player_id > 0 && hitpause == false){
		can_jump = true;
		djumps = 0;
		has_walljump = true;
		has_airdodge = true;
	}
	if (attack == AT_DATTACK){
		soft_armor = 100;
		if (window == 1 && window_timer < 2 || window == 7){ retaliate_id = noone; }
		if (window < 7){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
	}
	if (attack == AT_JAB){
		soft_armor = 100;
		if (window == 1 && window_timer < 2 || window == 7){ retaliate_id = noone; }
		if (window < 7){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
	}
	if (attack == AT_UAIR){
		soft_armor = 100;
		if (window == 1 && window_timer < 2 || window == 4){ retaliate_id = noone; }
		if (window < 3){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			y = lerp(y, retaliate_id.y + retaliate_id.char_height * 0.2, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
	}
	if (attack == AT_FAIR){
		soft_armor = 100;
		if (window == 1 && window_timer < 2 || window == 3){ retaliate_id = noone; }
		if (window < 3){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			y = lerp(y, retaliate_id.y, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
	}
	if (attack == AT_DAIR){
		soft_armor = 100;
		if (window == 1 && window_timer < 2 || window == 3){ retaliate_id = noone; }
		if (window < 3){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			y = lerp(y, retaliate_id.y - retaliate_id.char_height * 0.2, 0.1);
			//if (retaliate_id.x > x){ spr_dir = 1; }
			//if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
	}
	if (attack == AT_BAIR){
		soft_armor = 100;
		if (window == 1 && window_timer < 2 || window == 4){ retaliate_id = noone; }
		if (window < 4){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x+10 * spr_dir, 0.2);
			y = lerp(y, retaliate_id.y - retaliate_id.char_height * 0.3, 0.2);
			if (retaliate_id.x > x){ spr_dir = -1; }
			if (retaliate_id.x < x){ spr_dir = 1; }
			}
		}
	}
	if (attack == AT_NAIR){
		soft_armor = 100;
		if (window < 7){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			y = lerp(y, retaliate_id.y, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
		if (window == 1 && window_timer < 2 || window == 7){ retaliate_id = noone; }
	}
	if (attack == AT_UTILT){
		soft_armor = 100;
		if (window < 4){
			if (retaliate_id > 0){
			x = lerp(x, retaliate_id.x, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
		if (window == 1 && window_timer < 2 || window == 4){ retaliate_id = noone; }
	}
	if (attack == AT_FTILT){
		soft_armor = 100;
		if (attack_button == 0){
		if (window < 3){
			if (retaliate_id > 0){
			//x = lerp(x, retaliate_id.x-10 * spr_dir, 0.01);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
		if (window == 5){
			if (retaliate_id > 0){
			//x = lerp(x, retaliate_id.x-125 * spr_dir, 0.1);
			//if (retaliate_id.x > x){ spr_dir = 1; }
			//if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
		if (window == 1 && window_timer < 2 || window == 3 || window == 4 || window == 5){ retaliate_id = noone; }
		}
	}
	if (attack == AT_DTILT){
		soft_armor = 100;
		if (window < 4){
			if (retaliate_id > 0){
			//x = lerp(x, retaliate_id.x, 0.1);
			if (retaliate_id.x > x){ spr_dir = 1; }
			if (retaliate_id.x < x){ spr_dir = -1; }
			}
		}
		if (window == 1 && window_timer < 2 || window == 4){ retaliate_id = noone; }
	}
}


//Forward Special cancelling
if ( (attack == AT_UTILT && window == 4 && window_timer > 1
||	attack == AT_DTILT && window == 3 && window_timer > 3
|| attack == AT_FTILT && window == 5 && window_timer > 10) && has_hit == true){
	if (special_down && (left_down || right_down) ){
	//hsp = 25 * spr_dir;
	//attack = AT_FSPECIAL_2;
	//window = 6;
	//window_timer =  0;
	}
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	target_number = random_func(0, 7, true);
	target_X_placement = random_func(0, 50, true);
	target_Y_placement = random_func_2(0, 50, true);
}

if (state == PS_RESPAWN){ move_cooldown[AT_EXTRA_1] = 10; }

if (voice_clips == false && (get_player_color(player) != 8) ) { //Sound changes
land_sound = asset_get("sfx_land_heavy");
waveland_sound = sound_get("wavelanding");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
}

//written by supersonic, modified by bar-kun
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}