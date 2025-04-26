// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) {
	if  strong_charge == 1 {
    sound_play(sound_get("strongcharge"));
	} if window > 2 {
    sound_stop(sound_get("strongcharge"));
	}
}

//Jab stuff
if attack == AT_JAB {
	if window == 1 && window_timer == 1 {
		maxjabs = 3;
	}
	if window == 4 {
		if attack_pressed && maxjabs > 0 {
			maxjabs--;
			window = 2;
			window_timer = 2;
		}
	}
	if window == 5 && !was_parried {
		can_attack = true;
	}
	
	if window == 5 && maxjabs > 0 && was_parried {
		was_parried = false;
	}
	
	if 3 > window {
		//Angling
		if up_down {
			set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 7);
			set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 8);
			set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 9);
			set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
			set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -50);
			set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
		} else 
		if down_down {
			set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
			set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
			set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
			set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 4);
			set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -24);
			set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
		}	else {
			reset_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START);
			reset_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START);
			reset_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START);
			reset_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START);
			reset_hitbox_value(AT_JAB, 1, HG_HITBOX_Y);
			reset_hitbox_value(AT_JAB, 1, HG_ANGLE);
		}
	}
}


//NSpecial - Pinball
if attack == AT_NSPECIAL {
	if window == 1 {
		if window_timer == 1 {
			stopRightThereBruh = 3;
		}
		
		if window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)-1 {
			switch (nspecialProj)
			{
				case 0:
					create_hitbox(AT_NSPECIAL, 1, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)));
					sound_play(sound_get("beep13"), false, noone, .5, 1.5);
				break;
				
				case 1:
					create_hitbox( AT_NSPECIAL, 2, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)));
					sound_play(sound_get("beep14"), false, noone, .5, 1.5);
				break;
				
				case 2:
					create_hitbox( AT_NSPECIAL, 3, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)));
					sound_play(sound_get("beep14"), false, noone, .5, 1.25);
				break;
				
				case 3:
					create_hitbox( AT_NSPECIAL, 4, x+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X)*spr_dir), y+(get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)));
					sound_play(sound_get("beep13"), false, noone, .5, 1.2);
				break;
			}
			nspecialProj++;
		}
	}
	if window == 2 {		
		if window_timer > 18 && stopRightThereBruh > 0 && special_pressed {
			window = 1;
			window_timer = 2;
			stopRightThereBruh--;
		} else {
			move_cooldown[AT_NSPECIAL] = 30;
		}
	}
}


//FSpecial - Judge
if (attack == AT_FSPECIAL) {
	can_fast_fall = false;
    if (window == 1 && window_timer == 1) { 
		judgeCharge = 0;
    }
	
    if (window == 3) { //Charge
		if 9 > judgeCharge {
			if special_down {
				judgeCharge += .125;
				if window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) {
					window_timer = 0;
				}
			}
			if judgeCharge >= 1 && judgeCharge mod 1 == 0 {
				sound_play(sound_get("beep2"), false, noone, .5, .85+judgeCharge/100);	
			}
		} else {
			window = 4;
			window_timer = 0;
		}
    }
	
	if window == 4 {
		if window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH) {
			if judgeCharge >= 9 {
				window = 14;
				sound_play(sound_get("beep16"), false, noone, 1, .5);
				sound_play(asset_get("sfx_forsburn_combust"));	
				take_damage(player, -1, 6);
				spawn_hit_fx(x+38*spr_dir, y-34, 143);
				spawn_base_dust(x, y, "land", spr_dir);
			} 
			else
			if judgeCharge >= 8 {
				window = 13;
				spawn_hit_fx(x+74*spr_dir, y-2, stung3);
				spawn_hit_fx(x+54*spr_dir, y-50, stung3);
				spawn_hit_fx(x-14*spr_dir, y-20, stung3);
				spawn_base_dust(x-10*spr_dir, y, "dash_start", spr_dir);
			}
			else
			if judgeCharge >= 7 {
				window = 12;
			}
			else
			if judgeCharge >= 6 {
				window = 11;
			}
			else
			if judgeCharge >= 5 {
				window = 10;
			}
			else
			if judgeCharge >= 4 {
				window = 9;
			}
			else
			if judgeCharge >= 3 {
				window = 8;
			}
			else
			if judgeCharge >= 2 {
				window = 7;
			}
			else
			if judgeCharge >= 1 {
				window = 6;
			} else window = 5;
			window_timer = 0;
			if 8 > judgeCharge { 
			sound_play(sound_get("beep3"));
			spawn_base_dust(x-10*spr_dir, y, "dash", spr_dir);
			}
		}
	}
	
	if window > 4 && 15 > window {
		if (window != 10 && window_timer == 2 || window == 10 && window_timer == 11) {
			window = 15;
			window_timer = 0;
			
			if judgeCharge >= 8 && 9 > judgeCharge {
				sound_play(sound_get("nine"), false, noone, .8, 1);
			}
		}
	}
	
	if window == 15 && window_timer = get_window_value(AT_FSPECIAL, 15, AG_WINDOW_LENGTH) {
			window = 16;
			window_timer = 0;
	}
}

//DSpecial - Ball
if (attack == AT_DSPECIAL) {
	can_fast_fall = false;
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
		basecast_hit = false;
    }
    if (window == 5) { 
		if window_timer == 10 || window_timer > 5 && (spr_dir == 1 && right_down || spr_dir == -1 && left_down) {
			attack_end();
			set_attack(AT_FTHROW);
		}
		if window_timer == 10 || window_timer > 5 && (spr_dir == 1 && left_down || spr_dir == -1 && right_down) {
			attack_end();
			spr_dir *= -1;
			set_attack(AT_FTHROW);
		}
		vsp = 0;
		hsp = 0;
    }
}

//USpecial - Fire
if attack == AT_USPECIAL {
	can_move = false;
	can_fast_fall = false;
	if window == 1 {
		if window_timer == 10 {
			move_cooldown[AT_USPECIAL] = 999;
			instance_create(x, y, "obj_article1");
		}
		
		if window_timer == 7 {
			with(asset_get("obj_article1")){
				if (other.id == player_id) {
					shoulddie = true;
				}
			}
		}
	}
	if window > 1 {
		move_cooldown[AT_USPECIAL] = 999;
		can_wall_jump = true;
	}
	
	if window == 3 {
		if window_timer > 10 {
			can_move = true;
			can_jump = true;
			can_attack = true;
			can_shield = true;
		}
	}
}


if (attack == AT_FTHROW && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= 7) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		if grabbed_player_obj.hitpause {
			grabbed_player_obj.grabbed_invisible = true;
		}
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			var pull_to_x = -30 * spr_dir;
			var pull_to_y = -32;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}		
		if (window == 2) { 
			var pull_to_x = -26 * spr_dir;
			var pull_to_y = -50;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3) { 
			var pull_to_x = -14 * spr_dir;
			var pull_to_y = -60;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 4) { 
			var pull_to_x = 8 * spr_dir;
			var pull_to_y = -60;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 5) { 
			var pull_to_x = 14 * spr_dir;
			var pull_to_y = -50;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 6) { 
			var pull_to_x = 26 * spr_dir;
			var pull_to_y = -32;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}

if (attack == AT_FTHROW) {
	can_move = false;
	hsp = 0;
	vsp = 0;
}

	
//UAir momentum stuff
if (attack == AT_UAIR && !hitpause) {
	if has_hit {
	can_fast_fall = true;
	} else {
	can_fast_fall = false;	
	}
		if window >= 2 && 3 >= window && (attack_down || strong_down || up_strong_down) {
		vsp -= .25;
	}
	if window == 2 && window_timer >= 9 && (attack_down || strong_down || up_strong_down) {
		vsp = clamp(vsp, -3, .5);
		if window_timer == 10 {
			window = 4;
			window_timer = 0;
		}
	}
	if window == 4 {
		if (attack_down || strong_down || up_strong_down) && 5 > vsp {
		hsp = clamp(hsp, -2, 2);
		vsp -= .22;
			if window_timer >= 22 {
				can_shield = true;			
			}
			if window_timer == 62 {
				window_timer = 1;
			}
		if djumps == 0 && jump_pressed {
			sound_play(asset_get("sfx_jumpair"));
			spawn_base_dust(x, y, "djump");
			vsp = -4;
			djumps = 1;
		}
		} else {
			destroy_hitboxes();			
			window = 3;
			window_timer = 0;
			move_cooldown[AT_UAIR] = 10;
		}
	} 
}


//Dust stuff

if !hitpause {
	if attack == AT_FSTRONG {
		if window == 3 && window_timer == 3 {
			spawn_base_dust(x+50*spr_dir, y, "dash_start", -spr_dir);
			spawn_base_dust(x-4*spr_dir, y, "dash");
		}
	}
	
	if attack == AT_USTRONG {
		if window == 2 && window_timer == 3 {
			spawn_base_dust(x-12, y, "dash", 1);
			spawn_base_dust(x+12, y, "dash", -1);
		}
		if window == 4 && window_timer == 11 {
			spawn_base_dust(x-12, y, "dash_start", 1);
			spawn_base_dust(x+12, y, "dash_start", -1);
		}
	}
	
	if attack == AT_DSTRONG {
		if window == 3 && window_timer == 3 {
			spawn_base_dust(x-20*spr_dir, y, "dash", spr_dir);
		}
		if window == 4 && window_timer == 1 {
			spawn_base_dust(x+30*spr_dir, y, "dash_start", -spr_dir);
		}
	}
}


//SFX stuff
if !hitpause {
	if attack == AT_UTILT {
		if window == 2 {
			if window_timer == 8 {
				sound_play(sound_get("beep15"), false, noone, .8, 1.5);
			}
		}
	}
}


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