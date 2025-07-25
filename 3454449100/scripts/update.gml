// update.gml

/*
with(asset_get("oPlayer")){
	print("player " + string(player) + " - team number: " + string(get_player_team( player )))
}
*/

// print("spr_angle: " + string(spr_angle))

// print(get_window_value( AT_DSTRONG, 10, AG_WINDOW_HSPEED ));
// print(string(get_window_value( AT_FSTRONG, 3, AG_WINDOW_HSPEED ) / 12.5));
test_horiz_speed_mult = (get_window_value( AT_FSTRONG, 3, AG_WINDOW_HSPEED ) / 12.5);

// HEEEEELP MEE
uspecPityStompX1Coord = x - 16 + hsp;
uspecPityStompY1Coord = y - 36 + vsp;
uspecPityStompX2Coord = x + 16 + hsp;
uspecPityStompY2Coord = y - 56 + vsp;

if (carryingShell){
	shellCarryTimer_Y++;
	shellCarryTimer_N = 0;
	
	if (shellCarryTimer_Y == 1){
		user_event(7);
	}
	if (shellCarryTimer_Y >= 2){
		shellCarryTimer_Y = 2;
	}
} else if (!carryingShell){
	shellCarryTimer_N++;
	shellCarryTimer_Y = 0;
	
	if (shellCarryTimer_N == 1){
		user_event(7);
	}
	if (shellCarryTimer_N >= 2){
		shellCarryTimer_N = 2;
	}
}

if (!joy_pad_idle){
	if (joy_dir > 90 && joy_dir < 181){
		dir_joy = abs((joy_dir-90)-90);
		dir_joy_direction = -1;
		dir_joy_direction_vert = -1;
	} else if (joy_dir > 180 && joy_dir < 271){
		dir_joy = abs(joy_dir-180);
		dir_joy_direction = -1;
		dir_joy_direction_vert = 1;
	} else if (joy_dir > 270){
		dir_joy = abs((joy_dir-270)-90);
		dir_joy_direction = 1;
		dir_joy_direction_vert = 1;
	} else {
		dir_joy = abs(joy_dir);
		dir_joy_direction = 1;
		dir_joy_direction_vert = -1;
	}
	dir_joy_remember = dir_joy;
	dir_joy_remember_direction_vert = dir_joy_direction_vert;
} else {
	dir_joy = dir_joy_remember;
	dir_joy_direction = spr_dir;
	dir_joy_direction_vert = dir_joy_remember_direction_vert;
}

dir_actual = (radtodeg(dir_joy))/57.29577778; //don't ask why i chose 57.29577778
dir_sin = dir_actual/90;
dir_cos = abs(1 - dir_sin);

// print(dir_actual)
// print("cos: " + string(dir_cos))
// print("sin: " + string(dir_sin))

if (state != PS_ATTACK_GROUND){
	if (!free){
		set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
	} else {
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	}
}

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
			sound_play(sfx_nsmbds_crouch);
			// sound_play(asset_get("sfx_death1"));
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
		if (state_timer < 8 && state_timer mod 4 == 0){
			sound_play(sfx_smb3_skid, false, noone, 0.15, 1);
		}
		break;
	case PS_JUMPSQUAT:
		//
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		//
		if (state_timer == 1){
			sound_stop(jump_sound);
		}
		break;
	case PS_WALL_JUMP:
		//
		move_cooldown[AT_FSPECIAL] = 0;
		if (state_timer == 3){
			sound_play(sfx_nsmbwii_player_jump2, false, noone, 0.65, 1.15);
			sound_play(sfx_nsmbwii_player_spinonce, false, noone, 0.95, 1);
		}
		break;
	case PS_LAND:
		//
		break;
	case PS_LANDING_LAG:
		//
		break;
	case PS_AIR_DODGE:
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		//
		if (window == 1 && window_timer == 0){
			sound_play(sfx_nsmbwii_player_spinonce, false, noone, 0.75, 1.45);
		}
		break;
	case PS_WAVELAND:
		//
		if (state_timer == 1){
			sound_stop(jump_sound);
			sound_play(sfx_nsmbds_groundpound_landshell);
		}
		break;
	case PS_PARRY:
		//
		break;
}

if (state == PS_AIR_DODGE || state == PS_WAVELAND /*|| state == PS_PARRY_START || ( (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && window == 0)*/ ){
	if (instance_exists(currKoopaShell)){
		if (place_meeting(x, y, currKoopaShell)){
			//spawn_hit_fx(x, y, 302);
			if (currKoopaShell.ownedByOriginalKoopaAndReboundedOffOfEnemy){
				spawn_hit_fx(currKoopaShell.x, currKoopaShell.y - 12, 302);
				sound_play(sfx_smashult_item);
			
				carryingShell = true;
				grabbedShellFromNSpec = false;
				
				if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
					if (state == PS_ROLL_FORWARD){
						spr_dir = currKoopaShell.spr_dir*-1;
					}
					
					hsp = roll_forward_max*spr_dir;
				}
			
				delete_koopa_shell();
				
				with(obj_article1){
					if (instance_exists(isAKoopaShell)){
						vsp = -12;
					}
				}
				
				set_state(PS_IDLE);
				
				specialShellRegrabTimer = 0;
				
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				clear_button_buffer(PC_SHIELD_PRESSED);
				
				hitpause = false;
				hitstop = 0;
				
				hsp = shellGrabCancelStoredHSP;
				vsp = shellGrabCancelStoredVSP;
				
				hsp *= 1.35;
				hsp = clamp(hsp, -14, 14);
				
				// this restores previous speeds because when you go into airdodge lose all speed lol
				hsp = prevHoldShellHSP;
				vsp = prevHoldShellVSP;
				
				move_cooldown[AT_NSPECIAL] = 0;
			}
		}
	}
}

if (isJamBuild == false){
	if (url != 3454449100){
		player = -1;
	}
}

// print(move_cooldown[AT_NSPECIAL])

if (!free || state_cat == SC_HITSTUN){
	if (state_cat == SC_HITSTUN){
		move_cooldown[AT_FSPECIAL] = 0;
	}
	if (!free && move_cooldown[AT_FSPECIAL] > 60){
		move_cooldown[AT_FSPECIAL] = 45;
	}
}

// this is to not make the transition between jabs 1 and 2 look... weird from a positioning view.
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_JAB){
		if (window == 4){
			if (window_timer == 0){
				var doNotMoveWithJabTwo = false;
			
				var distToCheckFor = (15 * spr_dir);
				if (!place_meeting(x + distToCheckFor, y + 6, asset_get("par_block")))
				&& (!place_meeting(x + distToCheckFor, y + 6, asset_get("par_jumpthrough")))
				&& (!place_meeting(x + distToCheckFor, y + 6, asset_get("obj_article_platform")))
				&& (!place_meeting(x + distToCheckFor, y + 6, asset_get("obj_article_solid"))){
					doNotMoveWithJabTwo = true;
				}
			
				if (doNotMoveWithJabTwo == false){
					x += (12 * spr_dir);
					// hsp += (4 * spr_dir);
				}
			}
		}
	}
	
	// creating fallen wings visual for uspecial
	if (attack == AT_USPECIAL){
		if ((window == 6 && window_timer == 0) || (window == 12 && window_timer == 0)){
			if (!hitpause){	// if i dont throw this check here somethings gonna go wrong
				user_event(3);
			}
		}
		
		if (window == 6 && window_timer == 0){
			if (uspecWasStompedOn){
				uspecWasStompedOn = false;
				
				sound_play(sfx_nsmbds_kick, false, noone, .65, 0.95);
				sound_play(sfx_nsmbds_hitblock, false, noone, .65, 1.25);
				
				spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir, 180);
			}
		}
	}
}

// shell jump vfx n stuff
if (jumpedOnShell){
	jumpedOnShell = false;
	
	spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir);
}

// drop shell if using defensive action
if (shield_pressed && carryingShell && !hitpause){
	if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_HITSTUN && state != PS_HITSTUN_LAND){
		if (state == PS_PARRY_START || state == PS_AIR_DODGE){
			// z drop shell
			
			sound_stop(air_dodge_sound);
			
			clear_button_buffer( PC_SHIELD_PRESSED );
			if (!free){
				set_state(PS_IDLE);
			} else {
				set_state(PS_IDLE_AIR);
			}
			
			// print(prevHoldShellHSP);
			// print(prevHoldShellVSP);
			
			zdrop_shell();			
			
			// this restores previous speeds because when you go into airdodge lose all speed lol
			hsp = prevHoldShellHSP;
			vsp = prevHoldShellVSP;
		} else if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
			// print("should NOT zdrop!")
		
			clear_button_buffer( PC_SHIELD_PRESSED );
			
			carryingShell = false;
			
			var droppedShell = instance_create(x + (4 * spr_dir), y - 2, "obj_article3");
			
			droppedShell.spr_dir = spr_dir;
			droppedShell.hsp = 3.5 * spr_dir;
			droppedShell.vsp = -9;
		}
	}
} else {
	prevHoldShellHSP = hsp;
	prevHoldShellVSP = vsp;
}

if (carryingShell){
	numShellTimeRebound = 0;
	shellhittracker = 0;
	
	if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
	
	&& (attack == AT_JAB
	|| attack == AT_FTILT
	|| attack == AT_UTILT
	|| attack == AT_DTILT
	|| attack == AT_DATTACK
	|| attack == AT_NAIR
	|| attack == AT_FAIR
	|| attack == AT_UAIR
	|| attack == AT_BAIR
	|| attack == AT_DAIR
	|| attack == AT_FSTRONG
	|| attack == AT_USTRONG
	|| attack == AT_DSTRONG)
	){
		print("not sure how koopa is holding shell. get rid of it.");
		
		throw_discarded_shell();
		if (!free){
			set_state(PS_IDLE);
		} else {
			set_state(PS_IDLE_AIR);
		}
	}
}

//--------------------------------------------
// Function for spawning a Koopa Shell
#define zdrop_shell()

// flags koopa to say "hey, i don't have shell in my hands anymore!"
carryingShell = false;

// print("zdropping shell!")

// if shell doesn't exist, then spawn it!
if (currKoopaShell == noone){

	currKoopaShell = instance_create(x + (8 * spr_dir), y - 8, "obj_article1");
	
	currKoopaShell.spr_dir = spr_dir;
	
	currKoopaShell.hsp = 0.5*spr_dir;
	currKoopaShell.vsp = -3.5;
	
	currKoopaShell.state = 3;
	
	sound_play(sfx_smashult_item, false, noone, 1, 0.65);
	
	numShellTimeRebound = 0;
	shellhittracker = 0;
}

//--------------------------------------------

// Function for deleting a Koopa Shell
#define delete_koopa_shell()

if (instance_exists(currKoopaShell)){
	if (instance_exists(currKoopaShell)){
		with (currKoopaShell){
			shouldBeDestroyed = true;
			playerGrabbedShell = true;
		}
		numShellTimeRebound = 0;
		shellhittracker = 0;
		currKoopaShell = noone;
	}
	
}

//--------------------------------------------

#define throw_discarded_shell()

carryingShell = false;
			
var droppedShell = instance_create(x + (4 * spr_dir), y - 2, "obj_article3");
	
droppedShell.spr_dir = spr_dir;
droppedShell.hsp = 3.5 * spr_dir;
droppedShell.vsp = -9;

// yeah

//--------------------------------------------

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
newdust.draw_angle = angle;