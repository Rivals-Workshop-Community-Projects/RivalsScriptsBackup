//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

//Jab
if (attack == AT_JAB){
	if (window == 1 || window == 4){
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
}

//Dash Attack: Running Kick
if (attack == AT_DATTACK){
	if (window == 1){
		tailsdattackvar = 0
		if (window_timer == 1){
			//hsp = 0.2 * spr_dir
		}
	}
	if (window == 3){
		if (image_index == 5){
			tailsdattackvar++;
			if (tailsdattackvar == 1){
				sound_play(sfx_land);
				hsp = 6.5 * spr_dir
				spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir)
			}
		}
	}
}

//Forward Tilt: Tail Swipe
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == 0){
			if (didwavedash != 0){
				//set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 8);
				//Lol!
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (40 * spr_dir), y, "walk", spr_dir * -1)
			spawn_base_dust( x + (60 * spr_dir), y, "dash", spr_dir * -1)
		}
	}
	if (window == 3){
		// rune
		if (window_timer == 5 && rhythmBadgeRune && attack_down){
			attack_end();
			window = 1;
			window_timer = 4;
		}
	}
	//hsp = clamp(hsp, -5.2, 5.2);
	if (rhythmBadgeRune){
		if (left_down && !right_down){
			hsp -= 0.75;
		} else if (!left_down && right_down){
			hsp += 0.75;
		}
	}
}

//Up Tilt: Ring Toss
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == 7){
			sound_play(sfx_ring)
			spawn_base_dust( x + (30 * spr_dir), y, "dash", spr_dir * -1)
		}
	}
	if (window == 3){
		move_cooldown[AT_UTILT] = 4;
		if (window_timer == 1){
			spawn_base_dust( x - (20 * spr_dir), y, "dash", spr_dir)
		}
	}
	
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 7)){//>
		hud_offset = 90;
	}
}

//Down Tilt: Slide
if (attack == AT_DTILT){
	//can_jump = true
	if (window != 1){
		if (free){
			set_state(PS_IDLE_AIR);
			if (hsp > 9){
				hsp = 10
			}
			if (hsp < -9){ //>
				hsp = -10
			}
			hsp *= 0.55
		}
	}
	if (window == 1){
		//if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if (window_timer == 3){
			spawn_base_dust( x + (2 * spr_dir), y, "dash_start", spr_dir)
		}
	}
	if (has_hit == true && was_parried == false){
		can_jump = true;
	}
	if (was_parried == true){
		hsp = 0
	}
}

// Neutral Air
if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
			sound_play(asset_get("sfx_spin"));
		}
	}
}

//Up Air
if (attack == AT_UAIR){
	if ((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
	|| (window > 3 && window < 5)
	|| (window == 5 && image_index < 11)){//>
		hud_offset = 68;
	}
}

//Forward Strong: Scissor Punch
if (attack == AT_FSTRONG){
	if (window == 2){
		if (window_timer == 4){
			sound_play(asset_get("sfx_birdclap"));
			spawn_base_dust( x - (6 * spr_dir), y, "dash_start", spr_dir)
			
			// windbox rune
			if(fstrongWindRune){
				sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.7, 1);
				for (var i = 0; i < 6; i++){
					spawn_base_dust( (x + (24+(i*6)) * spr_dir), y-(i*9), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (54+(i*6)) * spr_dir), y-(i*9), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (84+(i*6)) * spr_dir), y-(i*9), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (114+(i*6)) * spr_dir), y-(i*9), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (144+(i*6)) * spr_dir), y-(i*9), "wavedash", spr_dir*-1);
				}
			}
		}
	}
	//Lol!
}

//Up Strong: Magic Upper
if (attack == AT_USTRONG){
	//Lol!
	if (window == 2){
		if (window_timer == 1){
			sound_play(asset_get("sfx_swipe_heavy1"));
			//spawn_base_dust( x - (20 * spr_dir), y, "dash_start", spr_dir)
			spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir)
			spawn_base_dust( x + (36 * spr_dir), y, "dash", spr_dir * -1)
		}
	}
}

//Down Strong: Dummy Ring Bomb
if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == 1){
			sound_play(sfx_dstrong_use)
			spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir)
		}
		if (window_timer == 2){
			sound_play(sfx_ring)
		}
	}
	if (window == 3){
		if (window_timer == 2){
			spawn_hit_fx( x, y, ring_dstrong_vfx );
			window = 4
			window_timer = 0
		}
	}
}

//Neutral Special: Regular Bombs
/*
if (attack == AT_NSPECIAL){
	if (window == 1){
        if (window_timer == 4){
			sound_play(sfx_krtd_bomb_prep)
		}
    }
    if (window == 3){
        move_cooldown[AT_NSPECIAL] = 120;
    }
}
*/

//gun
if (attack == AT_NSPECIAL){
	if (window == 1){
		nspec_air_window_timer = window_timer
		if (window_timer == 26){
			create_hitbox(AT_NSPECIAL, 1, x + 30 * spr_dir, y - 24);
			window++;
			window_timer = 0
		}
	} else {
		nspec_air_window_timer = 0
	}
	if (window == 2){
		move_cooldown[AT_NSPECIAL] = 150;
		move_cooldown[AT_NSPECIAL_AIR] = 150;
	}
}
if (attack == AT_NSPECIAL_AIR){
	if (window == 1){
		nspec_air_window_timer = window_timer
		if (window_timer == 0 || window_timer == 1){
			sound_stop(sfx_flight);
			sound_stop(sfx_flight_cheat);
		}
		if (window_timer == 26){
			create_hitbox(AT_NSPECIAL_AIR, 1, x + 20 * spr_dir, y + 6);
			window++;
			window_timer = 0
			vsp = -4
			hsp = -6 * spr_dir
		}
	}
	if (window == 2){
		move_cooldown[AT_NSPECIAL] = 150;
		move_cooldown[AT_NSPECIAL_AIR] = 150;
	}
}
if (attack == AT_NSPECIAL_AIR){
	if (!free){
		if (window == 1){
			set_attack(AT_NSPECIAL);
			window_timer = nspec_air_window_timer;
		} else {
			set_state(PS_LAND);
		}
	}
}

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_propeller_dagger_draw"));
		}
		if (window_timer == 18){
			sound_play(asset_get("sfx_swipe_medium1"));
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !free){
			spawn_base_dust( x + (2 * spr_dir), y, "dash_start", spr_dir)
		}
	}
}

//Forward Special: Air Dive
if (attack == AT_FSPECIAL){
	//lol
	can_fast_fall = false;
	can_wall_jump = true;
	if (window == 1){
		fspec_loop = 0
		if (!free){
			tails_fspec_started_on_ground = 1
		} else {
			tails_fspec_started_on_ground = 0
		}
		if (window_timer == 2){
			vsp = -2
		}
		if (window_timer == 1) { 
			grabbed_player_obj = noone; 
			grabbed_player_relative_x = 0;
			grabbed_player_relative_y = 0;
		}
	}
	if (window == 2){
		if (window_timer == 11){
			vsp = -7
			hsp = 8.5 * spr_dir
			window = 3
			window_timer = 0
		}
	}
	if (window == 3){
		can_move = true
		if (window_timer == 8){
			if (fspec_loop != 4){
				window_timer = 0
				fspec_loop++;
			}
		}
		if (tailsdidhesidebrobot == true){
			set_attack(AT_FSPECIAL_AIR);
		}
		if (down_down){
			fall_through = true
		} else if (!down_down){
			fall_through = false
		}
		if (!free){
			set_state(PS_PRATLAND);
		}
	}
	if (window == 4){
		//hsp *= 0.785
		if (!free){
			state = PS_PRATLAND
			state_timer = 0
		}
	}
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	can_move = true;
	if (window == 1){
		if (window_timer == 1){
			spawn_base_dust( x, y, "doublejump", spr_dir)
		}
	}
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 12 * spr_dir;
			var pull_to_y = 36;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 12 * spr_dir;
			var pull_to_y = 36;
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			vsp -= 0.585
		}
		if (window == 3 && window_timer == 0) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 45 * spr_dir;
			var pull_to_y = -4;
			sound_stop(sfx_flight)
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			if (tails_fspec_started_on_ground == 0){
				move_cooldown[AT_FSPECIAL] = 9999999999;
			}
		}		
	}
	move_cooldown[AT_FSPECIAL] = 9999999999;
}

if (attack == AT_FSPECIAL_AIR){
	if (window == 1){
		if (window_timer == 1){
			spawn_base_dust( x, y, "doublejump", spr_dir)
		}
	}
	if (window == 2){
		vsp -= 0.585
		if (window_timer == 31){
			window = 3
			window_timer = 1
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 3){
			sound_play(asset_get("sfx_swipe_medium2"));
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			create_hitbox(AT_FSPECIAL_AIR, 2, x + 20 * spr_dir, y - 35);
			spawn_hit_fx(x + 20 * spr_dir,y - 35, 304);
			sound_play(asset_get("sfx_blink_dash"));
			sound_play(asset_get("sfx_shovel_hit_med1"));
		}
	}
	if (window == 3){
		sound_stop(sfx_flight);
		if (window_timer == 0){
			window_timer++;
		}
	}
}

//Up Special: Flight
if (attack == AT_USPECIAL){
	aerialattack = 0
	diveloop = 0
	if (window == 1 && window_timer != 5){
		vsp = -3
	} else if (window == 1 && window_timer == 5){
		vsp = -1
	}
	if (window == 2){
		can_move = true
		can_wall_jump = true
		can_shield = true
		
		var jetAnkInc = (jetAnkletRune * 1.2);
		var jetAnkAccel = (jetAnkletRune * 0.3);
		
		hsp = clamp(hsp, -6.5-jetAnkInc, 6.5+jetAnkInc);
		if (jump_pressed || jump_down || special_pressed || special_down){
			vsp = -4.5
			aerialattack = 0
		} else {
			vsp = vsp + 0.2
		}
		if (vsp > 4){
			vsp = 4
		}
		if (left_down){
			hsp = hsp - (0.2 + jetAnkAccel)
		}
		if (right_down){
			hsp = hsp + (0.2 + jetAnkAccel)
		}
		if ((attack_pressed||(up_stick_pressed || left_stick_pressed || right_stick_pressed || down_stick_pressed)) || up_strong_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed){
			sound_stop(sfx_flight)
			sound_stop(sfx_flight_cheat)
			flightloop--;
			can_attack = true;
			aerialattack = 1 - jetAnkletRune;
		}
		if (!free){
			aerialattack = 0
			set_state(PS_LAND);
			sound_stop(sfx_flight)
			sound_stop(sfx_flight_cheat)
		}
	}
	if (window == 2 && window_timer == 23 && flightloop != 0){
		window_timer = 0
		flightloop--;
	}
	if (flightloop <= 0){
		window = 3
		window_timer = 0
	}
	if (window = 3){
		sound_stop(sfx_flight)
		sound_stop(sfx_flight_cheat)
		flightloop = 1
	}
}

if (!has_hit){
	//This basically puts u into pratfall if you attacked out of up b lol
	if (attack == AT_NAIR && window == 4 && window_timer == 10 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_FAIR && window == 3 && window_timer == 12 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_DAIR && window == 3 && window_timer == 9 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_BAIR && window == 3 && window_timer == 11 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_UAIR && window == 5 && window_timer == 10 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_DSPECIAL){
	if (window == 1){
		prat_land_time = 20;
	}
    if (window == 2 && window_timer == 1){
		tailsdspecheydidtherobotdieyet = 0
		if (tailsisrobotout == true){
			if (tailsdidrobotgethit == false){
				//tailsdidpressdownbwhenthingisactive = 1
				//move_cooldown[AT_DSPECIAL] = 26;
			}
		} else if (!tailsisrobotout){
			var remoteRobot = instance_create(x + 2 * spr_dir, y - 40, "obj_article1");
			remoteRobot.robotNumber = 1;
			if (remoteRobotDoubleRune == true){
				var remoteRobot2 = instance_create(x + 2 * -spr_dir, y - 40, "obj_article1");
				remoteRobot2.spr_dir *= -1;
				remoteRobot2.robotNumber = 2;
			}
		}
    }
}

if (attack == AT_DSPECIAL_2){
    if (window == 2 && window_timer == 1){
		tailsdspecheydidtherobotdieyet = 0
		if (tailsisrobotout == true){
			if (tailsdidrobotgethit == false){
				tailsdidpressdownbwhenthingisactive = 1
				move_cooldown[AT_DSPECIAL] = 26;
				remoteRobot.activatejump = true;
				remoteRobot2.activatejump = true;
			}
		} else if (!tailsisrobotout){
			//instance_create(x + 2 * spr_dir, y - 40, "obj_article1");
		}
    }
}

if (attack == AT_TAUNT){
	if (window == 3){
		if (window_timer == 5){
			if (taunt_down){
				window_timer = 4
			}
		}
	}
}

//puttin old ustrong code here for ref in case i need it lol
//if (attack == AT_USTRONG){
	//if (window == 1){
		//bombcharge = (strong_charge / 12)
		//bombcharge = bombcharge * -1
		//if (window_timer == 7){
			//sound_play(sfx_krtd_bomb_prep)
		//}
	//}
	//if (window == 2){
		//set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10 + bombcharge);
	//}
	//if (window == 4){
		//bombcharge = -2
		//move_cooldown[AT_USTRONG] = 54;
	//}
//}

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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