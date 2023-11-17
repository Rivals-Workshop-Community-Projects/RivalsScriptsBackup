muno_event_type = 1;
	user_event(14);

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
   upb = false;move_cooldown[AT_USPECIAL] = 0;
   DairBounceHits = 0;
}

if(instance_exists(thedice1) && instance_exists(thedice2)){
    move_cooldown[AT_NSPECIAL] = 9999;
}else{
	if(!instance_exists(thedice1) && !instance_exists(thedice2)){
		dicecooldown--;
		dicecooldown = max(0,dicecooldown);
	}
	if(dicecooldown <= 0){
    	move_cooldown[AT_NSPECIAL] = 0;
	}
}
if(instance_exists(thetoken)){
    move_cooldown[AT_FSPECIAL] = 9999;
}else{
	tokencooldown--;
	tokencooldown = max(0,tokencooldown);
	if(tokencooldown <= 0){
    	move_cooldown[AT_FSPECIAL] = 0;
	}
}

BAir_cooldown--;

if(free && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && taunt_pressed){
   set_attack(AT_TAUNT);
}

if(alt == 29){
	if(state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD){
		if(state_timer == 0 && !hitpause){
			sound_play(sound_get("dbz teleport"));
		}
	}
}

if(state == PS_RESPAWN && state_timer >= 80 && state_timer < 120 || state == PS_DEAD && get_player_stocks(player) <= 0){
	if((state == PS_RESPAWN && state_timer % 5 == 0 || state == PS_DEAD && get_player_stocks(player) <= 0 && get_gameplay_time() % 5 == 0) && current_money2 >= current_money){
		sound_play(sound_get("money_pickup2"),false,noone,2)sound_play(sound_get("money_pickup3"),false,noone,2)
		var money = create_hitbox(AT_JAB, 10, round(x), round(y-35));money.hsp = 12-random_func(0, 24, true);money.vsp = -3-random_func(1, 8, true);money.hitbox_timer = 40;money.hit_priority = 0;
		if(current_money2 >= 4200 && current_money2 >= 30000){
			money.value = 4200;current_money2 -= 4200;
		}else if(current_money2 >= 3600 && current_money2 >= 25000){
			money.value = 3600;current_money2 -= 3600;
		}else if(current_money2 >= 3000 && current_money2 >= 20000){
			money.value = 3000;current_money2 -= 3000;
		}else if(current_money2 >= 2400 && current_money2 >= 15000){
			money.value = 2400;current_money2 -= 2400;
		}else if(current_money2 >= 1800){
			money.value = 1800;current_money2 -= 1800;
		}else if(current_money2 >= 1200){
			money.value = 1200;current_money2 -= 1200;
		}else{
			current_money2 -= 600;
		}
	}
}

if(state == PS_WAVELAND && state_timer == 0 && !hitpause){
	rand = random_func(0, 4, true);
    if(rand == 0){
    	PlayVoiceClip("very", 0.65);
    }else if(rand == 1){
    	PlayVoiceClip("skillful", 0.65);
    }else if(rand == 2){
    	PlayVoiceClip("skill", 0.85);
    }else if(rand == 3){
    	PlayVoiceClip("money5", 0.85);
    }
}

//gain money on kill. very skillful!
with(oPlayer){
    if(id != other.id){
        if((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 1 && !hitpause){
            with(other){
                if(hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 && hit_player_obj != self){
                    sound_play(sound_get("soldsfx"),false,noone,1.5);
                    current_money += 5000*income_boost;
                }
            }
        }
    }
}

//failsafe for uspecial mask not being reset
if(uspec_mask && ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_USPECIAL || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR))){
	mask_index = asset_get("ex_guy_collision_mask");
	uspec_mask = false;
}

//special alt things
if(detish_alt || sketish_alt){
	init_shader();
}

if(!loaded){
	/*if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
		trainingmode = true;
	}*/
	
	/*with(oPlayer){
		other.playercount += 1;
	}*/
	
	phone.utils_cur[phone.UTIL_FPS_WARN] = false;phone.utils_cur_updated[phone.UTIL_FPS_WARN] = true;
	loaded = true;
}

if(get_gameplay_time() <= 120){
	if(taunt_pressed && !muted){
		muted = true;
	}
	playercount = 0;
	with(oPlayer){ if(is_player_on(player)){ other.playercount++;}}
}
if(get_gameplay_time() <= 120 || kewtmode == 1){
	if(shield_pressed && kewtmode <= 0 || kewtmode == 1){
		kewtmode = 2;
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt"));
		if(alt != 0){
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt_golden_alts"));
		}else{
			set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("tokens_kewt_golden"));
		}
		sound_play(sound_get("big"));
	}
}

if(phone_cheats_updated[CHEAT_Money]){
	current_money = phone_cheats[CHEAT_Money]*10000;
	if(phone_cheats[CHEAT_Money] != 11){
    	phone_cheats_updated[CHEAT_Money] = 0;
	}else{
		current_money = 999999;
	}
}
if(phone_cheats[CHEAT_JailCard] == 1){
	jailcard = true;
}

if(playercount > 1 && get_gameplay_time() > 120){
	if(get_gameplay_time() % 120 == 0 || get_game_timer() <= 0 || diedienow >= playercount-1){
		if(get_player_stocks(player) >= 1){
			diedienow = 0;
			if(diedienowP1 || get_player_stocks(1) <= 0 || get_player_team(1) == get_player_team(player) && is_player_on(1)){
				diedienow += 1;diedienowP1 = true;
			}if(diedienowP2 || get_player_stocks(2) <= 0 || get_player_team(2) == get_player_team(player) && is_player_on(2)){
				diedienow += 1;diedienowP2 = true;
			}if(diedienowP3 || get_player_stocks(3) <= 0 || get_player_team(3) == get_player_team(player) && is_player_on(3)){
				diedienow += 1;diedienowP3 = true;
			}if(diedienowP4 || get_player_stocks(4) <= 0 || get_player_team(4) == get_player_team(player) && is_player_on(4)){
				diedienow += 1;diedienowP4 = true;
			}
			//print(playercount);print(diedienow);
			
			if ((get_game_timer() <= 0 || diedienow >= playercount) && notmuchtimeleft < 10) { //match done
				if (get_game_timer() <= 0) {
				    sound_stop(voice);voice = sound_play(sound_get("lets see how you did"));
				}else{
					rand = random_func(0, 6, true);
		    		if(rand == 0){
		    			sound_stop(voice);voice = sound_play(sound_get("very skillful"));
		    		}else if(rand == 1){
		    			sound_stop(voice);voice = sound_play(sound_get("congratulations"));
		    		}else if(rand == 2){
		    			sound_stop(voice);voice = sound_play(sound_get("congratulations 2"));
		    		}else if(rand == 3){
		    			sound_stop(voice);voice = sound_play(sound_get("monopoly byebyenow"));
		    		}else if(rand == 4){
		    			sound_stop(voice);voice = sound_play(sound_get("gottem"));
		    		}else if(rand == 5){
				    	rand = random_func(1, 4, true);
				    	if(rand == 0){
					    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh"));
					    }else if(rand == 1){
					    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 2"));
					    }else if(rand == 2){
					    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 3"));
					    }else if(rand == 3){
					    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 4"));
					    }
				    }
				}
			    notmuchtimeleft = 10;
			}else if (get_game_timer() < (60*60) && notmuchtimeleft < 3) { //1 min
			    sound_stop(voice);voice = sound_play(sound_get("hurry up"));notmuchtimeleft = 3;
			}else if (get_game_timer() < (120*60) && notmuchtimeleft < 2) { //2 min
			    sound_stop(voice);voice = sound_play(sound_get("hurry"));notmuchtimeleft = 2;
			}else if (get_game_timer() < (180*60) && notmuchtimeleft < 1) { //3 min
			    sound_stop(voice);voice = sound_play(sound_get("not much time left"));notmuchtimeleft = 1;
			}
		}
	}
}

if(finalsmashtimer > 0){
	if(finalsmashnum == 0){ //dices
		if(finalsmashtimer % 15 == 0){
			var dice = create_hitbox(AT_NSPECIAL, 1, round(room_width/2)-500+random_func(0, 1000, true), -500);create_hitbox(AT_NSPECIAL, 2, round(room_width/2)-500+random_func(0, 1000, true), -500);
			dice.hsp = -2+random_func(0, 5, true);dice.vsp = 8;
		}
	}else if(finalsmashnum == 1){ //tokens
    	if(finalsmashtimer % 15 == 0){
			var token = create_hitbox(AT_FSPECIAL, 1+random_func(3, 2, true), round(room_width/2)-500+random_func(0, 1000, true), -500);create_hitbox(AT_NSPECIAL, 2, round(room_width/2)-500+random_func(0, 1000, true), -500);
			token.hsp = -2+random_func(0, 5, true);token.vsp = 8;
		}
	}else if(finalsmashnum == 2){ //property
    	if(finalsmashtimer % 40 == 0){
			var house = create_hitbox(AT_DSPECIAL, 1+random_func(3, 3, true), round(room_width/2)-500+random_func(0, 1000, true), -500);
			house.vsp = 20;
		}
		
		if(finalsmashtimer % 40 == 0){
			var dice = create_hitbox(AT_NSPECIAL, 1, round(room_width/2)-500+random_func(0, 1000, true), -500);create_hitbox(AT_NSPECIAL, 2, round(room_width/2)-500+random_func(0, 1000, true), -500);
			dice.hsp = 2-random_func(0, 5, true);dice.vsp = 8;
		}
		
		if(finalsmashtimer % 50 == 0){
			var token = create_hitbox(AT_FSPECIAL, 1+random_func(3, 2, true), round(room_width/2)-500+random_func(0, 1000, true), -500);create_hitbox(AT_NSPECIAL, 2, round(room_width/2)-500+random_func(0, 1000, true), -500);
			token.hsp = 2-random_func(0, 5, true);token.vsp = 8;
		}
	}
	
	finalsmashtimer -= 1;
	invincible = true;invince_time = 4;
}

if ((runesUpdated || get_match_setting(SET_RUNES)) && !runesUpdated2) {
	if (has_rune("A") || runeA) {
		runeA = true;
		current_money = 40000;current_money2 = 40000;
	}if (has_rune("B") || runeB) {
		runeB = true;
	}if (has_rune("C") || runeC) {
		runeC = true;
		discount = 0.5;
	}if (has_rune("D") || runeD) {
		runeD = true;
		income_boost = 2;
	}if (has_rune("E") || runeE) {
		runeE = true;
	}if (has_rune("F") || runeF) {
		runeF = true;
	}
	
	if (has_rune("G") || runeG) {
		runeG = true;
	}if (has_rune("H") || runeH) {
		runeH = true;
	}if (has_rune("I") || runeI) {
		runeI = true;
	}if (has_rune("J") || runeJ) {
		runeJ = true;
	}if (has_rune("K") || runeK) {
		runeK = true;
	}
	if (has_rune("L") || runeL) {
		runeL = true;
	}if (has_rune("M") || runeM) {
		runeM = true;
		discount_stocks = 50000;
	}
	
	runesUpdated = false;
	runesUpdated2 = true;
}
if(runeE){
	if(get_gameplay_time() % 300 == 0){
		sound_play(sound_get("soldsfx"),false,noone,1.5);spawn_hit_fx(round(x), round(y), 304);
    	current_money += 3000*income_boost;
	}
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	//}