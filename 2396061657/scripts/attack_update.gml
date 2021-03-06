// attack_update.gml
// Called every frame, but only if the character is performing an attack

/*
if (attack == AT_TAUNT && state_timer == 10){
	room = 57;
}
*/

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
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

// Allows player to gain meter during training mode by pressing taunt
if (attack == AT_TAUNT && state_timer == 1 && get_training_cpu_action() != CPU_FIGHT){
	if (LoveMeter <= 190){
		LoveMeter += 10;
	}
}

// Disables fast falls during throw animations
if (attack == AT_UTHROW || attack == AT_FTHROW || attack == AT_DTHROW || attack == AT_FSPECIAL){
	can_fast_fall = false;
}


// Ribbon Throw
if (attack == AT_NTHROW){
	if (window < 3){
		left_down = false;
		right_down = false;
		left_pressed = false;
		right_pressed = false;
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
}

// Neutral Special
if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 120;
		
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
}

// Down Special
if (attack == AT_DSPECIAL){ 
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
