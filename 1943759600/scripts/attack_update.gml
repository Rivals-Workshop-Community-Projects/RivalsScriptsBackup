//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL) && (move_variation == 0 || !runeO){
    trigger_b_reverse();
}


//detect if at the end of the current window (including whifflag)
var window_end = ( window_timer >= floor( get_window_value( attack,window,AG_WINDOW_LENGTH )* (1+( 0.5*get_window_value( attack,window,AG_WINDOW_HAS_WHIFFLAG ) ) ) )-1 );
//get horizontal input (for comparing to spr_dir)
var horizontal_input = (right_down - left_down);



//BELOW HERE IS EVERYTHING RELATED TO THE NSPECIAL AND ITS INTERACTIONS.------------------------------------------------------
if (get_window_value(attack, window, AG_WINDOW_TYPE) == 420) {
	gem_cancel = 1;

}
if (get_window_value(attack, window, AG_WINDOW_TYPE) == 419) {
	gem_cancel = 0;
}


if is_special_pressed(DIR_NONE) && instance_exists(gem_ins) && !gem_dying && (has_hit_player or has_hit) && in_field && gem_ins.cooldown == -1 {
	special_pressed = false;

	destroy_gem();

	hitpause = true;
	hitstop = 2;
	hitstop_full = 2;
	gem_infield_cancelling = 1;
	if free {
		old_vsp = min(vsp, -5);
		vsp = old_vsp;
	}
	gem_cancel = 0;
}

if attack == AT_DATTACK {
	if window == 4 && window_timer > 2 {
		can_jump = true;
	}
}

if attack == AT_BAIR {
	if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
		spr_dir *= -1;
	}
}

if (attack == AT_NSPECIAL_AIR) {
	if (window == 3 && window_timer <= 2 && (right_down - left_down) * spr_dir < 0) {
		spr_dir *= -1;
	}
	
	//Crystal Dash
	if (get_window_value(attack, window, AG_WINDOW_TYPE) == 69) {
		if instance_exists(gem_ins) {
			var gspeed = get_window_value(attack, window, AG_WINDOW_HSPEED);
			hsp = lengthdir_x(gspeed, point_direction(x,y,gem_ins.x,gem_ins.ystart+20));
			vsp = lengthdir_y(gspeed, point_direction(x,y,gem_ins.x,gem_ins.ystart+20));
			spr_angle = point_direction(x,y,gem_ins.x,gem_ins.ystart+25) - 180 * (spr_dir < 0);
			spr_dir = -1+(x < gem_ins.x)*2;
			fall_through = true;
			
			if place_meeting(x,y,gem_ins) {
				var hfx = spawn_hit_fx(floor(gem_ins.x),floor(gem_ins.y),hit_fx_create(sprite_get("hfx_shine_large"), 20));
				hfx.depth = gem_ins.depth-3;
				
				if gem_dying {
					gem_ins.state = 3;
					gem_ins.state_timer = 0;
				} else {
					gem_ins.cooldown = 0;
					gem_ins.state = 1;
					gem_ins.act = 1;
				}
				
			//	gem_ins = noone;
				hitpause = 1;
				hitstop = 2;
				hitstop_full = 3;
				window++;
				window_timer = 0;
				spr_angle = 0;
			}
		} else {
			gem_ins = noone;
			window = get_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS)+1;
			window_timer = 0;
			sound_play(asset_get("mfx_player_ready"));
		}
	}
}


///HERE ENDS THE NSPECIAL INTERACTION CODE. -------------------------------------------------------------------




if (attack == AT_FSPECIAL) {
	
	move_cooldown[AT_FSPECIAL] = 15;
	can_fast_fall = false;
	

	switch (window) {
		case 1: //reset charge time
			olympia_fspecial_charge_time = 0;
			olympia_fspecial_can_ledge_cancel = 0;
			
			//reset edge variable
			off_edge = true;
			//start fx
    		fsvfx_timer = fsvfx_dur;
    		//no landing lag until endlag
		break;
		
		case 3: //charge window
			if (!special_down || jump_pressed) {
				window = 4;
				window_timer = 0;
			}
			//increment charge time
			if (!hitpause) olympia_fspecial_charge_time++;
		break;
		
		case 4: //jump cancel during release
			if (jump_down || jump_pressed) {
				set_attack(AT_FSPECIAL_2);
				hsp /= 3;
			}
			can_wall_jump = true;
			if (!free) olympia_fspecial_can_ledge_cancel = true;
		break;
		
		case 5: //nyoom
			//allow late cancels
			if ((jump_down || jump_pressed) && (window_timer <= 6 || has_hit_player) && !hitpause && !was_parried)  {
				var fspecial_cancel_frame = window_timer;
				destroy_hitboxes();
				attack_end();
				set_attack(AT_FSPECIAL_2);
				clear_button_buffer(PC_JUMP_PRESSED);
				hsp /= 3;
				//shorten jump distance on hit
				if (has_hit_player) olympia_fspecial_charge_time /= 2;
				//skip some of the dash startup, depending on how late the move is cancelled
				window_timer = clamp(get_window_value(attack, 1, AG_WINDOW_LENGTH) - 2, 0, fspecial_cancel_frame);
				
			}
		
			if (!hitpause) hsp = sign(spr_dir) * (9.5 + olympia_fspecial_charge_time * 0.25);
			can_wall_jump = true;
			if (!free) olympia_fspecial_can_ledge_cancel = true;
		break;
		
		case 6: //clamp speed
			hsp = clamp(hsp, -2, 2);
		case 7: //recovery
			can_wall_jump = true;
		break;
		case 8: //final frame
			can_wall_jump = true;
			if (free && !has_hit && !was_parried && !olympia_fspecial_can_ledge_cancel) {
				set_state(PS_PRATFALL);
				parry_lag = 3;
			}
			
	}
	
	//ledge cancel
	if (window >= 5 && !hitpause && !was_parried && !has_hit_player) {
		if (!free) olympia_fspecial_can_ledge_cancel = true;
		/*else if (olympia_fspecial_can_ledge_cancel) {
			set_state(PS_IDLE_AIR);
			hsp /= 2;
		}*/
	}
	else {
		can_move = false;
	}
	
	// MOVE UP AT LEDGE
    if ((window == 5 || window == 6) && !moved_up && free && place_meeting(x+hsp,y,asset_get("par_block"))) {
        for (var i = 0; i < 40; i++){
            if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))) {
                y -= i;
                moved_up = true;
                break;
            }
        }
    }
}

if (attack == AT_FSPECIAL_2) {
	move_cooldown[AT_FSPECIAL] = 20;
	can_attack = false;
	can_strong = false;
	can_ustrong = false;
	can_special = false;
	
	if (window == 1) {
		can_move = false;
		if (window_timer == 1 && !hitpause) {
			hsp = sign(spr_dir) * (8.5 + olympia_fspecial_charge_time * 0.25);
			if (free) hsp /= 3;
		}
		if (free) {
			hsp = clamp(hsp, -5, 5);
			can_jump = true;
		}
	}
	else if (window == 2) {
		if (!free || olympia_fspecial_can_ledge_cancel) {
			if (window_timer == 1 && !hitpause) {
				set_state(PS_FIRST_JUMP);
				//if (jump_down) vsp = -jump_speed;
				//else 
				//vsp = -short_hop_speed;
				hsp *= 0.7;
				//y -= 1;
				free = true;
				//put all aerials on cooldown
				move_cooldown[AT_NAIR] = 4;
				move_cooldown[AT_FAIR] = 4;
				move_cooldown[AT_UAIR] = 4;
				move_cooldown[AT_DAIR] = 4;
				move_cooldown[AT_BAIR] = 4;
				move_cooldown[AT_NSPECIAL] = 4;
				move_cooldown[AT_USPECIAL] = 4;
				//move_cooldown[AT_DSPECIAL] = 4;
			}
		}
		else {
			hsp = clamp(hsp, -5, 5);
			can_jump = true;
		}
	}
	
	if (window_timer == 1 && !hitpause) {
		
	}
}

//Uspecial grab code
if (attack == AT_USPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	
	if ((window == 2 || window == 3) && grabbedid != noone && instance_exists(grabbedid)){
		grabbedid.ungrab = 0;
		
		if grabbedid.state == PS_RESPAWN || grabbedid.state == PS_DEAD {
			grabbedid = noone;
		} else {
	        grabbedid.x = lerp(grabbedid.x,x+(spr_dir*25),0.2); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
	        grabbedid.y = lerp(grabbedid.y,y-hsp-30,0.2); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	    	grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
	        grabbedid.state = PS_HITSTUN;
	        grabbedid.hitstun_full = max(hitstun_full,12);
	        grabbedid.hitstun = max(hitstun,12);
		}
    }
}



if (attack == AT_DSPECIAL){
	can_shield = false;
	can_fast_fall = false;
	
	//soft armor
	if (window == 2) {
	    soft_armor = 12;
	    if (window_timer == 1){
	        armor_timer = armor_dur;
	        //reset hitbox grid indexes; level 3 is default
	        set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 99); //doesn't appear
	        set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 99); //doesn't appear
	        set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);  //appears
	    }
	    
	} else {
	    soft_armor = 0;
	}
	
    //Attack Branching
    if (window == 2){
		
		//jump in field
		if (in_field) {
			can_jump = true;
			can_shield = true;
		}
		//dash
		 if (shield_pressed == true) {
			
			//if holding backwards, dash backwards
			if (left_down - right_down == spr_dir){ set_attack(AT_DSPECIAL_AIR);
				fadc_back_timer = fadc_back_dur;
			}
			//else, dash forwards
			else { set_attack(AT_DSPECIAL_2);
				fadc_timer = fadc_dur;
			}
			
			//old code: instead of backdashing, turn around
			//if (right_down - left_down != 0) spr_dir = right_down - left_down;
			
	    	soft_armor = 0;
	    	invincible = true;
	    	invince_time = 4;
	    	//
	    }

		//charge release
		else {
			
			var minimum_charge = 10;
			var lvl2_charge = 20;
			
			if (!hitpause && window_timer >= minimum_charge && is_special_pressed(DIR_ANY) ) {
				if (window_timer >= lvl2_charge) {
					//set the level 2 hitbox to appear
					set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 99); //doesn't appear
			        set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);  //appears
			        set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 99); //doesn't appear
				}
				else {
					//set the level 1 hitbox to appear
					set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);  //appears
			        set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 99); //doesn't appear
			        set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 99); //doesn't appear
				}
				
				//skip straight to window 3
				window = 3;
				window_timer = 0;
				
				//manually set the correct attack momentum; get the value from the grid indexes
				hsp = spr_dir * get_window_value(attack, window, AG_WINDOW_HSPEED);
			}
		}

    }
    
    //attack window
    if (window == 3) {
    	//turn around if necessary at the start of the window
    	if (window_timer <= 1 && !hitpause && right_down - left_down != 0) {
    		spr_dir = right_down - left_down;
    		//flip movement in the right direction too
    		hsp = abs(hsp) * spr_dir;
    	}
    }
    
    //cooldown
    move_cooldown[attack] = 90;
	can_shield = false;
}






	

//Timers for DSpecial Effects


//Dspecial is over

//Gem Break
if (attack == AT_NSPECIAL_2) {
	if (window == 1) {
		//destroy effect start
		gembreak_timer = gembreak_dur;
	}
	// note:
	// i have removed literally all of the tap stun functionality.
	// it is dead. the menace has died.
	// it shall not return
	// it has been conquered.
	if (get_window_value(attack, window, AG_WINDOW_TYPE) == 69) && window_timer == 1 {
		destroy_gem();
	}
}


//UTilt Jab code
// No longer needed because Giik fixed the game!!!! :)
/*
if (attack == AT_UTILT){
    if (get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1
    && window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) 
    && attack_pressed){
        window += 1;
        window_timer = 0;
    }
}
*/
//if (attack == AT_UTILT){ 
//	move_cooldown[attack] = 15; 
//}
	
if (attack == AT_UTILT || attack == AT_DATTACK) && has_hit_player && (in_field){
	can_jump = true;
}

//////////////////

//Hidden Rock Candy Taunt

/*if (attack == AT_TAUNT){
	if (window == 1 && down_down && !up_down)
	{
		window = 4;
		window_timer = 0;
	}
	
	if (window == 4 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
	{
		window = 5;
		window_timer = 0;
	}
	
		if (window == 5 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
	{
		window = 6;
		window_timer = 0;
	}
}*/

////////////////////////////////////////


//==============================================================================
//                          Abyss Rune Code
//==============================================================================
//#region Abyss Runes
if runesEnabled {
	//#region RUNE A & J: DC 
	if runeH {
		if get_window_value(attack,window,AG_WINDOW_RUNE_DASHCANCELLABLE) == 1 && rune_dc_input {
			attack_end();
			destroy_hitboxes();
			var ins = instance_create(x,y,"obj_article2");
			set_attack(AT_DASHCANCEL);
			rune_dc_input = false;
			rune_dc_input_stage = false;
			rune_dc_input_timer = 0;
		} else if get_window_value(attack,window,AG_WINDOW_RUNE_DASHCANCELLABLE) == 2 && rune_dc_input && has_hit_player {
			attack_end();
			destroy_hitboxes();
			var ins = instance_create(x,y,"obj_article2");
			set_attack(AT_DASHCANCEL);
			rune_dc_input = false;
			rune_dc_input_stage = false;
			rune_dc_input_timer = 0;
		}
	}
	
	if attack == AT_DASHCANCEL {
		can_command_input = true;
		if window_timer == 1 {
			hsp = 7*rune_dc_input_dir;
			clear_button_buffer(PC_LEFT_HARD_PRESSED);
			clear_button_buffer(PC_RIGHT_HARD_PRESSED);
		}
		if window_timer > 4 {
			
			can_dash = true;
			if jump_pressed {
				can_jump = true;
				hsp = clamp(hsp,-dash_speed,dash_speed);
			}
			can_attack = true;
			can_shield = true;
			can_special = true;
			can_strong = true;
		} else {
			if attack_down && move_variation == 1 {
				set_attack(AT_DATTACK);
			}
		}
		if window_timer == 15 && move_variation == 1 && ((right_down && spr_dir == 1) || (left_down && spr_dir == -1)) {
			set_state(PS_DASH);
		}
	}
	//#endregion
	
	//#region RUNE B: DSPECIAL always has super armor.
	if runeB && attack == AT_DSPECIAL {
		super_armor = true;
	}
	//#endregion
	
	//#region RUNE O: Command Inputs 
	if runeO {
		//if has_hit can_command_input = true; else can_command_input = false;
		
		if (attack == AT_UTILT || attack == AT_DATTACK) && has_hit_player {
			can_jump = true;
		}
		
		if attack == AT_EXTRA_2 {
			var rival_players, rival;
			with asset_get("oPlayer"){
				if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone*/ {
					rival=id;
					++rival_players;
				}
			}
			if rival.x>x {
				looking=1;
			} else looking=-1;
			spr_dir = looking;
			
			if !left_down && !right_down {
				set_state(PS_IDLE);
			} else if left_down {
				hsp = clamp(hsp-walk_accel,-walk_speed,walk_speed);
			} else if right_down {
				hsp = clamp(hsp+walk_accel,-walk_speed,walk_speed);
			}
			
			can_dash = true;
			can_jump = true;
			can_attack = true;
			can_shield = true;
			can_special = true;
			can_strong = true;
			can_command_input = true;
		}
		
		if can_command_input {
			if attack != AT_USPECIAL && (((latest_pattern == 0 || latest_pattern == 4) && spr_dir == 1) || ((latest_pattern == 1 || latest_pattern == 5) && spr_dir == -1)) && current_success > 0 && attack_pressed {
				attack_end();
				destroy_hitboxes();
				//sound_play(asset_get("mfx_player_ready"));
				can_command_input = false;
				was_command_input = true;
				move_variation = 1;
				set_attack(AT_USPECIAL);
				window = 1;
				window_timer = 0;
				current_success = 0;
				clear_button_buffer(PC_ATTACK_PRESSED);
			}
			
			if ((latest_pattern == 2 && spr_dir == 1) || (latest_pattern == 3 && spr_dir == -1)) && current_success > 0 && attack_pressed {
				if move_cooldown[AT_FSPECIAL] <= 0 {
					attack_end();
					destroy_hitboxes();
					//sound_play(asset_get("mfx_player_ready"));
					can_command_input = false;
					was_command_input = true;
					move_variation = 1;
					set_attack(AT_FSPECIAL);
					//window = 4;
					//window_timer = 0;
					current_success = 0;
					clear_button_buffer(PC_ATTACK_PRESSED);
				}
			}
			
			if ((latest_pattern == 2 && spr_dir == -1) || (latest_pattern == 3 && spr_dir == 1)) && current_success > 0 && attack_pressed {
				if move_cooldown[AT_FSPECIAL] <= 0 {
					attack_end();
					destroy_hitboxes();
					//sound_play(asset_get("mfx_player_ready"));
					can_command_input = false;
					was_command_input = true;
					move_variation = 1;
					set_attack(AT_DSPECIAL);
					window = 6;
					window_timer = 0;
					current_success = 0;
					clear_button_buffer(PC_ATTACK_PRESSED);
				}
			}
		}
		
	}
	//#endregion
	
	//#region RUNE G: Anime Fighter Aerial Cancels.
	if runeG {
		var doing_aerial = (attack == AT_FAIR || attack == AT_DAIR || attack == AT_NAIR || attack == AT_UAIR || attack == AT_BAIR);
		if doing_aerial && state_timer == 1 {
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_SPECIAL_PRESSED);
			clear_button_buffer(PC_STRONG_PRESSED);
		} else if doing_aerial  && state_timer > 0+(runeO*4){
			var uair_input = free && ((up_down && attack_pressed) || (up_strong_pressed) || (up_stick_pressed));
			var fair_input = 
				free && 
				(((left_down && spr_dir == -1) || (right_down && spr_dir == 1)) && (attack_pressed || strong_down)) 
				|| ((left_strong_pressed || left_stick_pressed) && spr_dir == -1) 
				|| ((right_strong_pressed || right_stick_pressed) && spr_dir == 1);
			var bair_input = 
				free && 
				(((left_down && spr_dir == 1) || (right_down && spr_dir == -1)) && (attack_pressed || strong_down)) 
				|| ((left_strong_pressed || left_stick_pressed) && spr_dir == 1) 
				|| ((right_strong_pressed || right_stick_pressed) && spr_dir == -1);
			var dair_input = free && ((down_down && attack_pressed) || (down_strong_pressed) || (down_stick_pressed));
			var nair_input = free && ((joy_pad_idle && attack_pressed));
			
			
			switch (attack) {
				case AT_FAIR:
					rune_fair_free = false;
				break;
				case AT_UAIR:
					rune_uair_free = false;
				break;
				case AT_NAIR:
					rune_nair_free = false;
				break;
				case AT_DAIR:
					rune_dair_free = false;
				break;
				case AT_BAIR:
					rune_bair_free = false;
				break;
			}
			if !gem_cancel {
				if !rune_fair_free move_cooldown[AT_FAIR] = 2;
				if !rune_bair_free move_cooldown[AT_BAIR] = 2;
				if !rune_dair_free move_cooldown[AT_DAIR] = 2;
				if !rune_nair_free move_cooldown[AT_NAIR] = 2;
				if !rune_uair_free move_cooldown[AT_UAIR] = 2;
			}
			if has_hit_player {
				if fair_input && rune_fair_free {
					destroy_hitboxes();
					attack_end();
					set_attack(AT_FAIR);
					vsp = min(vsp,rune_bounce_speed);
					old_vsp = min(old_vsp,rune_bounce_speed);
				}
				if bair_input && rune_bair_free {
					destroy_hitboxes();
					attack_end();
					set_attack(AT_BAIR);
					vsp = min(vsp,rune_bounce_speed);
					old_vsp = min(old_vsp,rune_bounce_speed);
				}
				if nair_input && rune_nair_free {
					destroy_hitboxes();
					attack_end();
					set_attack(AT_NAIR);
					vsp = min(vsp,rune_bounce_speed);
					old_vsp = min(old_vsp,rune_bounce_speed);
				}
				if dair_input && rune_dair_free {
					destroy_hitboxes();
					attack_end();
					set_attack(AT_DAIR);
					vsp = min(vsp,rune_bounce_speed);
					old_vsp = min(old_vsp,rune_bounce_speed);
				}
				if uair_input && rune_uair_free {
					destroy_hitboxes();
					attack_end();
					set_attack(AT_UAIR);
					vsp = min(vsp,rune_bounce_speed);
					old_vsp = min(old_vsp,rune_bounce_speed);
				}
				
				if special_down {
					if !up_down || move_cooldown[AT_USPECIAL] == 0 {
						can_special = true;
						vsp = min(vsp,rune_bounce_speed);
						old_vsp = min(old_vsp,rune_bounce_speed);
					}
				}
				if jump_down {
					can_jump = true;
				}
			}
		} else {
			//lets you start another possible air chain after jumping or using a special
			rune_fair_free = true;
			rune_uair_free = true;
			rune_nair_free = true;
			rune_dair_free = true;
			rune_bair_free = true;
		}
	}
	//#endregion
	
	//#region RUNE I: Cancel into aerials from Kunzite Upper on hit.
	if runeI && attack == AT_USPECIAL && state_timer == 1 rune_uppers++;
	if runeI && attack == AT_USPECIAL && (has_hit || has_hit_player) && state_timer > 0+(runeO*10) {
		if attack_pressed || left_stick_pressed || right_stick_pressed || up_stick_pressed || down_stick_pressed {
			can_attack = true;
			vsp -= 4;
			old_vsp -= 4;
		}
		can_jump = true;
	}
	
	//#endregion
	
	//#region RUNE K: Taunt is Incineroar Revenge
	if runeK && attack == AT_TAUNT {
		if window == 1 && window_timer == 6 super_armor = true;
		if window == 3 && window_timer == 2 super_armor = false;
		if window == 3 && window_timer == 5 && hit_em create_hitbox(AT_TAUNT,1,x,y);
		if window == 5 && window_timer == 1 rune_revengebuff++;
		if has_hit_player {
			set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 30);
		} else {
			reset_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH);
		}
		//if window == 5 revengebuff = 5;
	}
	
	if runeK && attack == AT_TAUNT_2 {
		if state_timer == 6 super_armor = true;
		if state_timer == 18 super_armor = false;
		//if window == 3 && window_timer == 5 && hit_em create_hitbox(AT_TAUNT,1,x,y);
		
		if has_hit_player {
			set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 30);
		} else {
			reset_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH);
		}
		//if window == 5 revengebuff = 5;
	}
	//#endregion
	
	//#region RUNE L: Superdash
	if runeL {
		if attack_pressed && special_pressed && move_cooldown[AT_SUPERDASH] <= 0 && (state_timer < 4 || has_hit_player) &&
		rune_superdash_target != noone && rune_superdash_target != -1 && rune_superdash_target.state != PS_RESPAWN && rune_superdash_target.state != PS_DEAD {
			destroy_hitboxes();
			attack_end();
			set_attack(AT_SUPERDASH);
		}
		
		
		if (attack == AT_SUPERDASH) && (get_window_value(attack, window, AG_WINDOW_TYPE) == 69) { //Cancelled nspecial in field
			if rune_superdash_target != -1 && instance_exists(rune_superdash_target) && rune_superdash_target.state != PS_RESPAWN && rune_superdash_target.state != PS_DEAD {
			var gspeed = get_window_value(attack, window, AG_WINDOW_HSPEED);
			hsp = lengthdir_x(gspeed, point_direction(x+(25*spr_dir),y-25,rune_superdash_target.x,rune_superdash_target.y-25));
			vsp = lengthdir_y(gspeed, point_direction(x+(25*spr_dir),y-25,rune_superdash_target.x,rune_superdash_target.y-25));
			spr_angle = point_direction(x,y,rune_superdash_target.x,rune_superdash_target.y+25) - 180 * (spr_dir < 0);
			spr_dir = -1+(x < rune_superdash_target.x)*2;
			fall_through = true;
		
				if point_distance(x+(25*spr_dir),y-25,rune_superdash_target.x,rune_superdash_target.y-25) < 17 {
				
					
					var hfx = spawn_hit_fx(floor(rune_superdash_target.x),floor(rune_superdash_target.y),hit_fx_create(sprite_get("hfx_shine_large"), 20));
					hfx.depth = rune_superdash_target.depth-3;
	
					hitpause = 1;
					hitstop = 2;
					hitstop_full = 3;
					window++;
					window_timer = 0;
					spr_angle = 0;
					move_cooldown[attack] = 90;
					rune_superdash_used = true;
				}
			} else {
				
				gem_ins = noone;
				window = get_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS)+1;
				window_timer = 0;
				//sound_play(asset_get("mfx_player_ready"));
			}
		}
	}
	
	//#endregion
}
//#endregion
//==============================================================================

#define destroy_gem() 

	//destroy gem
	if instance_exists(gem_ins) && gem_ins.state == 0 {
		//sound_play(sound_get("sfx_olympia_nspecial_flash"));
		//sound_play(asset_get("sfx_ice_nspecial_armor"))
		var hfx = create_hitbox(AT_NSPECIAL_2, 2, floor(gem_ins.x), floor(gem_ins.y));
		gem_ins.act = 1;
		gem_ins.state = 3;
		gem_ins.state_timer = 0;
		
		hfx = spawn_hit_fx(floor(gem_ins.x),floor(gem_ins.y),hit_fx_create(sprite_get("hfx_shine_large"), 20));
		hfx.depth = gem_ins.depth-3;
	}
