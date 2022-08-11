// attack_update.gml
// Called every frame, but only if the character is performing an attack

/*
if (attack == AT_TAUNT && state_timer == 10){
	room = 57;
}
*/

/*
// Multihit Ustrong Charge
if (state == PS_ATTACK_GROUND){
	if (attack == AT_USTRONG){
		if (window == 1){
			var reset = (floor(strong_charge / 4) % 6) + 1;
			if ((reset == 2 || reset == 4 || reset == 6) && spinbox == noone){
				attack_end();
				spinbox = create_hitbox( AT_USTRONG, 2, x, y );
			}
			if (reset == 1 || reset == 3 || reset == 5){
				spinbox = noone;
			}
		}
	}
}
*/

if (attack == AT_FTILT){

	if (window == 1 && window_timer == 1){
		set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 200);	
	}
	if (can_fireball){
		if (window == 1 && window_timer >= 6 && (attack_down || left_stick_down || right_stick_down) && LoveMeter >= 30 && can_fireball){
			can_fireball = false;
			set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
			LoveMeter = LoveMeter - 30;
			
			if (LoveMeter > 0){
				var digit_1 = noone;
				digit_1 = instance_create(x - 12, y + 20, "obj_article2");
				digit_1.state_timer = 2;
				digit_1.state = 5;
				digit_1.player_id = id;
				digit_1.player = player;
				digit_1.vsp = 1;
				digit_1.sprite_index = sprite_get("callie_text");
				digit_1.image_index = 1;
				digit_1.image_speed = 0;
				digit_1.depth = -100;
				
				var digit_2 = noone;
				digit_2 = instance_create(x, y + 20, "obj_article2");
				digit_2.state_timer = 2;
				digit_2.state = 5;
				digit_2.player_id = id;
				digit_2.player = player;
				digit_2.vsp = 1;
				digit_2.sprite_index = sprite_get("callie_num");
				digit_2.image_index = 3;
				digit_2.image_speed = 0;
				digit_2.depth = -100;

				var digit_3 = noone;
				digit_3 = instance_create(x + 12, y + 20, "obj_article2");
				digit_3.state_timer = 2;
				digit_3.state = 5;
				digit_3.player_id = id;
				digit_3.player = player;
				digit_3.vsp = 1;
				digit_3.sprite_index = sprite_get("callie_num");
				digit_3.image_index = 0;
				digit_3.image_speed = 0;
				digit_3.depth = -100;
			}
		}
	}
}

if (attack == AT_UAIR){

	// UAir hud offset
	if ((window == 1 and window_timer > 10) or window == 2)
	{
		hud_offset = lerp(hud_offset, 300, 0.16);
	}
}

if (attack == AT_UTILT){

	if (window == 1 && window_timer == 1){
		set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 200);	
	}
	if (can_fireball){
		if (window == 1 && window_timer >= 6 && (attack_down || up_stick_down) && LoveMeter >= 30 && can_fireball){
			can_fireball = false;
			set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
			LoveMeter = LoveMeter - 30;
		
			if (LoveMeter > 0){
				var digit_1 = noone;
				digit_1 = instance_create(x - 24, y + 20, "obj_article2");
				digit_1.state_timer = 2;
				digit_1.state = 5;
				digit_1.player_id = id;
				digit_1.player = player;
				digit_1.vsp = 1;
				digit_1.sprite_index = sprite_get("callie_text");
				digit_1.image_index = 1;
				digit_1.image_speed = 0;
				digit_1.depth = -100;
				
				var digit_2 = noone;
				digit_2 = instance_create(x - 12, y + 20, "obj_article2");
				digit_2.state_timer = 2;
				digit_2.state = 5;
				digit_2.player_id = id;
				digit_2.player = player;
				digit_2.vsp = 1;
				digit_2.sprite_index = sprite_get("callie_num");
				digit_2.image_index = 3;
				digit_2.image_speed = 0;
				digit_2.depth = -100;

				var digit_3 = noone;
				digit_3 = instance_create(x, y + 20, "obj_article2");
				digit_3.state_timer = 2;
				digit_3.state = 5;
				digit_3.player_id = id;
				digit_3.player = player;
				digit_3.vsp = 1;
				digit_3.sprite_index = sprite_get("callie_num");
				digit_3.image_index = 0;
				digit_3.image_speed = 0;
				digit_3.depth = -100;
			}
		}
	}
}

if (attack == AT_USTRONG){
	if (window == 3 || (window == 4 && window_timer < 6)){
		hud_offset = 70;
	}
}

// Down Special
if (attack == AT_DSPECIAL){

	if (state_timer == 1){
		nspecial_charge = 0;
		focus_armorbreak = false;
		LoveStorage = 0;
		nspecial_hitpause = 27; // Callie is +5 with no meter 
		nspecial_damage = 3;
		set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, nspecial_hitpause);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, nspecial_damage);

		dash_cancel_counter = 0;
		dash_cancel_endlag = 15;
		set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, dash_cancel_endlag);
	}
	
	if (state_timer == 4){
		if (!hitpause){
			sound_play(sound_get("nspecialcharge"));
		}	
	}
	
	move_cooldown[AT_DSPECIAL] = 60;

	if (special_down && LoveMeter >= 10){
		nspecial_charge += 1;

		if (window == 1 && window_timer == 16){
			window_timer = 15;
			window = 1;
		}

		if (nspecial_charge % 5 == 0){
			LoveMeter -= 10;
			LoveStorage += 10;
			
			dash_cancel_counter += .5;
			
			nspecial_hitpause = 30 + (LoveStorage/9); // Post June 14th 2022 Frame Advantage

			// Callie is +9 with no meter 
			// Callie is +21 with 100 meter
			// Callie is +30 with 200 meter
			// Every 20 meter is + 2.5 frame of advantage

							// nspecial_hitpause = 27 + (LoveStorage/12); // Pre June 14th 2022 Frame Advantage
							// Callie is +6 with no meter 
							// Callie is +15 with 100 meter
							// Callie is +22 with 200 meter
							// Every 20 meter is + 2 frame of advantage
			
			set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, nspecial_hitpause);
			nspecial_damage += 1;
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, nspecial_damage);
		}
		
	}
	if (window == 1 && window_timer >= 6){
		if (!focus_armorbreak){
			soft_armor = 999;
		}
		
		else { soft_armor = 0 }
	}
	
	// Attack
	if (window == 3){
		focus_armorbreak = false;
		soft_armor = 0;
	}

	// Dash Cancel
	if (window == 1 && window_timer >= 4){
		if (shield_pressed || shield_down){
			
			dash_cancel_endlag = floor(15 + dash_cancel_counter);
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, dash_cancel_endlag);
			
			if (spr_dir == 1){
				if (left_pressed || left_down){
					window = 6;
					window_timer = 0;
					hsp = -8;
					spr_dir = -1;
				}
				else {
					window = 6;
					window_timer = 0;
					hsp = 8;
					spr_dir = 1;
				}
			}
			else {
				if (right_pressed || right_down){
					window = 6;
					window_timer = 0;
					hsp = 8;
					spr_dir = 1;
				}
				else {
					window = 6;
					window_timer = 0;
					hsp = -8;
					spr_dir = -1;
				}		
			}
		}
	}
	
	// Dash Cancel SFX
	if (window == 6 && window_timer == 1){
		if (!hitpause){
			sound_play(sound_get("CMN_SWISH_2"));
		}
		
		if (LoveMeter >= 20){
			LoveMeter = LoveMeter - 20;
		}
		else {
			LoveMeter = 0;
		}
		
		if (LoveMeter > 0){
			var digit_1 = noone;
			digit_1 = instance_create(x - 12, y + 20, "obj_article2");
			digit_1.state_timer = 2;
			digit_1.state = 5;
			digit_1.player_id = id;
			digit_1.player = player;
			digit_1.vsp = 1;
			digit_1.sprite_index = sprite_get("callie_text");
			digit_1.image_index = 1;
			digit_1.image_speed = 0;
			digit_1.depth = -100;
			
			var digit_2 = noone;
			digit_2 = instance_create(x, y + 20, "obj_article2");
			digit_2.state_timer = 2;
			digit_2.state = 5;
			digit_2.player_id = id;
			digit_2.player = player;
			digit_2.vsp = 1;
			digit_2.sprite_index = sprite_get("callie_num");
			digit_2.image_index = 2;
			digit_2.image_speed = 0;
			digit_2.depth = -100;

			var digit_3 = noone;
			digit_3 = instance_create(x + 12, y + 20, "obj_article2");
			digit_3.state_timer = 2;
			digit_3.state = 5;
			digit_3.player_id = id;
			digit_3.player = player;
			digit_3.vsp = 1;
			digit_3.sprite_index = sprite_get("callie_num");
			digit_3.image_index = 0;
			digit_3.image_speed = 0;
			digit_3.depth = -100;
		}
	}
	
	if (window == 6){
	
		if (!focus_armorbreak && window_timer <= 10){
			soft_armor = 999;
		}
	
		else { 
			focus_armorbreak = false;
			soft_armor = 0;
		}
		
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

// Dash Attack
if (attack == AT_DATTACK){
	if (has_hit_player && window == 4){ // Can cancels things early if has hit a player
		can_attack = true;
		can_jump = true;
		can_special = true;
	}
	
	if (has_hit || has_hit_player && window == 2){
		if ((spr_dir = -1 && (left_pressed || left_down) && (special_pressed || special_down)) || (spr_dir = 1 && (right_pressed || right_down) && (special_pressed || special_down))){
			attack_end();
			set_attack(AT_FSPECIAL);
			state_timer = 0;
			window = 1;
			window_timer = 14;
			fspec_x = x;
			fspec_y = y;
			fspecial_circles = 0;
			
			LoveMeter = clamp(LoveMeter - 50, 0, 200);

			var digit_1 = noone;
			digit_1 = instance_create(x - 12, y + 20, "obj_article2");
			digit_1.state_timer = 2;
			digit_1.state = 5;
			digit_1.player_id = id;
			digit_1.player = player;
			digit_1.vsp = 1;
			digit_1.sprite_index = sprite_get("callie_text");
			digit_1.image_index = 1;
			digit_1.image_speed = 0;
			digit_1.depth = -100;
			
			var digit_2 = noone;
			digit_2 = instance_create(x, y + 20, "obj_article2");
			digit_2.state_timer = 2;
			digit_2.state = 5;
			digit_2.player_id = id;
			digit_2.player = player;
			digit_2.vsp = 1;
			digit_2.sprite_index = sprite_get("callie_num");
			digit_2.image_index = 5;
			digit_2.image_speed = 0;
			digit_2.depth = -100;

			var digit_3 = noone;
			digit_3 = instance_create(x + 12, y + 20, "obj_article2");
			digit_3.state_timer = 2;
			digit_3.state = 5;
			digit_3.player_id = id;
			digit_3.player = player;
			digit_3.vsp = 1;
			digit_3.sprite_index = sprite_get("callie_num");
			digit_3.image_index = 0;
			digit_3.image_speed = 0;
			digit_3.depth = -100;
			
		}
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
	if (LoveMeter > 190 && LoveMeter < 200){
		LoveMeter = 200;
	}
}

// Disables fast falls during throw animations
if (attack == AT_UTHROW || attack == AT_FTHROW || attack == AT_DTHROW || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
	can_fast_fall = false;
}


// Ribbon Throw

if (attack == AT_NTHROW){
	can_move = false;
}

/*
// OLD RIBBON THROW THAT DOES THE COOL PULL BUT WAS REMOVED CAUSE IT'S INCONSISTENT AND I CRY
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
*/

// Item Select Special
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
