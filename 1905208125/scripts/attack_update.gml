var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch (attack) {
	case AT_DTILT:
	    if (window != 4 && has_hit_player){
	        can_jump = true;
	    }
	    if (window == 1 && window_timer == window_length) {
	    	create_dust("skid", 18);
	    }
		break;
	case AT_USPECIAL:
		can_wall_jump = true;
	    if (window == 1) {
	    	var lerp_amount = 0.33;
	    	if !joy_pad_idle {
	    		direc -= angle_difference(direc, joy_dir) * lerp_amount;
	        } else { 
	        	direc -= angle_difference(direc, original_uspec_spr_dir == 1 ? 0 : 180) * lerp_amount;
	        }
	    }
	    if (window == 1 && window_timer == window_length) {
	    	if !joy_pad_idle {
	        	direc = joy_dir;
	        } else { 
	        	direc = original_uspec_spr_dir == 1 ? 0 : 180;
	        }
	    	var hyp = 30;
	    	var angle = degtorad(direc);
	    	var adj = hyp * cos(angle);
	    	var opp = hyp * sin(angle);
	        hook = instance_create(floor(x + adj * spr_dir), floor(y - opp) - 40, "obj_article2");
	        sound_play(sound_get("bow_release5"));
	    }
	    if (window == 4 && hitpause == 0 && window_timer > 1) {
	        djumps = 0;
	        if (jump_pressed) {
	        	can_jump = true;
	        	hsp = clamp(hsp,-hook_speed*hook_jump_mult,hook_speed*hook_jump_mult);
	        }
	    }
    	break;
    case AT_NSPECIAL:
		trigger_ult_b_reverse();
		// charge arrow system
	    if (window == 2) {
			shold += 1;
	        if (!special_down || shold >= 50) {
	        	if (sharphits > 0) {
		        	sharphits -= 10;
		        	buffNextHitbox = true;
		        }
		        window = shold > 25 ? (shold >= 50 ? 5 : 4) : 3;
		        window_timer = 0;
	        }
	    }
	    if (window == clamp(window, 3, 5) && window_timer == window_length) {
	    	window = 6;
	    	window_timer = 0;
	    }
    case AT_FSPECIAL:
	    if (window == 2 && window_timer == window_length) {
			move_cooldown[AT_FSPECIAL] = 125;
		}
    	can_wall_jump = true;
    	break;
    case AT_DSPECIAL:
    	if (window == 2) {
    		// buff system
    		sharphits = 20;
    	}
    	break;
    case AT_DATTACK:
    	 if (window == 2 && window_timer < window_length - 1) { //invincibility frames
	        invincible = 1;
	        invince_time = 1;
	        if attack_down && window_timer >= get_window_value(AT_DATTACK,2,AG_WINDOW_LENGTH)/2 {
	            window_timer = 0;
	            window = 3;
	            invincible = 0;
	            invince_time = 0;
			}
	    }
	    break;
	case AT_USTRONG:
		if (window == 2 && window_timer == 1 && sharphits > 0) {
			buffNextHitbox = true;
			sharphits -= 10;
		}
		break;
 
}

// Sets the amount the sharpen buff will give
sharpBuff = sharphits > 0 ? 4 : 0;

/*if (attack == AT_DATTACK) {
    if (window == 2) { //invincibility frames
        invincible = 1;
        invince_time = 1;
    }
    //if (window == 2 && window_timer = get_window_value(AT_DATTACK,2,AG_WINDOW_LENGTH)) { //switch directions
        //spr_dir = -1*left_down+right_down*1+spr_dir*(!(left_down || right_down) || (left_down && right_down));
    //}
}*/
// ---- Rune Code Below ----

//Rune B - DTILT is always jump cancellable.
if ((attack == AT_DTILT || attack == AT_EXTRA_3) && runeB) {
	can_jump = true;
}
//Rune B - DSPECIAL gives more charge
if (attack == AT_DSPECIAL && window == 2 && runeD) {
	sharphits=60;
}
//Rune E - NSPECIAL charges faster
if (attack == AT_NSPECIAL && window == 2 && runeE) {
	shold+=0.5;
}
//secret rune l function because hime needs a jab kill combo hehe
if (attack == AT_JAB && window == 5 && runeL) {
	can_special = true;
}
//Rune M - NSPEC Finisher
if (attack == AT_NSPECIAL && window == 5 && runeM) {
	set_attack(AT_NSPECIAL_2);
}
//Rune O - Taunts heal you significantly.
if runeO {
	if attack == AT_EXTRA_1 {
		if (window == 2 || window == 3) && window_timer == 1 {
			take_damage(player, -1, -10);
		}
	}
	if attack == AT_TAUNT && state_timer == 55 {
		take_damage(player, -1, -10);
	}
}

//this is technically rune L, but runeL's actual function is in set_attack.gml.
if attack == AT_FSPECIAL_2 {
	if window == 1 && window_timer == 3{
		sound_play(sound_get("bebeep"));
		
	}
	if window == 2 && window_timer == 2 {
		sound_play(sound_get("THERE"));
		with asset_get("obj_article1") {
			if player_id == other.id {
				detonate = true;
			}
		}
	}
}

if (attack == skinSelector_attack) {
	if (window == 1 && window_timer == 1) {
		skinSelector_open = true;
		skinSelector_state = 4;
		skinSelector_stateT = 0;
		paletteCheck();
	}
	//SKIN SELECTOR
	if (skinSelector_open) {
		if (skinSelector_spawnmode) {
			with (oPlayer) {
				invincible = true;
				invince_time = 30;
				if (state == PS_SPAWN) {
					spawn_timer = 100;
					state_timer = 90;
				}
				
				if (get_gameplay_time() > 720 && "skinSelector_open" in self && skinSelector_open && skinSelector_state != 5) {
					skinSelector_state = 5;
					skinSelector_stateT = 0;
				}
				if (get_gameplay_time() == 720) sound_play(asset_get("mfx_player_ready"));
			}
		}
		window = 2; window_timer = 0;
		
		switch (skinSelector_state) {
			case 0: //neutral mode
				if (left_down) {
					skinSelector_state = 1;
					skinSelector_stateT = 0;
					sound_play(asset_get("mfx_change_color"));
				} else if (right_down) {
					skinSelector_state = 2;
					skinSelector_stateT = 0;
					sound_play(asset_get("mfx_change_color"));
				}
				
				if (attack_pressed) {
					clear_button_buffer(PC_ATTACK_PRESSED);
					if (skinSelector_chars[@ 2,5] == 0) {
						skinOverridden = true;
						skinOverride = skin;
						init_shader();
						paletteCheck();
						sound_play(asset_get("mfx_confirm"));
					} else {
						sound_play(asset_get("mfx_back"));
					}
				}
				if (special_pressed) {
					//skinSelector_open = false;
					skinSelector_state = 5;
					skinSelector_stateT = 0;
					sound_play(asset_get("mfx_return_cursor"));
				}
				if (skinSelector_stateT%3 == 0){
					paletteCheck(); //check for palettes every so often in case players are changing palettes at the same time.
				}
			break;
			case 1: //switch left
				if (skinSelector_stateT == 11) {
					skinSelector_state = 0;
					skinSelector_stateT = 0;
					skin = skin-1 < 0 ? skinCount-1 : skin-1;
					
					skinSelector_chars = [
					    [skinSelector_strip, (skinCount-1)+skin-1, -120, 0, 0, 0], //farthest l
					    [skinSelector_strip, (skinCount-1)+skin, -60, 0, 0.5, 0], //closest l
					    [skinSelector_strip, skin, 0, 0, 1, 0],  //current
					    [skinSelector_strip, (skin+1)%skinCount, 60, 0, 0.5, 0], //closest r
					    [skinSelector_strip, (skin+2)%skinCount, 120, 0, 0, 0] //farthest r
					    ];
					paletteCheck();
					break;
				}
				
				var horizontalShift = ease_sineOut(0,60,clamp(skinSelector_stateT,0,10),10);
				var reps = 0;
				repeat(5) {
					skinSelector_chars[@ reps,2] = -120+(reps*60)+horizontalShift;
					if (reps == clamp(reps,0,1) ){
						skinSelector_chars[@ reps,4]+=0.05;
					} else {
						skinSelector_chars[@ reps,4]-=0.05;
					}
					reps++;
				}
				
			break;
			case 2: //switch right
				if (skinSelector_stateT == 11) {
					skinSelector_state = 0;
					skinSelector_stateT = 0;
					skin = (skin+1)%skinCount;
					
					skinSelector_chars = [
					    [skinSelector_strip, (skinCount-1)+skin-1, -120, 0, 0, 0], //farthest l
					    [skinSelector_strip, (skinCount-1)+skin, -60, 0, 0.5, 0], //closest l
					    [skinSelector_strip, skin, 0, 0, 1, 0],  //current
					    [skinSelector_strip, (skin+1)%skinCount, 60, 0, 0.5, 0], //closest r
					    [skinSelector_strip, (skin+2)%skinCount, 120, 0, 0, 0] //farthest r
					    ];
					paletteCheck();
					break;
				}
				var horizontalShift = ease_sineOut(0,-60,clamp(skinSelector_stateT,0,10),10);
				var reps = 0;
				repeat(5) {
					skinSelector_chars[@ reps,2] = -120+(reps*60)+horizontalShift;
					if ( reps == clamp(reps,3,4) ){
						skinSelector_chars[@ reps,4]+=0.05;
					} else {
						skinSelector_chars[@ reps,4]-=0.05;
					}
					reps++;
				}
				
			break;
			case 3: //select
			break;
			case 4: //open
				var verticalShift = ease_sineOut(12,0,skinSelector_stateT,6);
				var transparency_mult = ease_sineOut(0,1,skinSelector_stateT,6);
				var reps = 0;
				repeat(5) {
					skinSelector_chars[reps,3] = 0+verticalShift;
					skinSelector_chars[reps,4] = (1-(abs(reps-2)*0.5))*transparency_mult;
					reps++;
				}
				
				if (skinSelector_stateT == 6) {
					skinSelector_state = 0;
					skinSelector_stateT = 0;
				}
			break;
			case 5: //close
				var verticalShift = ease_sineIn(0,12,skinSelector_stateT,6);
				var transparency_mult = ease_sineIn(1,0,skinSelector_stateT,6);
				var reps = 0;
				repeat(5) {
					skinSelector_chars[reps,3] = 0+verticalShift;
					skinSelector_chars[reps,4] = (1-(abs(reps-2)*0.5))*transparency_mult;
					reps++;
				}
				
				if (skinSelector_stateT == 6) {
					skinSelector_state = 0;
					skinSelector_stateT = 0;
					skinSelector_open = false;
					if (skinSelector_spawnmode) {
						set_state(PS_SPAWN);
						spawn_timer = 100;
						state_timer = 90;
					}
				}
		}
		
		skinSelector_stateT++;
	}
}

#define paletteCheck()

var reps = 0;
					
repeat(5) {
	skinSelector_chars[@ reps,5] = 0;
	with (oPlayer) {
		if (url == "1984096324" || url == "1905208125") {
			if ((skinOverridden && skinOverride == other.skinSelector_chars[@ reps,1]%skinCount) 
			|| (!skinOverridden && get_player_color(player) == other.skinSelector_chars[@ reps,1]%skinCount && skinSelector_defaultsEnabled)) {
				other.skinSelector_chars[@ reps,5] = player;
				break;
			}
		}
	}
	reps++;
}

#define trigger_ult_b_reverse

if (left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) && attack_hasBReversed == false {
    hsp*=-1;
    spr_dir*=-1;
    attack_hasBReversed = true;
} else if state_timer == 6 {
    attack_hasBReversed = false;
}

#define create_dust(dust_name, time)

var dust = spawn_dust_fx(x, y, asset_get("fx_" + dust_name + "_bg"), time);
dust.dust_color = 0;
dust.fg_index = asset_get("fx_" + dust_name + "_fg");
return dust;