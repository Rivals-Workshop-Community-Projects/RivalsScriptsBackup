// update.gml

// print(sd_card_was_recaught)

if (!free){
	uspec_already_grabbed_wall = false;
	uspec_random_wall_flag = false;
	uspec_times_grabbed_wall = 0;
	
	uspec_alr_grabbed_opp = false;
	
	dspec_used_already = false;
}

//print(uspec_told_grabbed_which_opp)

// print(uspec_is_curr_grabbing_wall);
// movement state sfx stuff
switch (state){
	case PS_SPAWN:
		//
		break;
	case PS_IDLE:
		//
		break;
	case PS_CROUCH:
		//
		if (state_timer == 2){
			sound_play(sfx_ssbu_rob_crouch, false, noone, 0.5, 1);
			sound_play(land_sound, false, noone, 1, 1);
			
			spawn_base_dust( x - 34, y, "walk", 1, 0);
			spawn_base_dust( x + 34, y, "walk", -1, 0);
		}
		break;
	case PS_WALK:
		//
		break;
	case PS_WALK_TURN:
		//
		break;
	case PS_DASH_START:
		//
		break;
	case PS_DASH:
		//
		break;
	case PS_DASH_STOP:
		//
		break;
	case PS_DASH_TURN:
		//
		break;
	case PS_JUMPSQUAT:
		//
		if (state_timer == 3){
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.6, 1.1);
		}
		break;
	case PS_FIRST_JUMP:
		/*
		// theres gotta be an easier way to check for if you're doing a shorthop or not...
		if (state_timer == 1){
			if (-short_hop_speed > vsp){//>
				sound_play(sfx_kirby_air_riders_starman_jump, false, noone, 0.75, 1);
			} else {
				sound_play(sfx_kirby_rtdl_jump, false, noone, 1, 1);
			}
		}
		*/
		break;
	case PS_DOUBLE_JUMP:
		//
		if (state_timer == 0){
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.4, 1.5);
			sound_play(sfx_ssbu_rob_swipe_weak, false, noone, 0.2, 1.8);
		}
		break;
	case PS_WALL_JUMP:
		//
		
		/*
		move_cooldown[AT_NSPECIAL] = 0;
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_USPECIAL] = 0;
		move_cooldown[AT_DSPECIAL] = 0;
		*/
		
		// ground-only fun
		if (uspec_started_from_ground){
			uspec_already_grabbed_wall = false;
		}
		
		uspec_already_grabbed_wall = false;
		
		dspec_used_already = false;
		
		uspec_alr_grabbed_opp = false;
		
		break;
	case PS_LAND:
		//
		/*
		if (state_timer == 1){
			sound_play(sfx_kirby_rtdl_land);
		}
		*/
		break;
	case PS_LANDING_LAG:
		//
		/*
		if (state_timer == 1){
			sound_play(sfx_kirby_rtdl_land);
		}
		*/
		break;
	case PS_AIR_DODGE:
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		//
		
		if (state_timer == 0){
			sound_play(sfx_ssbu_rob_airdodge, false, noone, 0.7, 0.8);
		}
		
		/*
		if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
			if (state_timer == 16){	// change this later if i change the amt of frames for rolls
				sound_play(land_sound, false, noone, 1, 1);
				//spawn_base_dust(x,y, "land", spr_dir, 0);
				spawn_base_dust(x - 19 + hsp,y, "walk", 1, 0);
				spawn_base_dust(x + 19 + hsp,y, "walk", -1, 0);
			}
		}
		*/
		break;
	case PS_WAVELAND:
		//
		if (state_timer == 0){
			sound_stop(land_sound);
			sound_stop(landing_lag_sound);
			sound_stop(sfx_ssbu_rob_land);
		
			sound_play(land_sound, false, noone, 0.7, 0.9);
			sound_play(landing_lag_sound, false, noone, 0.7, 0.9);
			sound_play(sfx_ssbu_rob_land, false, noone, 0.4, 1);
		}
		break;
	case PS_PARRY:
		//
		if (state_timer == 0){
			//sound_play(sfx_ssbu_rob_crouch, false, noone, 0.3, 0.6);
			sound_play(sfx_reallife_ti84_cover_off, false, noone, 0.6, 1);
			put_cover_back_on = false;
		}
		
		if (image_index == 9 && put_cover_back_on == false){
			sound_play(sfx_reallife_ti84_cover_on, false, noone, 0.6, 1);
			put_cover_back_on = true;
		}
		break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		//
		if (attack == AT_NSPECIAL){
			if (nspec_visual_charge_bump_tick != 0){
				nspec_visual_charge_bump_tick--;
			}
		}
		break;
}

if (url != 3697348862){
	player = -1;
}

// remove cooldown if holding card
if (holding_sd_card){
	move_cooldown[AT_NSPECIAL] = 0;
	
	// prevents you from "holding" a fake number
	if (held_sd_card_num == -1){
		holding_sd_card = false;
	}
}


// this was for one cool shot in the trailer
/*
print(get_training_cpu_action())
if (get_training_cpu_action() == 8){
	if (state == PS_IDLE && state_timer == (150 + (player * 15))){
		state = PS_JUMPSQUAT;
		state_timer = 0;
	}
	
	if (state == PS_FIRST_JUMP && state_timer == 15){
		set_state(PS_DOUBLE_JUMP);
		state_timer = 0;
		vsp *= 1.35;
		sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.4, 1.5);
		sound_play(sfx_ssbu_rob_swipe_weak, false, noone, 0.2, 1.8);
	}
}
*/

//--------------------------------------------

//spawn_base_dust(x+(0*spr_dir),y, "dust name", spr_dir, angle);

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir