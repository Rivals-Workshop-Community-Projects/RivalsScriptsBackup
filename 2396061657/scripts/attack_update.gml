// attack_update.gml
// Called every frame, but only if the character is performing an attack

/*
if (attack == AT_TAUNT && state_timer == 10){
	room = 57;
}
*/


// Neutral Special
if (attack == AT_DSPECIAL){

	if (state_timer == 1){
		nspecial_charge = 0;
		focus_armorbreak = false;
		LoveStorage = 0;
		nspecial_hitpause = 15;
		nspecial_damage = 3;
		set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, nspecial_hitpause);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, nspecial_damage);
	}
	
	if (state_timer == 4){
		if (!hitpause){
			sound_play(sound_get("nspecialcharge"));
		}	
	}
	
	move_cooldown[AT_DSPECIAL] = 100;

	if (special_down && LoveMeter >= 10){
		nspecial_charge += 1;

		if (window == 1 && window_timer == 16){
			window_timer = 15;
			window = 1;
		}

		if (nspecial_charge % 10 == 0){
			LoveMeter -= 10;
			LoveStorage += 10;
			nspecial_hitpause = 15 + (LoveStorage/2);
			set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, nspecial_hitpause);
			nspecial_damage += 1;
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, nspecial_damage);
		}
		
	}
	if (window == 1 && window_timer >= 4){
		if (!focus_armorbreak){
			soft_armor = 999;
		}
		
		else { soft_armor = 0 }
	}
	
	if (window == 2){
		focus_armorbreak = false;
		soft_armor = 0;
	}
	
	// Dash Cancel
	if (window == 1 && window_timer >= 4){
		if (shield_pressed || shield_down){
			if (spr_dir == 1){
				if (left_pressed || left_down){
					window = 5;
					window_timer = 0;
					hsp = -8;
					spr_dir = -1;
				}
				else {
					window = 5;
					window_timer = 0;
					hsp = 8;
					spr_dir = 1;
				}
			}
			else {
				if (right_pressed || right_down){
					window = 5;
					window_timer = 0;
					hsp = 8;
					spr_dir = 1;
				}
				else {
					window = 5;
					window_timer = 0;
					hsp = -8;
					spr_dir = -1;
				}		
			}
		}
	}
	
	// Dash Cancel SFX
	if (window == 5 && window_timer == 1){
		sound_play(sound_get("CMN_SWISH_2"));
	}
	
	if (window == 5){
	
		if (!focus_armorbreak){
			soft_armor = 999;
		}
		
		else { soft_armor = 0 }
		
	}
	
	// Turnaround
	if (window == 1 && window_timer == 18){
		if (!shield_pressed && !shield_down){
			if (left_down || left_pressed){
				spr_dir = -1;
			}
			if (right_down || right_pressed){
				spr_dir = 1;
			}
		}
	}
	

/*		
    if ((window == 4 || window == 3) && has_hit_player){ // Allows player to cancel last animation early on hit
		can_special = true;
		can_attack = true;
    	can_jump = true;
		can_move = true;
		can_strong = true;
		can_ustrong = true;
		can_shield = true;		
		can_walk = true;
	}
*/

}

//B - Reversals
if (attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Neutral Air
if (attack == AT_NAIR){
	if (window == 1 && window_timer == 9){
		sound_play(sound_get("ustrongtwinkle"));
	}
	
	if (!free){
		if (window <= 3){
			window_timer = 0;
		}
		destroy_hitboxes();
		window = 4;
	}
	// Can cancel nair early if they land a hit
	if (has_hit_player && !free){
		can_attack = true;
//		can_jump = true;
		can_move = true;
		can_special = true;
		can_walk = true;
	}
}

// Dash Attack
if (attack == AT_DATTACK){
	if (has_hit_player && window == 4){ // Can cancels things early if has hit a player
		can_attack = true;
		can_jump = true;
		can_move = true;
		can_special = true;
		can_walk = true;
	}
}

// Allows for wall jumps during certain attacks
if (attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_NTHROW && window == 4){
	can_wall_jump = true;
}

// Checks if touching ledge and slides the character upward
if ((attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || state == PS_HITSTUN) && window == 2) || ((attack == AT_DTHROW || attack == AT_NTHROW || attack == AT_UTHROW || attack == AT_FTHROW) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))){
	if (window == 2 && !hitpause){
		if (place_meeting(x + (5 * spr_dir), y + 35, asset_get("par_block")) && !place_meeting(x + (5 * spr_dir), y - 40, asset_get("par_block")) && free && hsp == 0){
//			print("pain");
			y -= 5;
		}
	}
}

// Allows player to gain meter during training mode by pressing taunt
if (attack == AT_TAUNT && state_timer == 1 && get_training_cpu_action() != CPU_FIGHT){
	if (LoveMeter <= 190){
		LoveMeter += 10;
	}
}

// Disables fast falls during throw animations
if (attack == AT_UTHROW || attack == AT_FTHROW || attack == AT_DTHROW || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
	can_fast_fall = false;
}


// Ribbon Throw
if (attack == AT_NTHROW){
	if (window < 3){
		can_move = false;
		can_fast_fall = false;
	}
	else{
		can_attack = true;
		can_jump = true;
		can_move = true;
		can_fast_fall = true;
		
		if (down_pressed && nthrowFastFall){ // Allows for fast falling during Ribbon Throw
			attack_end();
			window = 4;
			with (oPlayer){
				isRibbon = false;
				RibbonCounter = 0;
			}
		}
		
		if (down_pressed){
			nthrowFastFall = true;
		}
	}
	
	if (window == 2 && window_timer == 1){
		vsp = floor((RibbonVSP)/2) * 2;
		hsp = floor((RibbonHSP * spr_dir) / 2) * 2;
	}
}

// Down Special
if (attack == AT_NSPECIAL){ 
	if (window == 1){ // Assigns item to next one in list
		hud_offset = hud_offset + 20;
		if (window_timer == 1){
			if (GrappleMode < 3){
				GrappleMode++
			}
			else{ GrappleMode = 0 }
		}
	}
	
	if (window > 1){
		hud_offset = 65;
	}

	if (window == 2 && special_down){ // Brings up item select menu
		if (up_down && !down_down && !right_down && !left_down){
			if (up_down && up3 != 1.5){
				sound_stop(sound_get("itemhover"));
				sound_play(sound_get("itemhover"), false, noone, .7, 1);
			}
			GrappleMode = 3;
			up0 = 1;
			up1 = 1;
			up2 = 1;
			up3 = 1.5;
		}
		if (!up_down && down_down && !right_down && !left_down){
			if (down_down && up1 != 1.5){
				sound_stop(sound_get("itemhover"));
				sound_play(sound_get("itemhover"), false, noone, .7, 1);
			}
			GrappleMode = 1;
			up0 = 1;
			up1 = 1.5;
			up2 = 1;
			up3 = 1;
		}
		if (!up_down && !down_down && right_down && !left_down){
			if (right_down && up0 != 1.5){
				sound_stop(sound_get("itemhover"));
				sound_play(sound_get("itemhover"), false, noone, .7, 1);
			}
			GrappleMode = 0;
			up0 = 1.5;
			up1 = 1;
			up2 = 1;
			up3 = 1;
		}
		if (!up_down && !down_down && !right_down && left_down){
			if (left_down && up2 != 1.5){
				sound_stop(sound_get("itemhover"));
				sound_play(sound_get("itemhover"), false, noone, .7, 1);
			}
			GrappleMode = 2;
			up0 = 1;
			up1 = 1;
			up2 = 1.5;
			up3 = 1;
		}
		
	}
	
	if (special_down && window == 3 && window_timer == 1){ // loops item select window
		window = 2;
	}
	
	if (window == 3){ // Spawns whatever item is selected
		if (window_timer == 12){
			sound_play(sound_get("giftselect"));
		}
		up0 = 1;
		up1 = 1;
		up2 = 1;
		up3 = 1;
		if (window_timer >= 12){
			can_move = true;
			can_special = true;
			can_attack = true;
			can_jump = true;
			can_strong = true;
			can_ustrong = true;
			can_shield = true;		
			can_walk = true;
		}
	}
}

// Dialogue Stuff!

if (attack == AT_TAUNT && state == PS_ATTACK_GROUND && DG_chat_num >= 1){
//	if (isTaunt && window_timer	== 10){
		hitpause = true;
		hitstop = 1;
		can_shield = true;
//	}
}
