//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (fspecial_timer > 0 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    if (special_pressed && pepsi_meter > 25){
        //print_debug("special_pressed");
        switch(attack) {
            case AT_NAIR:
			case AT_FAIR:
			case AT_DAIR:
			case AT_BAIR:
			case AT_UAIR:
			case AT_FTILT:
			case AT_UTILT:
			case AT_DTILT:
                if (window > 1) {
					if (is_special_pressed(DIR_LEFT)) spr_dir = -1;
					else if (is_special_pressed(DIR_RIGHT)) spr_dir = 1;
                    switch_fspecial();
                }
                break;
        }
    }
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		break;
	case AT_BAIR:
		move_cooldown[AT_BAIR] = 12;
		break;
	case AT_USTRONG:
		if (window == 1 && window_timer == 1) {
			if (!instance_exists(rand_garbage)) {
				garb_bounce = 0;
			}
		}
		//if (window == 1 && window_timer == 1) {
		//	garb_bounce = 0;
		//	if (instance_exists(rand_garbage)) {
		//		instance_destroy(rand_garbage);
		//		rand_garbage = noone;
		//	}
		//}
		if (window == 3 && window_timer == 1  && !hitstop && !hitpause) {
			if (!instance_exists(rand_garbage)) {
				var rand_roll = random_func( 10, 4, true );
				switch (rand_roll) {
					case 0: set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, spr_garbage1); break;
					case 1: set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, spr_garbage2); break;
					case 2: set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, spr_garbage3); break;
					case 3: set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, spr_garbage4); break;
				}
				sound_play(sfx_pepsi_zoop);
				rand_garbage = create_hitbox(AT_USTRONG, 2, x + 20 * spr_dir, y + 10);
				//print_debug(string(strong_charge));
				rand_garbage.vsp = -10 - (floor(strong_charge / 10));
			}
			
		}
		break;
	case AT_DATTACK:
		if (has_hit && !hitpause) {
			can_jump = true;
		}
		break;
	
	
	// WARNING: Tom wrote some baaaaaad spaghett here
	// Rework later, maybe
	case AT_NSPECIAL:
		can_move = false;
		can_fast_fall = false;
		if (window >= 6 && window <= 8) {
			if (window_timer == get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH)) {
				window = 9;
				window_timer = 0;
			}
		}
		// Blue Charge window
		else if (window == 2) {
			// Press special - go to blue punch
			if (special_pressed) {
				if (right_down && spr_dir == -1 || left_down && spr_dir == 1) {
					if (spr_dir == -1) spr_dir = 1;
					else spr_dir = -1;
				}
				window = 6;
				window_timer = 0;
			}
			// When window ends, proceed to White Charge
			if (window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)) {
				window = 3;
				window_timer = 0;
			}
		}
		// White Charge Window
		else if (window == 3) {
			// Press special - go to White Punch
			if (special_pressed) {
				if (right_down && spr_dir == -1 || left_down && spr_dir == 1) {
					if (spr_dir == -1) spr_dir = 1;
					else spr_dir = -1;
				}
				window = 7;
				window_timer = 0;
			}
			// When window ends, proceed to Red Charge
			if (window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)) {
				window = 4;
				window_timer = 0;
			}
		}
		// Red Charge Window
		else if (window == 4) {
			// Press special - go to Red Punch
			if (special_pressed) {
				if (right_down && spr_dir == -1 || left_down && spr_dir == 1) {
					if (spr_dir == -1) spr_dir = 1;
					else spr_dir = -1;
				}
				window = 8;
				window_timer = 0;
			}
			// When window ends, proceed to Red Punch
			if (window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)) {
				if (right_down && spr_dir == -1 || left_down && spr_dir == 1) {
					if (spr_dir == -1) spr_dir = 1;
					else spr_dir = -1;
				}
				window = 8;
				window_timer = 0;
			}
		}

		if (window == 6 && window_timer == 0) {
			hsp = 7 * spr_dir;
		}
		if (window == 7 && window_timer == 0) {
			hsp = 10 * spr_dir;
		}
		if (window == 8 && window_timer == 0) {
			hsp = 14 * spr_dir;
		}
		if (window == 9 && free) {
			state = PS_PRATFALL;
		}
	break;
	
	case AT_NSPECIAL_2:
    	can_move = false;
    	switch(window) {
    	    case 3:
    	        if (window_timer == 1) {
    	            spawn_hit_fx(x + 52 * spr_dir, y - 38, fx_sonic).depth = depth - 1;
    	            move_cooldown[AT_NSPECIAL_2] = 30;
    	        }     
    	    break;
    	}
	break;
	
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
				hit_fspecial = false;
				if (window_timer == 2) pepsi_fspecial = false;
				
				hsp *= 0.5;
				vsp *= 0.5; 
				break;
			case 2:
				if (fspecial_timer > 0) {
					pepsi_fspecial = true;
				}
				
				vsp = 0;
				can_wall_jump = true;
				if (window_timer == 1){
					if (pepsi_fspecial) sound_play(sfx_pepsi_boost, false, noone, 0.5, 1);
				} 
				if (hit_fspecial && !hitstop){
					can_jump = true;
					can_shield = true;
				} 
				if (window_timer == 2 && !hitstop) {
					hsp = 15 * spr_dir;
				}
				if (!instance_exists(fspecial_hitbox) && window_timer > 1) {
					if (pepsi_fspecial) fspecial_hitbox = create_hitbox(AT_FSPECIAL, 2, 0, 0);
					else fspecial_hitbox = create_hitbox(AT_FSPECIAL, 1, 0, 0);
				}
				
				//if (special_pressed){
				//	window = 3;
				//	window_timer = 0;
				//	destroy_hitboxes();
				//}
				break;
			case 3:
				hsp -= 1 * spr_dir;
				if (hit_fspecial || !free) {
					window = 4;
					window_timer = 0;
				}
				// vsp *= 0.5;
				can_wall_jump = true;
				break;
			case 4:
				hsp -= 1 * spr_dir;
				if (hit_fspecial) can_jump = true;
				// vsp *= 0.5;
				can_wall_jump = true;
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:

		// move to Uspecial 2 if B is held.
		if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)){
			if (special_down && pepsi_meter >= 25) {
				pepsi_meter -= 25;
				window = 5;
				window_timer = 0;
			}
		}

		// add a lil burst o pepsi
		if (window == 2 && window_timer == 1 && !hitstop && !hitpause) {
			spawn_hit_fx(x, y+20, vfx_pepsi_burst);
			sound_play(sfx_pepsi_psha);
		}

		if (window == 5 && window_timer == get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH)) {
			window = 6;
			window_timer = 0;
		}
		if (window == 6 && window_timer == get_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH)) {
			window = 4;
			window_timer = 0;
		}
		break;
	
	
	
	case AT_DSPECIAL:
		if (window == 1 && window_timer == 1) {
			if (instance_exists(pepsimachine)) {
				pepsimachine.destroy = true;
			}
		}
		if (window == 2 && window_timer == 3) {
			if (!instance_exists(pepsimachine)) {
				pepsimachine = instance_create(x + 20 * spr_dir, y, "obj_article1");
				move_cooldown[AT_DSPECIAL] = 120;
			}
			
		}
		can_fast_fall = false;
		can_move = false;
		break;
	
	case AT_DSPECIAL_2:
		//pepsi_meter += 1;
		//print(string(state_timer) + " --- " + string(state_timer div 8));
		if (window == 2) {
			var pepsi_time = (state_timer div 16) / 10 
			pepsi_meter += 0.3 + pepsi_time;
		}
		if (window == 2 && window_timer == get_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH)) {
			if (special_down) {
				window = 2;
				window_timer = 0;
			}
		}
		if (window == 3) {
			move_cooldown[AT_DSPECIAL_2] = 30;
			move_cooldown[AT_DSPECIAL] = 30;
		}
		break;
	
	
	case AT_TAUNT:
		if (taunt_down && window == 3 && window_timer == get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH)) {
			window = 3;
			window_timer = 0;
		}
		break;
}

if (attack == AT_JAB && bigiron) {
    if (window == 1 && (special_pressed || special_down)) {
        attack = AT_NSPECIAL_2;
    }
}


#define switch_fspecial()
//pepsi_fspecial = true;
pepsi_meter -= 25;
destroy_hitboxes();
attack_end();
attack = AT_FSPECIAL;
window_timer = 0;
window = 2;
djumps = 0;




#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


