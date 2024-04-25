
#macro GRAPPLE_DISABLED 0
#macro GRAPPLE_ACTIVE 1
#macro GRAPPLE_RETURNING 2
#macro GRAPPLE_PLAYER_MOUNTED 3
#macro GRAPPLE_WALL_MOUNTED 4
#macro GRAPPLE_ARTICLE_MOUNTED 5


// B Reverse for the specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
// window length of the current window of the attack
var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

// walljump code
if (get_window_value(attack,window,AG_WINDOW_CAN_WALLJUMP)) {
	can_wall_jump = true;
}


// specific attack behaviour
switch(attack) {
	
	//#region Grounded Normals
	
    case AT_JAB:
        // clear attack so jab2 doesn't automatically happen
    	if (window == 1 && window_timer == 1) {
    		clear_button_buffer(PC_ATTACK_PRESSED);
    	}
        break;
    
    case AT_UTILT:
    	if (window == 2 || window == 3) hud_offset = 40
    	break;
        
    case AT_DTILT:
        if (window_timer == 12 && window == 1 && !hitpause) {
            sound_play(asset_get("sfx_bite"))
        }
        down_down = true 
        break;
    
    case AT_FSTRONG:
    	switch window {
    		case 1:
    			if (window_timer == 1) sound_play(asset_get("sfx_clairen_sword_deactivate"));
    			break;
    		case 2:
    			if (window_timer == 7) sound_play(sound_get("sfx_perry_fstrong1"), 0, noone, .5);
    			break;
    		case 3:
    			if (window_timer == 3 && has_hit) {
					sound_play(sound_get("sfx_perry_fstrong1"), 0, noone, .5)
				}
				else if (window_timer == 7) {
					sound_play(sound_get("sfx_perry_fstrong2"), 0, noone, .6)
				}
				break;
    	}
		break;
    
    case AT_USTRONG: 
		if (window == 2 || window == 3 || window == 4) hud_offset = 50
        can_move = false;
        if (free) {
        	if (left_down)  hsp = clamp(hsp-0.1, -5, hsp);
        	if (right_down) hsp = clamp(hsp+0.1, hsp, 5);
        }
        
        if (window == 1) {
            fall_timer = 0;
            set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
        }
        else if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	hsp = clamp(hsp, -5, 5);
        	vsp = -12;
        	ustrong_smear = spawn_hit_fx(x, y - 12, fx_ustrong1);
            ustrong_smear.depth = depth-1;
            spawn_base_dust(x, y, "jump");
        }
        else if (window == 4 || window == 5) {
        	fall_timer++;
        	if (has_rune("D") ? vsp > 1 : fall_timer > 33) { // Rune D empowers the spike, so have it come out as soon as falling starts
        		if (!has_rune("D")) strong_charge = 0;
        		iasa_script();
        		create_hitbox(attack, 2, x, y);
        	}
        }
        if (window == 6 && window_timer == 1) {
        	spawn_base_dust(x, y, "land");
        }
        
        if (hitpause && instance_exists(ustrong_smear)) {
        	ustrong_smear.step_timer--;
        }
        
        can_fast_fall = (window >= 4 && (has_rune("D") ? vsp > 1 : fall_timer > 33));
        can_wall_jump = (window == 5);
        fall_through = (window == 4 || window == 5 && fall_timer < 33) && !was_parried;
    	break;
    
    case AT_DSTRONG: // self-parry
    	
    	// Rune K: trigger DSpecial remotely
    	if (window == 2 && has_rune("K") && window_timer == 2 && instance_exists(button_obj)) {
    		if (button_obj.object_index == obj_article1) {
    			button_obj.state = 4;
        		button_obj.state_timer = 0;
        		button_obj.hitstun_triggered = 1;
        		button_obj.rune_can_hit_self = 1;
        		button_obj.vis_warn_timer = 0;
    		}
    		else if (button_obj.object_index == obj_article2) {
    			button_obj.state = 3;
        		button_obj.state_timer = 0;
        		button_obj.hitstun_triggered = 1;
        		button_obj.rune_can_hit_self = 1;
    		}
    	}
    	
    	// Spawn self-hitting melee hitbox
    	if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
	    	var hbox = create_hitbox(attack, 1, x, y);
	    	hbox.can_hit_self = true;
	    	perfect_dodging = 1;
	    	dstrong_fx = spawn_hit_fx(x, y, fx_parry_flash);
    	}
    	
    	if (window == 3 && hitpause) {
    		dstrong_fx.step_timer--;
    		if (dstrong_cancel_parry_stun && !has_hit && hitstop > 2) {
	            hitstop = 2;
	            hitstop_full = 2;
	        }
    	}
    	
    	if (window == 4 && window_timer == 1) {
    		if (dstrong_cancel_parry_stun) { // i.e. only perry parried it
    			was_parried = false;
    			dstrong_cancel_parry_stun = false;
    			invince_time = 10;
    		} else { // i.e. someone else parried it
    			invincible = false;
    		}
    	}
    	
    	// necessary for obvious balance reasons
    	// also bandaids a bug where when using the move twice in succession,
    	// the hitbox would be unable to hit perry until late in the move,
    	// thus killing him
    	move_cooldown[AT_DSTRONG] = 20;
    	
    	break;
        
    case AT_FTILT:
    case AT_DATTACK:
        break;
        
    //#endregion    
    
    //#region Aerials
    
    case AT_FAIR:
    	// Rune B: loopable
    	if (window == 2) num_loops = 0;
    	if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		if (has_rune("B") && num_loops <= 5 && (attack_down || strong_down || is_attack_pressed(DIR_SIDE) || is_strong_pressed(DIR_SIDE))) {
	        	window = 2;
	        	window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
	        }
	        num_loops++;
    	}
        break;
    
    case AT_DAIR:
        if window_timer == 7 && !hitpause && window == 1 {
            sound_play(asset_get("sfx_ori_stomp_spin"))
        }
        break;
        
    case AT_UAIR:
    	if window != 1  && !parachute_active{
			hud_offset = 30
		}
		break;
    
    case AT_NAIR:
    case AT_BAIR:
        break;
    
    //#endregion
    
    //#region NSpecial
    
    case AT_NSPECIAL:
        
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	var nspec_drone = instance_create(floor(x)+(40*spr_dir), floor(y)-40, "obj_article1");
        	nspec_drone.throw_dir = clamp(down_down + down_stick_down - up_down - up_stick_down, -1, 1);
        	
        	nspec_num_drones++;
        	nspec_drone_cd += nspec_drone_cd_max;
        	
        	if (free) vsp = (parachute_active ? -6 : -8);
        }
        
        break;
    
    //#endregion
    
    //#region FSpecial
    
    case AT_FSPECIAL:
		
    	if (window < 4) {
    		can_fast_fall = false;
    		if (vsp > 2.5) vsp = 2.5;
		    if (hsp > 0.5) hsp = lerp(hsp, 0.5, 0.1);
		    if (hsp < -0.5) hsp = lerp(hsp, -0.5, 0.1);
    	}
    	
    	switch window {
    		
    		// Startup
    		case 1:
    			if (free) fspec_used = true;
    		
    			if (window_timer == 1 && vsp > 0) vsp = 0;
    			
    			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    				gh_state = GRAPPLE_ACTIVE;
	        		gh_timer = 0;
	        		gh_x = x + (gh_x_origin * spr_dir) + (gh_x_offset * spr_dir);
	        		gh_y = y + gh_y_origin + gh_y_offset;
	        		gh_dir = spr_dir;
	        		gh_hsp = fspec_init_hsp * spr_dir;
	        		gh_end_hsp = hsp;
	        		gh_vsp = vsp;
	        		
	        		gh_hboxless = false;
	        		gh_hitbox = create_hitbox(AT_FSPECIAL, 1, gh_x, gh_y);
	        		gh_hitbox.hsp = gh_hsp;
	        		gh_hitbox.vsp = gh_vsp;
	        		gh_hitbox.agent_p_ignore_drone = true; // for use by articles
	        		
	        		// aim assist for drones
	        		gh_aim_obj = noone;
	        		var donor_article = instance_create(floor(x+(gh_x_origin+gh_x_offset)*spr_dir), floor(y+gh_y_origin + gh_y_offset), "obj_article3");
	        		donor_article.mask_index = sprite_get("grapple_assist_mask_" + string(spr_dir));
	        		with obj_article1 {
	        			if ("agent_p_grapplable" in self && agent_p_grapplable == 2 && place_meeting(x, y, donor_article)) {
	        				other.gh_aim_obj = self;
	        				//print_debug("found " + string(self));
	        			}
	        		}
	        		if (has_rune("M")) with oPlayer { // Rune M: player-targetted aim assist
	        			if (other != self && place_meeting(x, y, donor_article)) {
	        				other.gh_aim_obj = self;
	        				//print_debug("found " + string(self));
	        			}
	        		}
 	        		instance_destroy(donor_article);
 	        		
 	        		training_mode_alpha = 0.5;
	        		
    			}
    			
    			break;
    		
    		// Fire hook
    		case 2:
        		// no break
        	
        	// Loop (awaiting completed return)
        	case 3:
        	
        		if (gh_state == GRAPPLE_WALL_MOUNTED || gh_state == GRAPPLE_ARTICLE_MOUNTED) {
        			set_attack_value(attack, AG_NUM_WINDOWS, 5);
        			window = 5;
        			window_timer = 0;
        			
        			sound_play(sound_get("sfx_per_hookhit_2"), false, noone, 0.9, 1.05);
        		}
        		
        		else if (gh_state == GRAPPLE_DISABLED) {
        			window = 4;
        			window_timer = 0;
        		}
        		
        		if (window == 3 && training_mode_alpha > 0) training_mode_alpha -= 0.05
        		
	        	break;
	        
	        case 4:
	        	set_attack_value(attack, AG_NUM_WINDOWS, 4);
	        	can_wall_jump = true;
		    	break;
		    
		    // Wall/article grapple
		    case 5:
		    	can_attack = true;
		    	can_special = true;
		    	can_shield = free; // so as to only permit air dodging
		    	can_strong = true;
		    	can_ustrong = true;
		    	can_jump = true;
		    	//fall_through = true;
		    	
		    	if (gh_state = GRAPPLE_DISABLED) {
        			set_state(free ? PS_IDLE_AIR : PS_IDLE);
        			if (vsp > -4 && free) vsp = -4;
        			attack_end();
        		}
        		
        		// slide behavior
        		else if (!free) {
        			
        			// fspec_used will implicitly refresh via update.gml
        			
        			if (get_gameplay_time() % 3 == 0) spawn_base_dust(x, y, "dash");
        			
        			// grounded air dodge (mainly for wavedashes)
        			if (shield_pressed) {
        				clear_button_buffer(PC_SHIELD_PRESSED);
        				set_state(PS_AIR_DODGE);
        			}
        			
        		}
        		
        		break;
        	
        	// Player grapple: pull
        	case 6:
        		can_move = false;
        		can_fast_fall = false;
        		if (gh_state == GRAPPLE_DISABLED) {
        			vsp = 0;
        			hsp = 2 * spr_dir;
        			window = 7;
        			window_timer = 0;
        		}
        		break;
        	
        	// Player grapple: attack startup
        	case 7:
        		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) vsp = -10;
        		break;
        	
        	// Player grapple: attack active, endlag
        	case 8:
        	case 9:
        		// manual gravity (for parachute safety)
        		vsp += gravity_speed;
        		break;
	        
    	}
        break;
        
    //#endregion
        
    //#region DSpecial
    
	case AT_DSPECIAL_AIR: 
		dspec_used = true;
		can_fast_fall = false;
		if (!free) {
			attack_end();
			attack = AT_DSPECIAL;
			// deliberately avoid resetting window/timer
		}
		// no break
	case AT_DSPECIAL:
        
        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	if (dspec_article_cooldown <= 0) {
        		var dspec_button = instance_create(floor(x), floor(y), "obj_article2");
        		if (!free) {
        			dspec_button.sprite_index = sprite_get(is_ea ? "dspecial_art_ea" : "dspecial_art")
        			dspec_button.state = 1;
        			dspec_button.free = false;
        		}
        		else {
        			vsp = (parachute_active ? -6 : -8);
        			sound_play(asset_get("sfx_clairen_nspecial_grab_miss"), 0, noone, .5, 1.05)
        		}
        	}
        	else if (free) vsp = (parachute_active ? -3.5 : -4);
        }
        
        if (free) dspec_used = true; // anti-stall
        
        move_cooldown[AT_DSPECIAL] = 30; // not really necessary but telegraphs that this isn't spammable
        
        break;	
    
    //#endregion
    
    //#region USpecial
    
    case AT_USPECIAL:
    	can_wall_jump = (window > 1);
    	can_shield = (window > 1);
    	if (window == 1) {
    		dir_held = (left_down*-1) + (right_down);
    		vis_parachute_frame = 0;
    	}
    	else if (window == 2 && window_timer == 1) {
			sound_play(sound_get("sfx_per_hookend"))
			hsp = 3 * dir_held;
			vsp = (dir_held == 0 ? -9 : -8);
			parachute_active = true;
			vis_parachute_angle = hsp * 5 / air_max_speed;
    	}
    	if (window >= 2 && vis_parachute_frame < 2) vis_parachute_frame += 0.25;
        break;
    
    //#endregion
        
    //#region Taunts
    
    case AT_TAUNT_2:
    	down_down = true;
    	// no break
    
    case AT_TAUNT: 
    	switch window {
    		case 1:
				if (window_timer == 1) {
					var is_on_plat = (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && respawn_taunt > 0));
					if (is_on_plat) sound_play(sound_get("sfx_perry_hjonk"))
					taunt_loops = 0;
					
					if (has_rune("N")) with obj_article1 {
						if (player_id == other && state <= 1) {
							state = 6;
							state_timer = 0;
						}
					}
				}
				break;
			case 2:
				if (window_timer == 5 && taunt_loops < 15) {
		            window_timer = 0;
		            taunt_loops++;
		        }
		        if (has_rune("N")) iasa_script();
		        break;
    	}

        break;
    
    //#endregion
    
    //#region Intros
    
    case 2: //intro
		switch (window) {
			case 1:
				char_height = -1000;
				break;
			case 3: 
				if (window_timer == 1) char_height = 42;
				hud_offset = 180;
				break;
			case 4:
				if (window_timer == 1) {
					sound_play(sound_get("sfx_perry_stinger"));
					spawn_base_dust(x, y, "land", spr_dir);
				}
		}

		break;
	
	case 3: //intro 2
		if window < 4 {
			hud_offset = 1000
		}
		
		if window == 4 && window_timer == 1 {
			sound_play(sound_get("sfx_perry_stinger"))
			spawn_base_dust(x, y, "land", spr_dir)
		}
		
		break;
		
	//#endregion
    
}




// Defines

#define sound_window_play //basically a shortcut to avoid repeating if statements over and over
/// sound_window_play(_window, _timer, _sound, _looping = false, _panning = noone, _volume = 1, _pitch = 1)
var _window = argument[0], _timer = argument[1], _sound = argument[2];
var _looping = argument_count > 3 ? argument[3] : false;
var _panning = argument_count > 4 ? argument[4] : noone;
var _volume = argument_count > 5 ? argument[5] : 1;
var _pitch = argument_count > 6 ? argument[6] : 1;
if window == _window && window_timer == _timer {
    sound_play(_sound,_looping,_panning,_volume,_pitch)
}

#define spawn_comp_hit_fx
//function takes in an array that contains smaller arrays with the vfx information
// list formatting: [ [x, y, delay_time, index, rotation, depth, force_dir], ..]
var fx_list = argument0;
vfx_created = false;

//temporary array
var temp_array = [{cur_timer: -1, max_timer: 0}];  //first value is an array that constains current and max timer, to detect when to spawn vfx and when to stop and be replaced
                            //later values are the fx
var player_dir = spr_dir;

//first take the arrays from the function, set them into objects, and store them in an array
for (var i=0;i < array_length(fx_list);i++) {
    //create new fx part tracker and add to temp array
    var new_fx_part = {
        x: fx_list[i][0],
        y: fx_list[i][1],
        delay_timer: fx_list[i][2],
        index: fx_list[i][3],
        rotation: fx_list[i][4],
        depth: fx_list[i][5],
        spr_dir: fx_list[i][6] == 0 ? player_dir : fx_list[i][6]
    };
    array_push(temp_array, new_fx_part);
    
    //change max timer if delay is bigger than it
    if (new_fx_part.delay_timer > temp_array[0].max_timer) {
        temp_array[0].max_timer = new_fx_part.delay_timer;
    }
}

//add temp array to final array
for (var e=0;e<array_length(comp_vfx_array);e++) {
    if (vfx_created) { //stop process if effect is created
        break;
    } 
    if (comp_vfx_array[e][0].cur_timer > comp_vfx_array[e][0].max_timer) { //replace finished effects
        comp_vfx_array[e] = temp_array;
        vfx_created = true;
    } else if (e == array_length(comp_vfx_array)-1) { //otherwise add it in the end of the array
        array_push(comp_vfx_array, temp_array);
        vfx_created = true;
    }
}

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
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

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion