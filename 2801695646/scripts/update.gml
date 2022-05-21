// MunoPhone Touch code - don't touch
// should be at TOP of file
//muno_event_type = 1;
//user_event(14);


var input_nav_l = (left_pressed || left_down);
var input_nav_r = (right_pressed || right_down);
var input_nav_u = (up_pressed || up_down);
var input_nav_d = (down_pressed || down_down);

var input_nav_stick_l = (left_stick_pressed || left_stick_down);
var input_nav_stick_r = (right_stick_pressed || right_stick_down);
var input_nav_stick_u = (up_stick_pressed || up_stick_down);
var input_nav_stick_d = (down_stick_pressed || down_stick_down);

var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

var _gameplay_time = get_gameplay_time();
var time_2s = _gameplay_time mod 2 == 0;	// True on every other frame.
var time_4s = _gameplay_time mod 4 == 0;	// True on every 4 frames.
var time_60s = _gameplay_time mod 60 == 0;	// True on every 60 second.


//=========================================================
// CUSTOM INITIALIZATION CODE
//=========================================================
if (is_init)
{
    
    update_aim_origins();															// Update aiming origin coordinates.
    
    //----------------------------------------------
    // Initialize the "Prime" Snake
    //----------------------------------------------
    
    // Assign One Snake as the "Prime" Snake
    var _prime_is_assigned = false;
    with (oPlayer) {
    	if ("sna_prime" not in self) continue;									// Skip non-Snake players.
    	
    	if (_prime_is_assigned)													// If a player has already been assigned as the "prime" Snake...
    		sna_prime = false;													// Set the current Snake as NOT the "prime" Snake.
    	else {																	// If no player has been assigned as the "prime" Snake...
    		sna_prime = true;													// Assign the current Snake as the "prime" Snake.
    		_prime_is_assigned = true;											// Tell the loop that a "prime" Snake has already been assigned.
    	}
    }
    
    //----------------------------------------------
    // Give Starting Loadout
    //----------------------------------------------
    switch(get_player_color( player )) {										// Get the current palette
    	
    	// STEALTH - Lethal
    	case 0:
    	case 5:
    	case 10:
    	case 15:
    	case 20:
    	case 25:
    		// Give the loadout weapons.
    		give_equipment(EQ_SOCOM, dict_equipment[EQ_SOCOM].ammo_mag_max * 2, true);
    		give_equipment(EQ_SMOKE_GRENADE, 3, false);
    		give_equipment(EQ_C4, 2, false);
    		// Equip the loadout weapons
    		equip_firearm(EQ_SOCOM);
			equip_throwable(EQ_SMOKE_GRENADE);
			equip_plantable(EQ_C4);
    	break;
    	
    	// STEALTH - Non-Lethal
    	case 1:
    	case 6:
    	case 11:
    	case 16:
    	case 21:
    	case 26:
    		// Give the loadout weapons.
    		give_equipment(EQ_M9, dict_equipment[EQ_M9].ammo_mag_max * 2, true);
    		give_equipment(EQ_SMOKE_GRENADE, 3, false);
    		give_equipment(EQ_SATCHEL, 2, false);
    		// Equip the loadout weapons
    		equip_firearm(EQ_M9);
			equip_throwable(EQ_SMOKE_GRENADE);
			equip_plantable(EQ_SATCHEL);
    	break;
    	
    	// ASSAULT - Lethal
    	case 2:
    	case 7:
    	case 12:
    	case 17:
    	case 22:
    	case 27:
    		// Give the loadout weapons.
    		give_equipment(EQ_M4, dict_equipment[EQ_M4].ammo_mag_max * 2, true);
    		give_equipment(EQ_GRENADE, 3, false);
    		give_equipment(EQ_CLAYMORE, 2, false);
    		// Equip the loadout weapons
    		equip_firearm(EQ_M4);
			equip_throwable(EQ_GRENADE);
			equip_plantable(EQ_CLAYMORE);
    	break;
    	
    	// ASSAULT - Non-Lethal
    	case 3:
    	case 8:
    	case 13:
    	case 18:
    	case 23:
    	case 28:
    		// Give the loadout weapons.
    		give_equipment(EQ_MOSIN, dict_equipment[EQ_MOSIN].ammo_mag_max * 2, true);
    		give_equipment(EQ_STUN_GRENADE, 3, false);
    		give_equipment(EQ_CLAYMORE, 2, false);
    		// Equip the loadout weapons
    		equip_firearm(EQ_MOSIN);
			equip_throwable(EQ_STUN_GRENADE);
			equip_plantable(EQ_CLAYMORE);
    	break;
    
    }
    
    //----------------------------------------------
    // DELETEME: Platform Testing Stuff
    //----------------------------------------------
    //instance_create(x, y - 36, "obj_article_platform"); // Create a platform that sticks to the player.
    
    //----------------------------------------------
    // End Init
    //----------------------------------------------
    is_init = false;                                                            // Disable init, so we don't repeat this code.
}



//=========================================================
// DIALOGUE BUDDY COMPATIBILITY
//=========================================================

if(variable_instance_exists(id,"diag")) {
    diag_name = "Snake";

    diagchoice = [
    "Hands over your head! Now!"];
    

	// Specific Character Interactions

	// Clairen
    if(otherUrl == CH_CLAIREN && diag != "") //Change the url into a specific character's
    {
        diag = "You're that Ninja...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
}




//=========================================================
// CHEATS
//=========================================================
//----------------------------------------------
// Spawn Firearms
//----------------------------------------------
/*if phone_cheats_updated[CHEAT_SPAWN_SOCOM]{
	phone_cheats_updated[CHEAT_SPAWN_SOCOM] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_SOCOM]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_SOCOM);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_M4]{
	phone_cheats_updated[CHEAT_SPAWN_M4] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_M4]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_M4);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_M9]{
	phone_cheats_updated[CHEAT_SPAWN_M9] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_M9]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_M9);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_MOSIN]{
	phone_cheats_updated[CHEAT_SPAWN_MOSIN] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_MOSIN]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_MOSIN);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}

//----------------------------------------------
// Spawn Ammo
//----------------------------------------------
if phone_cheats_updated[CHEAT_SPAWN_SOCOM_AMMO]{
	phone_cheats_updated[CHEAT_SPAWN_SOCOM_AMMO] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_SOCOM_AMMO]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_SOCOM_AMMO);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_M4_AMMO]{
	phone_cheats_updated[CHEAT_SPAWN_M4_AMMO] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_M4_AMMO]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_M4_AMMO);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_M9_AMMO]{
	phone_cheats_updated[CHEAT_SPAWN_M9_AMMO] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_M9_AMMO]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_M9_AMMO);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_MOSIN_AMMO]{
	phone_cheats_updated[CHEAT_SPAWN_MOSIN_AMMO] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_MOSIN_AMMO]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_MOSIN_AMMO);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}

//----------------------------------------------
// Spawn Suppressors
//----------------------------------------------
if phone_cheats_updated[CHEAT_SPAWN_SOCOM_SUPP]{
	phone_cheats_updated[CHEAT_SPAWN_SOCOM_SUPP] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_SOCOM_SUPP]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_SOCOM_SUPP);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_M9_SUPP]{
	phone_cheats_updated[CHEAT_SPAWN_M9_SUPP] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_M9_SUPP]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_M9_SUPP);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}

//----------------------------------------------
// Spawn Throwing Weapons
//----------------------------------------------
if phone_cheats_updated[CHEAT_SPAWN_GRENADE]{
	phone_cheats_updated[CHEAT_SPAWN_GRENADE] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_GRENADE]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_GRENADE);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_SMOKE_GRENADE]{
	phone_cheats_updated[CHEAT_SPAWN_SMOKE_GRENADE] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_SMOKE_GRENADE]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_SMOKE_GRENADE);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_STUN_GRENADE]{
	phone_cheats_updated[CHEAT_SPAWN_STUN_GRENADE] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_STUN_GRENADE]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_STUN_GRENADE);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}

//----------------------------------------------
// Spawn Placed Weapons
//----------------------------------------------
if phone_cheats_updated[CHEAT_SPAWN_C4]{
	phone_cheats_updated[CHEAT_SPAWN_C4] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_C4]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_C4);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_CLAYMORE]{
	phone_cheats_updated[CHEAT_SPAWN_CLAYMORE] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_CLAYMORE]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_CLAYMORE);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_BOOK]{
	phone_cheats_updated[CHEAT_SPAWN_BOOK] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_BOOK]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_BOOK);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_SATCHEL]{
	phone_cheats_updated[CHEAT_SPAWN_SATCHEL] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_SATCHEL]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_SATCHEL);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}

//----------------------------------------------
// Spawn Items
//----------------------------------------------
if phone_cheats_updated[CHEAT_SPAWN_BOX]{
	phone_cheats_updated[CHEAT_SPAWN_BOX] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_BOX]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_BOX);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}
if phone_cheats_updated[CHEAT_SPAWN_RATION]{
	phone_cheats_updated[CHEAT_SPAWN_RATION] = 0; // you have to reset it yourself
	if phone_cheats[CHEAT_SPAWN_RATION]{
		// Spawn the item
		pickup_spawn(x, y - 2, 2 * spr_dir, -5, ENT_PKUP_RATION);
		// Play the item drop sound
		sound_play(sound_get("ui_item_drop"));
	}
}*/



//=========================================================
// INTRO
//=========================================================
if (state == PS_SPAWN) {
	if (introTimer2 < introAnimSpeed) {
	    introTimer2++;
	} else {
	    introTimer2 = 0;
	    introTimer++;
	}
}
//this increments introTimer every few frames, depending on the number entered



//=========================================================
// CUSTOM INPUT
//=========================================================
strong_pressed = (right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed);
strong_down = (right_strong_down || left_strong_down || up_strong_down || down_strong_down);


//=========================================================
// USPECIAL (CYPHER) MECHANICS
//=========================================================
if (!sna_has_uspecial && (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP))	// If grounded, hurt, or wall jumping...
	sna_has_uspecial = true;															// Restore uspecial

if (!free || !sna_has_uspecial) move_cooldown[AT_USPECIAL] = 5;							// Disable uspecial when grounded, or when snake doesn't have uspecial.



//=========================================================
// CROUCHING MECHANICS
//=========================================================
if ( state == PS_CROUCH && state_timer > 6 ) {
	set_attack (AT_EXTRA_1);													// Go into the crouch "attack" when in the crouch state.
}

switch (state){
	
	case PS_ATTACK_GROUND:
	break; // Neither enable nor disable crouching when in these states.
	
	case PS_CROUCH:
		if (window > 1) is_crouching = true;									// Enable crouching in the crouch state.
	break;
	
	default:
		is_crouching = false;													// Disable crouching when not in the above states.
	break;
}

if (is_attacking) {																// If Snake is in an attack state...
	switch (attack){
		
		case AT_TAUNT:
		case AT_TAUNT_2:
		case AT_DTILT:
		case AT_FSPECIAL:
		case AT_DSPECIAL:
		break; // Neither enable nor disable crouching when doing these attacks.
		
		case AT_EXTRA_1:
			is_crouching = true;
		break;
		
		default: 
			is_crouching = false;												// Disable crouch when not doing the above attacks.
		break;
	}
}
if (free) is_crouching = false;													// Disable crouch when NOT grounded.

// Stance Switch Hook
if (is_crouching != was_crouching) {											// If you switch between crouching and not crouching...
	on_stance_switch();															// Run On Stance Switch Hook
	was_crouching = is_crouching;												// Update was_crouching
}


//=========================================================
// CUSTOM WAVELAND SOUND
//=========================================================
switch (state) {
	case PS_WAVELAND:
		sound_stop(jump_sound);													// Stop the jump sound when wavedashing.
		sound_stop(air_dodge_sound);											// Stop the air dodge sound when wavedashing.
	break;
}


//=========================================================
// ITEM USAGE MECHANICS
//=========================================================
if (!free) {																	// If grounded...
	
	if (up_down && special_pressed && !is_attacking) {							// If pressing up + special, and NOT in the attack state...
		on_use_item();															// Run the "on_use_item" hook.
		clear_button_buffer(PC_SPECIAL_PRESSED);								// Remove the input buffer.
	}
		
}
if (sna_ration_cooldown > 0) sna_ration_cooldown--;								// Advance ration cooldown.

//---------------------------------------------------------
// Box Mechanics
//---------------------------------------------------------
if (sna_box_is_equipped) {
	
	// Failsafe if you have no boxes, but you somehow have a box equipped. (Probably not necessary.)
	//if (dict_equipment[EQ_BOX].ammo_total <= 0) sna_box_is_equipped = false;
	
	// Disable player pushing.
	//go_through = true;															// Don't push players when the box is equipped.
	
	// Disable Attacks
	//disable_all_attacks(5);														// Disable all attacks with the box equipped.
	
	var _unequip_type = 0;														// 0 = don't unequip; 1 = unequip; 2 = drop box
	
	// Unequip when attacking.
	if (is_attacking &&
	attack != AT_TAUNT_2 && attack != AT_EXTRA_1) {								// If attacking... (Ignoring crouching, and inventory switching...)
		if (attack == AT_DATTACK) _unequip_type = 2;							// If performing a dash attack, drop the box.
		else _unequip_type = 1;													// For any other attack, unequip the box.
	}
	
	// Unequip when the equipped box is destroyed.
	if (sna_box_dmg >= sna_box_dmg_threshold) {									// If equipped the box took too much damage...
		_unequip_type = 1;														// Unequip the box.
		sound_play(sound_get("sfx_box_destroy"));								// Play the box destroy sound.
		spawn_hit_fx(x, y, vfx_box_destroy);									// Spawn the box destroy effect.
		
		// Subtract the box ammo.
		with (dict_equipment[EQ_BOX]) {
			ammo_total = clamp(ammo_total - 1, 0, ammo_total_max);
		}
		
		sna_box_dmg = 0;														// Reset the equipped box damage.
	}
	
	// Disable States
	switch(state) {
		case PS_CROUCH:
			set_state(PS_IDLE);
		break;
		
		case PS_PARRY_START:
		case PS_PARRY:
			// Disable parrying, but allow dodging.
			if !((left_down || right_down) && !down_down) {						// If NOT dodging...
				set_state(PS_IDLE);												// Disable parrying.
				clear_button_buffer(PC_SHIELD_PRESSED);							// Clear the input buffer.
			}
			//else {																// If dodging...
				_unequip_type = 2;												// Set the box to be dropped.
			//}
		break;
		
		case PS_AIR_DODGE:
			_unequip_type = 2;													// Set the box to be dropped.
		break;
	}
	
	// Unequip the box, if necessary.
	if (_unequip_type > 0) {													// If the box was set to be unequipped...
		sna_box_is_equipped = false;											// Unequip the box.
		//instance_destroy(sna_box_obj);										// Remove the cardboard box entity.
		sound_play(sfx_ui_inv_equip, false, 0);									// Play the equip sound effect.
		hurtboxID.sprite_index = hurtbox_spr_default;							// Reset the hurtbox sprite.
	}
	// Drop the box, if necessary.
	if (_unequip_type == 2) {													// If the box was set to be dropped...
		
		// Spawn the box.
		var _box_ent = instance_create(x, y, "obj_article_solid");				// Spawn the cardboard box entity.
		variable_instance_set(_box_ent, "spr_dir", spr_dir);					// Set the box's sprite direction to the player's sprite direction.
		variable_instance_set(_box_ent, "dmg", sna_box_dmg);					// Set the box's damage to the damage the player took while the box was equipped.
		
		// Subtract the box ammo.
		with (dict_equipment[EQ_BOX]) {
			ammo_total = clamp(ammo_total - 1, 0, ammo_total_max);
		}
		
		sna_box_dmg = 0;														// Reset the player box damage.
		
		var _fx_y_offset = 0;
		// Move the player to the desired side of the box.
		if (right_down) x += 30;
		else if (left_down) x -= 30;
		else _fx_y_offset = -30;												// If not exiting left or right, set the fx offset to the top of the box.
		spawn_base_dust(x, y, "dash_start", -spr_dir);							// Spawn dust effect
		spawn_hit_fx(x, y + _fx_y_offset, 13);									// Spawn exit effect
		sound_play(sound_get("sfx_box_exit"));									// Play box exit sound
		
	}
	
}



//=========================================================
// COVER MECHANICS
//=========================================================

// States to Detect Cover In
switch (state) {
	case PS_WALK:
	case PS_DASH_START:
	case PS_DASH:
	case PS_DASH_START:
		
		if (sna_box_is_equipped) {												// If a box is equipped...
			sna_detect_cover = false;											// Do NOT detect cover.
			break;
		}
		
		sna_detect_cover = true;												// Detect cover.
		
	break;
	
	case PS_ATTACK_GROUND:
		if (attack == AT_EXTRA_3)												// If Snake is in cover...
			sna_detect_cover = true;											// Detect Cover
		else if (attack == AT_FSPECIAL && (right_down - left_down) == spr_dir && !is_crouching)	// If Snake is using a firearm while moving forward...
			sna_detect_cover = true;											// Detect Cover
		else if (attack == AT_NSPECIAL)											// If Snake is using a throwable...
			sna_detect_cover = true;											// Detect Cover
		else																	// If Snake is attacking with any other attack...
			sna_detect_cover = false;											// Do NOT detect cover.
	break;
	
	default:
		sna_detect_cover = false;												// Do NOT detect cover by default.
	break;
	
}

// Detect Cover
if (sna_detect_cover) {															// If detecting cover...
	// Collision check
	var _offset_x = x + (22 * spr_dir);
	sna_cover_obj = collision_rectangle(_offset_x - 1, y - 20, _offset_x + 1, y - 30, asset_get("par_block"), true, true); // Get collisions with solid objects.
	
	sna_is_in_cover = instance_exists(sna_cover_obj);							// If a collision is detected, get into cover.
	
}
else {																			// If not detecting cover...
	sna_is_in_cover = false;													// Exit cover.
}

// Enter Cover State
if (sna_is_in_cover) {															// If cover is detected...
	if (!is_attacking) {				// If NOT attacking, or if crouching...
		set_attack(AT_EXTRA_3);													// Go to the cover state.
	}
}



//=========================================================
// GRAB MECHANICS
//=========================================================

//---------------------------------------------------------
// Force the player into hitpause.
//---------------------------------------------------------
if (instance_exists(sna_grabbed_playerid)) {									// If we have a grabbed player...
	
	// Force hitstun
	with (sna_grabbed_playerid) {
		
		if (state != PS_HITSTUN) set_state(PS_HITSTUN);							// Force the player into the hitstun state.
		hsp_old = 0;															// Remove player knockback.
		vsp_old = 0;
		orig_knock = 0;
		
		hitpause = true;														// Force the player into hitpause.
		hitstop = 4;
		hitstop_full = 16;
	}
	
	
	if (state == PS_ATTACK_GROUND) {
		
		// Move the grabbed player to the desired position
		switch(attack){
			case AT_NTHROW:
				switch(window){
					
					// Transition Lerp
					case 3: // Hold - Start
						sna_grabbed_playerid.x = round(lerp(sna_grabbed_playerid.x, x + sna_grabbed_x * spr_dir, 0.3 ));	// Slide the grabbed player to the grab position.
						sna_grabbed_playerid.y = round(lerp(sna_grabbed_playerid.y, y + sna_grabbed_y * spr_dir, 0.3 ));
					break;
					
					// Throw Release Offsets
					case 17: // FThrow - Move
					case 20: // BThrow - Move
					case 24: // UThrow - Move
					case 27: // DThrow - Move
						if (window_timer < 18) {
							sna_grabbed_playerid.x = x + sna_grabbed_x * spr_dir;	// Move the grabbed player with Snake.
							sna_grabbed_playerid.y = y + sna_grabbed_y;
						}
						else {
							sna_grabbed_playerid.x = x + (sna_grabbed_x + 20) * spr_dir;	// Move the grabbed player to the desired end position.
							sna_grabbed_playerid.y = y + sna_grabbed_y;
						}
					break;
					case 18: // FThrow - End
					case 21: // BThrow - End
					case 25: // UThrow - End
					case 28: // DThrow - End
						sna_grabbed_playerid.x = x + (sna_grabbed_x + 20) * spr_dir;	// Move the grabbed player to the desired end position.
						sna_grabbed_playerid.y = y + sna_grabbed_y;
					break;
					
					// Default Parenting
					default:
						sna_grabbed_playerid.x = x + sna_grabbed_x * spr_dir;	// Move the grabbed player with Snake.
						sna_grabbed_playerid.y = y + sna_grabbed_y;
					break;
				}
			break;
			
			// Default Parenting
			default:
				sna_grabbed_playerid.x = x + sna_grabbed_x * spr_dir;			// Move the grabbed player with Snake.
				sna_grabbed_playerid.y = y + sna_grabbed_y;
			break;
		}
		
		// Set the desired facing direction for the grabbed player.
		switch(attack){
			
			case AT_NTHROW: // Grab attack
				switch (window){
					case 7: // Turn
						if (window_timer < 24)
							sna_grabbed_playerid.spr_dir = -spr_dir;			// Face the grabbed player backward.
						else 
							sna_grabbed_playerid.spr_dir = spr_dir;				// Face the grabbed player forward.
					break;
					
					case 15: // FThorw - Turn
					case 22: // UThorw - Turn
						if (window_timer < 6)
							sna_grabbed_playerid.spr_dir = spr_dir;				// Face the grabbed player forward.
						else 
							sna_grabbed_playerid.spr_dir = -spr_dir;			// Face the grabbed player backward.
					break;
					case 16: // FThrow - Antic
					case 17: // FThrow - Move
					case 18: // FThrow - End
					case 19: // BThrow - Antic
					case 20: // BThrow - Move
					case 21: // BThrow - End
					case 23: // UThrow - Antic
					case 24: // UThrow - Move
					case 25: // UThrow - End
					case 26: // DThrow - Antic
					case 27: // DThrow - Move
					case 28: // DThrow - End
						sna_grabbed_playerid.spr_dir = -spr_dir;				// Face the grabbed player backward.
					break;
					
					default: // Any other window
						sna_grabbed_playerid.spr_dir = spr_dir;					// Face the grabbed player forward.
					break;
				}
			break;
			
			case AT_FSPECIAL: // Firearms
				sna_grabbed_playerid.spr_dir = spr_dir;							// Face the grabbed player forward.
			break;
			
		}
	}
	
}

//---------------------------------------------------------
// Unlink the grabbed player when not in the grab state.
//---------------------------------------------------------
if (state == PS_ATTACK_GROUND) {
	switch(attack) {
		case AT_NTHROW:
		case AT_FSPECIAL:
		break;
		
		default:
			if (sna_grabbed_playerid != noone) sna_grabbed_playerid = noone;	// Unlink the grabbed player when not performing a grab attack.
		break;
	}
}
else {
	if (sna_grabbed_playerid != noone) sna_grabbed_playerid = noone;			// Unlink the grabbed player when not in an attack state.
}



//=========================================================
// UPDATE HEIGHT
//=========================================================
if (sna_box_is_equipped)											char_height = sna_height_box;				// Box Height
else if (is_attacking && attack == AT_EXTRA_3)						char_height = sna_height_cover;				// Cover Height
else if (is_crouching)												char_height = sna_height_crouch;			// Crouch Height
else																char_height = sna_height_default;			// Default Height



//=========================================================
// AIMING MECHANICS
//=========================================================

//---------------------------------------------------------
// Specify which attacks have aiming
//---------------------------------------------------------
switch (state) {
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		
		switch (attack) {
			
			case AT_FSPECIAL:	// Firearms
				sna_is_aiming = (special_down || special_pressed);
				sna_is_using_aimlegs = true;
			break;
			
			case AT_NSPECIAL:	// Grenades
				sna_is_aiming = false;
				sna_is_using_aimlegs = true;
			break;
			
			case AT_DSPECIAL:	// Plantables
				switch(window){
					case 1:
					case 2:
					case 5:
					case 6:
					case 7:
					case 8:
						sna_is_aiming = false;
						sna_is_using_aimlegs = true;
					break;
					
					case 3:
					case 4:
						sna_is_aiming = false;
						sna_is_using_aimlegs = false;
					break;
					
				}
			break;
			
			default:
				sna_is_aiming = false;
				sna_is_using_aimlegs = false;
			break;
			
		}
		
	break;
	
	default:
		sna_is_aiming = false;													// Disable aiming and aim locking by default
		sna_lock_aiming = false;
		sna_is_using_aimlegs = false;											// Disable aimlegs by default.
	break;
}


//---------------------------------------------------------
// Aiming Logic
//---------------------------------------------------------
if (sna_is_aiming) {
	
	var _cur_firearm = dict_equipment[inv_firearm];
	
	var _right_stick = (right_stick_down || right_stick_pressed);
	var _up_stick = (up_stick_down || up_stick_pressed);
	var _left_stick = (left_stick_down || left_stick_pressed);
	var _down_stick = (down_stick_down || down_stick_pressed);
	var _stick_joy_dir = point_direction(0, 0, _right_stick - _left_stick, _down_stick - _up_stick);
	var _stick_idle = !(_right_stick || _up_stick || _left_stick || _down_stick);
	var _aim_accel = (_stick_idle)? sna_aim_accel : sna_aim_accel_stick;		// Change the aim acceleration depending on if the left or right stick is used for aiming.
	
	
	// Left Stick Aiming
	sna_aim_dir_target = (joy_pad_idle || sna_lock_aiming) ? sna_aim_dir : joy_dir;		// If NOT holding a direction, or the aim angle is locked, set the target angle to the current angle. Otherwise, set the target angle to the joy stick angle.
	
	// Right Stick Aiming
	if (!_stick_idle) sna_aim_dir_target = _stick_joy_dir;
	
	
	sna_aim_dir_target = sna_aim_dir_target % 360;								// Loop the angles.
	
	
	var _ang_difference = angle_difference(sna_aim_dir, sna_aim_dir_target);	// Get the angle difference between the current direction, and the target direction.
	
	var angle_adj_dir = (_ang_difference > 0) ? -1 : 1;							// Get whether or not the angle differenc
	
	
	if (!joy_pad_idle || !_stick_idle) {										// If a direction is held...
		
		sna_aim_speed_lerp = clamp(sna_aim_speed_lerp + _aim_accel, 0, 1);		// Gradually increase the rotation acceleration to the max rotation speed.
		var _aim_speed = lerp(0, sna_aim_speed_max, sna_aim_speed_lerp);		
		
		sna_aim_dir += _aim_speed * angle_adj_dir;								// Rotate towards the target angle.
		
	}
	else {																		// If NOT holding a direction...
		sna_aim_speed_lerp = 0;													// Reset the rotation acceleration.
	}
	
	if ( abs(_ang_difference) < ceil(_aim_speed * 2) ) {						// If the current angle is really close to the target angle...
		sna_aim_dir = sna_aim_dir_target;										// Snap the current angle to the target angle.
		sna_aim_speed_lerp = 0;													// Reset the rotation acceleration.
	}
	
	// Aim Angle Limit
	if (is_crouching) {															// If Snake is crouching...
		
		var _neutral_angle = (spr_dir == 1) ? 0 : 180;
		
		//sna_aim_dir = clamp(sna_aim_dir, _neutral_angle + (-90 * spr_dir), _neutral_angle + (45 * spr_dir));			// Clamp the aim angle.
		//sna_aim_dir = clamp(sna_aim_dir, -90, 45);			// Clamp the aim angle.
		
		if (spr_dir == 1) {
			if (sna_aim_dir < 90)
				sna_aim_dir = clamp(sna_aim_dir, -89, 45 );
			else
				sna_aim_dir = clamp(sna_aim_dir, 275, 405 );
		}
		else
			sna_aim_dir = clamp(sna_aim_dir, 135, 265 );
		
	}
	
	// Set Sprite Direction
	spr_dir = (sna_aim_dir > 90 && sna_aim_dir < 270) ? -1 : 1;					// Set the spr_dir based on the angle Snake is aiming.
	
	// Calculate Crosshair Angle
	/*if (_ang_difference == 0 || sna_lock_aiming) {										// If NOT moving the crosshair...
		sna_aim_crosshair_angle = lerp(sna_aim_crosshair_angle, 0,  0.1);			// Rotate the crosshair towards the neutral position.
	}
	else {																		// If moving the crosshair...
		sna_aim_crosshair_angle = lerp(sna_aim_crosshair_angle, 45 * angle_adj_dir, 0.1 );	// Rotate the crosshair in the direction you're aiming.
	}*/
	
	
	// Calculate Muzzle Position.
	var _muzzle_coordinates = rotate_around_point(sna_arms_x * spr_dir, sna_arms_y, _cur_firearm.muzzle_offset_x, _cur_firearm.muzzle_offset_y * spr_dir, sna_aim_dir);
	sna_muzzle_x = _muzzle_coordinates[0];
    sna_muzzle_y = _muzzle_coordinates[1];
	
	
	// Calculate Raycast
	/*var _crosshair_dist = _cur_firearm.crosshair_distance;
	var tx = x + sna_muzzle_x + lengthdir_x(_crosshair_dist, sna_aim_dir);
	var ty = y + sna_muzzle_y + lengthdir_y(_crosshair_dist, sna_aim_dir);
	var sna_aim_raycast = collision_line_point(x + sna_muzzle_x, y +sna_muzzle_y, tx, ty, asset_get("pHurtBox"), true, true );			// Raycast for Players
	if (sna_aim_raycast[0] == noone)																	// If no players were hit...
		sna_aim_raycast = collision_line_point(x + sna_muzzle_x, y + sna_muzzle_y, tx, ty, asset_get("par_block"), true, true);		// Raycast for solid objects.*/
	
	//sna_aim_target = sna_aim_raycast[0];										// Set the raycast target object.
	//sna_aim_raycast_x = sna_aim_raycast[1];										// Set the x raycast point.
	//sna_aim_raycast_y = sna_aim_raycast[2];										// Set the y raycast point.
	//sna_aim_target = collision_line(x + sna_muzzle_x, y +sna_muzzle_y, tx, ty, asset_get("pHurtBox"), false, true );
	
	
}
else if (time_4s) {															// If Snake is NOT aiming a weapon...
	
	// Reset rotation variables.
	//if (sna_is_aiming != sna_is_aiming_late) {									// If you were aiming in the previous frame...
	if (sna_aim_speed_lerp != 0) {												// If you were aiming in the previous frame...
		sna_aim_speed_lerp = 0;													// Reset the rotation acceleration.
		sna_aim_crosshair_angle = 0;
	}
	
	sna_aim_dir_target = (spr_dir == 1) ? 0 : 180;								// Set the aim angles to 0 if facing right, or 180 if facing left.
	sna_aim_dir = (spr_dir == 1) ? 0 : 180;
	
	if (is_attacking && attack == AT_FSPECIAL) {								// If still in fspecial...
		sna_muzzle_x = (sna_arms_x + dict_equipment[inv_firearm].muzzle_offset_x) * spr_dir;	// Reset muzzle coordinates.
		sna_muzzle_y = (sna_arms_y + dict_equipment[inv_firearm].muzzle_offset_y);
	}
	
	
}

//sna_aim_dir_visual = (spr_dir == 1) ? sna_aim_dir : sna_aim_dir - 180;			// Set the visual aim direction, for sprites. Has rotation offset for spr_dir.


//---------------------------------------------------------
// Legs Logic
//---------------------------------------------------------

if (sna_is_using_aimlegs) {
	
	// Set Movement Speed
	var _legs_move_speed = sna_legs_walk_speed;									// Set the legs movement speed.
	if (instance_exists(sna_grabbed_playerid))									// If a player is grabbed...
		_legs_move_speed = 1.5;													// Set the legs movement speed to a slower speed..
	
	//------------------------------------------
	// Legs Phyisics and Animation
	//------------------------------------------
	if (!is_crouching) {
		switch (sna_legs_window){													// Get the current legs window.
				
			case 0: // Idle
				sna_legs_window_timer = 0;
				sna_legs_window_sprite = sprite_get("aim_legs_idle");
				sna_legs_anim_start_frame = 0;
				sna_legs_anim_end_frame = 0;
				sna_legs_anim_frame = 0;
			break;
			
			case 1: // Walk Forwards
				if (hsp == 0)													// If NOT moving...
					sna_legs_window_sprite = sprite_get("aim_legs_idle");		// Switch to idle sprite
				else															// If moving...
					sna_legs_window_sprite = sprite_get("aim_legs_walk");
				
				sna_legs_window_length = 48;
				sna_legs_window_timer++;											// Advance the window timer forward.
				var _anim_lerp_amt = (sna_legs_window_timer / sna_legs_window_length) % 1.0;
				
				// Update animation frames
				sna_legs_anim_start_frame = 0;
				sna_legs_anim_end_frame = 8;
				// Update animation frames
				sna_legs_anim_start_frame = 0;
				sna_legs_anim_end_frame = 8;
				if (hsp == 0)													// If NOT moving...
					sna_legs_anim_frame = 0;									// Stay on frame 0.
				else															// If moving...
					sna_legs_anim_frame = floor(lerp(sna_legs_anim_start_frame, sna_legs_anim_end_frame, _anim_lerp_amt));
				
				if (hsp != 0)													// If moving...
					// Spawn dust
					if (sna_legs_window_timer % 8 == 0) spawn_base_dust(x, y, "walk", 0);
				
				// Move
				var _target_spd = _legs_move_speed * spr_dir;															// Set desired speed.
				hsp = lerp(0, _target_spd, sna_legs_window_timer * sna_legs_acceleration );	// Accelerate forwards.
				hsp = clamp(hsp, -_legs_move_speed, _legs_move_speed);
				
				
			break;
			
			case 2: // Walk Backwards
				if (hsp == 0)													// If NOT moving...
					sna_legs_window_sprite = sprite_get("aim_legs_idle");		// Switch to idle sprite
				else															// If moving...
					sna_legs_window_sprite = sprite_get("aim_legs_backpedal");
				
				sna_legs_window_length = 48;
				sna_legs_window_timer++;											// Advance the window timer forward.
				var _anim_lerp_amt = (sna_legs_window_timer / sna_legs_window_length) % 1.0;
				
				// Update animation frames
				sna_legs_anim_start_frame = 0;
				sna_legs_anim_end_frame = 8;
				if (hsp == 0)													// If NOT moving...
					sna_legs_anim_frame = 0;									// Stay on frame 0.
				else															// If moving...
					sna_legs_anim_frame = floor(lerp(sna_legs_anim_start_frame, sna_legs_anim_end_frame, _anim_lerp_amt));
				
				if (hsp != 0)													// If moving...
					// Spawn dust
					if (sna_legs_window_timer % 8 == 0) spawn_base_dust(x, y, "walk", -1);
				
				// Move
				var _target_spd = -_legs_move_speed * spr_dir;															// Set desired speed.
				hsp = lerp(0, _target_spd, sna_legs_window_timer * sna_legs_acceleration );	// Accelerate fackwards.
				hsp = clamp(hsp, -_legs_move_speed, _legs_move_speed);
				
			break;
			
			case 3: // Dash
				
				if (hsp == 0)													// If NOT moving...
					sna_legs_window_sprite = sprite_get("aim_legs_idle");		// Switch to idle sprite
				else															// If moving...
					sna_legs_window_sprite = sprite_get("aim_legs_dash");
				
				sna_legs_window_length = 32;
				sna_legs_window_timer++;											// Advance the window timer forward.
				var _anim_lerp_amt = (sna_legs_window_timer / sna_legs_window_length) % 1.0;
				
				// Update animation frames
				sna_legs_anim_start_frame = 0;
				sna_legs_anim_end_frame = 8;
				if (hsp == 0)													// If NOT moving...
					sna_legs_anim_frame = 0;									// Stay on frame 0.
				else															// If moving...
					sna_legs_anim_frame = floor(lerp(sna_legs_anim_start_frame, sna_legs_anim_end_frame, _anim_lerp_amt));
				
				// Audio/Visual Dash Effects
				if (hsp != 0) {															// If moving...
					if (sna_legs_window_timer == 1) {									// If on frame 1...
						spawn_base_dust(x, y, "dash_start", 0);							// Spawn dust fx.
						sound_play(asset_get("sfx_dash_start"));						// Play dash start sound.
					}
					if (sna_legs_window_timer % 6 == 0) spawn_base_dust(x, y, "dash", 0);	// Spawn dash dust regularly.
				}
				
				// Move
				var _target_spd = (sna_legs_window_timer < initial_dash_time) ? initial_dash_speed * spr_dir : dash_speed * spr_dir; // Set the target speed to either dash speed, or initial dash speed
				hsp = _target_spd;	// Move at current dash speed.
				hsp = clamp(hsp, -dash_speed, dash_speed);
				
			break;
			
			case 4: // Aerial
				
				sna_legs_window_timer = 0;
				sna_legs_window_sprite = sprite_get("aim_legs_jump");
				sna_legs_anim_start_frame = 0;
				sna_legs_anim_end_frame = 0;
				sna_legs_anim_frame = current_sprite_set;
				
				hsp = clamp (hsp, -air_max_speed, air_max_speed);					// Clamp aerial move speed.
				
			break;
			
		}
	}
	
	//------------------------------------------
	// Legs Movement Input and State Handling
	//------------------------------------------
	if (sna_lock_aimwalk) {														// If walking while aiming is NOT allowed, and the player is NOT crawling...
		sna_legs_window = 0;													// Go to legs idle window.
	}
	else {																		// If walking while aiming is allowed...
		
		switch (sna_legs_window){												// Get the current legs state.
			
			case 0:	// Idle
			case 1:	// Walking Forwards
			case 2:	// Backpedaling
				
				if (right_down - left_down == spr_dir)							// If moving forwards...
					sna_legs_window = 1;										// Go into forwards window.
				else if (right_down - left_down == -spr_dir)					// If moving backwards...
					sna_legs_window = 2;										// Go into backwards window.
				else															// If idle...
					sna_legs_window = 0;										// Go into idle window.
					
				//if (!sna_is_aiming && (right_hard_pressed || left_hard_pressed)) {		// If dashing while not aiming a weapon...
				if (!sna_legs_strafemode && (right_hard_pressed || left_hard_pressed)) {	// If dashing while not in strafe mode...
					sna_legs_window = 3;												// Go into dash window.
					sna_legs_window_timer = 0;
				}
			
			break;
			
			case 3:	// Dashing
				
				//if (sna_is_aiming || (!right_down && !left_down)) {				// On releasing left or right, or when aiming a weapon...
				if (sna_legs_strafemode || (!right_down && !left_down)) {				// On releasing left or right, or when strafe mode is enabled...
					sna_legs_window = 0;										// Go to idle. (TODO: Go to dash stop, instead?)
				}
				
			break;
			
			case 4: // Aerial
				
				if (!free) sna_legs_window = 0;									// If we're grounded, set the window to idle.
				
			break;
			
		}
		
		//if (!sna_is_aiming && (right_hard_pressed || left_hard_pressed)) {		// If dashing while not aiming a weapon...
		if (!sna_legs_strafemode && (right_hard_pressed || left_hard_pressed)) {		// If dashing while not in strafe mode...
			sna_legs_window = 3;												// Go into dash window.
		}
		
	}
	if (free) sna_legs_window = 4;												// If not grounded, go to legs aerial window.
	
	
	//------------------------------------------
	// Legs Jump Logic
	//------------------------------------------
	// Jump
		if (jump_pressed) {									// If the jump button is pressed, and you're in walk mode...
			
			if (free) {															// If in the air...
				if (djumps < max_djumps) {										// If you have a double jump...
					vsp = -djump_speed;											// Double jump.
					djumps++;													// Increase number of double jumps used..
					spawn_base_dust(x, y, "doublejump", 0);						// Create dust fx.
					sound_play(djump_sound);									// Play double jump sound.
				}
			}
			
			else {																// If on the ground...
				vsp = -jump_speed;												// Jump.
				spawn_base_dust(x, y, "jump", 0);								// Create dust fx.
				sound_play(jump_sound);											// Play jump sound.
			}
			
			clear_button_buffer(PC_JUMP_PRESSED);								// Clear the jump button buffer.
			clear_button_buffer(PC_DOWN_HARD_PRESSED);							// Clear the down_hard_pressed button buffer, to prevent immediately fastfalling on jump.
			
		}
		
		// Land
		if (!free && free_old) {
			spawn_base_dust(x, y, "land", 0);									// Create dust fx.
			sound_play(land_sound);												// Play land sound.
			free_old = free;													// Update free_old variable.
		}
		
		if (!free && fall_through) {											// If the player is on a platform, and tries to fall through it...
			vsp = 3;															// Move down three pixels.
			clear_button_buffer(PC_DOWN_HARD_PRESSED);							// Clear the down_hard_pressed buffer.
		}
	
}
else {
	
	if (sna_is_using_aimlegs != sna_is_using_aimlegs_late) {						// If you were aiming in the previous frame...
		
		if (sna_legs_window == 3) {													// Go into dash state, if the legs were in the dash state.
			set_state(PS_DASH);
		}
		
		if (is_crouching && !is_attacking) {									// Go into crouch state, if crouching.
			set_attack(AT_EXTRA_1);
			window = 4;
			window_timer = 0;
			hurtboxID.sprite_index = crouchbox_spr;								// Switch to crouch hurtbox sprite
		}
		
		sna_legs_window = 0;													// Reset the legs values
		sna_legs_window_timer = 0;
		sna_legs_anim_start_frame = 0;
		sna_legs_anim_end_frame = 0;
		sna_legs_anim_frame = 0;
		
	}
	
	//sna_legs_window = (is_attacking && attack == AT_EXTRA_1) ? 5 : 0;			// Set the legs values based on the current player action.
	
}



//=========================================================
// UPDATE OTHER PLAYERS
//=========================================================
/*
NOTE: Since this code is run on all players,
only the "prime" Snake runs this code. That way, it only runs once
per frame.
*/
if (sna_prime) {																	// If we're the "prime" Snake...
	with (oPlayer) {
		
		var _is_teammate = (get_player_team(self.player) == get_player_team(other.player));
		
		//------------------------------
		// UPDATE EMOTE WINDOWS
		//------------------------------
		var _emote_timer = _gameplay_time - sna_emote_start_time;
		var _emote_window = other.sna_emote_windows[sna_emote_window];
		if (_emote_timer > _emote_window.length) {								// If the emote window exceeds the window length...
			sna_emote_window = _emote_window.next_window;						// Go to the next emote window.
			sna_emote_start_time = _gameplay_time;							// Reset the emote timer on window switch.
		}
		
		//------------------------------
		// Update Status UI
		//------------------------------
		
		if ("sna_ui_status_state" in self) {							// Don't run this if the player object doesn't have a state machine.
			
			if (sna_ui_status_state != 0) {												// If NOT in the "Don't Display" state...
				
				var _cur_state = sna_ui_status_states[sna_ui_status_state];
				
				sna_ui_status_timer++;													// Advance the state timer.
				
				if (sna_ui_status_timer > _cur_state.length) {							// If at the end of the current state...
					sna_ui_status_state = _cur_state.next_state;						// Go to the next state.
					sna_ui_status_timer = 0;											// Reset the state timer
				}
				
			}
			
			//------------------------------
			// Update Status Effects
			//------------------------------
			
			//------------------------------
			// LIFE
			//------------------------------
			if (sna_life == 0) {													// If the LIFE gauge is at 0...
				if (!sna_life_depleted) {
					with (other) {sound_play(sound_get("ui_status_ko"));}			// Play the status KO sound effect.
				}
				sna_life_depleted = true;											// If the LIFE gauge is at 0, put the player in a vulnerable state.
			}
			
			// Depleted LIFE state
			if (sna_life_depleted) {												// If the LIFE gauge was depleted...
				
				// Display Status
				sna_ui_status_state = 1;
				sna_ui_status_timer = 0;
				
				// LIFE regeneration (Fast)
				switch(state){
					//case PS_HITSTUN:
					//case PS_HITSTUN_LAND:
					//break;
					
					case PS_DEAD:
					case PS_RESPAWN:												// Reset stats on respawn.
						sna_life = 100;
					break;
					
					default:
						if (sna_life == 100) break;
						sna_life = clamp(sna_life + 0.2, 0, 100);					// Regenerate LIFE quickly.
					break;
				}
				
				if (sna_life >= 100) sna_life_depleted = false;						// If the LIFE gauge is fully regenerated, the player is no longer vulnerable.
			}
			
			// Normal LIFE State
			else {																	// If the LIFE gauge has NOT been depleted...
				// LIFE regeneration
				switch(state){
					case PS_HITSTUN:
					case PS_HITSTUN_LAND:
					break;
					
					case PS_DEAD:
					case PS_RESPAWN:												// Reset stats on respawn.
						sna_life = 100;
					break;
					
					default:
						if (sna_life == 100) break;
						sna_life = clamp(sna_life + 0.05, 0, 100);					// Regenerate LIFE slowly, when not in hitstun.
					break;
				}
			}
			
			
			//------------------------------
			// PSYCHE
			//------------------------------
			if (sna_psyche == 0) {													// If the PSYCHE gauge is at 0...
				if (!sna_psyche_depleted) {
					with (other) {sound_play(sound_get("ui_status_ko"));}			// Play the status KO sound effect.
					
					// (Code loosely based on SSL Snake sleep code, by Regina Reforged & Rioku)
					
					sna_psyche_depleted_start_time = _gameplay_time;			// Set the frame that the player was knocked out at.
					sna_psyche_depleted_duration = max(60, floor((get_player_damage(player) + 30) * 1.35));	// Set the duration the player should be knocked out for.
					
					// Reset the airtime
					sna_psyche_depleted_airtime = 0;
				}
				sna_psyche_depleted = true;											// If the PSYCHE gauge is at 0, put the player in a vulnerable state.
			}
			
			// Depleted PSYCHE State
			if (sna_psyche_depleted) {																// If the PSYCHE gauge was depleted...
				
				var _t = _gameplay_time - sna_psyche_depleted_start_time;		// Number of frames the player has been unconscious for.
				var _t_remaining = sna_psyche_depleted_duration - _t;				// Number of frames left until the PSYCHE gauge is regenerated
				var _t_normalized = _t / sna_psyche_depleted_duration;				// 0.0 - 1.0
				
				
				// Display Status
				//sna_ui_status_state = 1;
				//sna_ui_status_timer = 0;
				
				// Display knockout emote indicators (I.E. sleep "zzz"s, or stun stars)
				switch (sna_psyche_ko_type) {
					case 0: // Stun
						// Display Stars
						sna_emote_window = 7;								// 1 star
						if (_t_remaining > 60) sna_emote_window = 8;	// 2 stars
						if (_t_remaining > 120) sna_emote_window = 9;	// 3 stars
						if (_t_remaining > 180) sna_emote_window = 10;	// 4 stars
						if (_t_remaining > 240) sna_emote_window = 11;	// 5 stars
						
						// Draw star depletion effects
						switch(_t_remaining) {
							case 60: case 120: case 180: case 240:
								var _x = x;
								var _y = y - char_height - 20;
								with(other){spawn_hit_fx(_x, _y, vfx_stun_deplete);}
							break;
						}
					break;
					case 1: // Sleep
						// Display Zs
						sna_emote_window = 12;
						if (_t_remaining > 60) sna_emote_window = 13;	// 2 Zs
						if (_t_remaining > 120) sna_emote_window = 14;	// 3 Zs
						if (_t_remaining > 180) sna_emote_window = 15;	// 4 Zs
					break;
				}
				
				
				if !(state == PS_DEAD || state == PS_RESPAWN) {						// If NOT respawning...
					
					// Regenerate Psyche (Slow)
					sna_psyche = lerp(0, 100, _t_normalized);
					
					// Air Behaviour
					if (free) {																			// If in the air...
						
						// Advance Air Timer
						if (!hitpause) sna_psyche_depleted_airtime++;									// Increase air time.
						
						// Prevent wall jump / cling
						if (state == PS_WALL_JUMP) {
							x += 10 * spr_dir;															// Move away from wall, if attempting to wall jump.
							hsp = 2 * spr_dir;
						}
						
						// Go into pratfall
						if (state_cat != SC_HITSTUN) {													// If NOT in hitstun...
							set_state(PS_PRATFALL);														// Go into pratfall.
						}
						
						// Regenerate Psyche (Fast)
						if (sna_psyche_depleted_airtime >= sna_psyche_depleted_airtime_max) sna_psyche = 100;	// If in the air for too long, restore all PSYCHE, and wake up.
					}
					
					// Grounded Behaviour
					else {																				// If on the ground...
						
						// Reset the airtime
						sna_psyche_depleted_airtime = 0;
						
						// Make the player unconscious.
						if (!was_parried && state_cat != SC_HITSTUN) {				// If NOT in hitstun, and NOT yet in a parried state...
							was_parried = true;
							parry_lag = _t_remaining;
							set_state(PS_PRATLAND);
						}
						
					}
					
					// Wake Up
					if (sna_psyche >= 100) {
						sna_psyche_depleted = false;									// If the PSYCHE gauge is fully regenerated, the player is no longer vulnerable.
						if (free && state_cat != SC_HITSTUN) set_state(PS_IDLE_AIR);	// Get out of pratfall, if not in hitstun.
					}
				}
				else {																// If respawning...
					sna_psyche = 100;												// Reset PSYCHE gauge.
					sna_psyche_depleted = false;
				}
				
			}
			else {																	// If the PSYCHE gauge is NOT depleted...
				
				// Disable Stars and Zs
				switch (sna_emote_window) {
					case 7:
					case 8:
					case 9:
					case 10:
					case 11:
					case 12:
					case 13:
					case 14:
					case 15:
						sna_emote_window = 0;
					break;
				}
				
				// PSYCHE regeneration
				switch(state){
					case PS_DEAD:
					case PS_RESPAWN:												// Reset PSYCHE on respawn.
						sna_psyche = 100;
						sna_psyche_depleted = false;
					break;
				}
			}
				
			//------------------------------
			// GRABBED COOLDOWN
			//------------------------------
			if (sna_grabbed_cooldown > 0) sna_grabbed_cooldown--;					// Advance the grab cooldown timer.
			
			
			//--------------------------------------------
			// UPDATE SENSES
			//--------------------------------------------
			if (time_4s && "sna_prime" not in self) {								// Don't run this code on other Snake players.
				
				//------------------------------
				// Sight
				//------------------------------
				
				// Update desired vision cone angle
				switch (joy_pad_idle) {
					case true:
						_ang = (spr_dir == 1) ? 0 : 180;							// Reset the wish angle to look forward, in the direction the player is facing.
					break;
					case false:
						_ang = joy_dir;												// Set the wish angle to the direction the player is holding.
					break;
				}
				
				// Clamp the desired look angle
				switch (spr_dir) {
					case 1:															// If facing right...
						if (_ang > 90) _ang -= 360;
						sna_sns_sght_angle_wish = clamp(_ang, -30, 90 );
					break;
					case -1:														// If facing left...
						sna_sns_sght_angle_wish = clamp(_ang, 90, 210 );
					break;
				}
				
				// Update current vision cone angle
				sna_sns_sght_angle = lerp(sna_sns_sght_angle, sna_sns_sght_angle_wish, sna_sns_sght_angle_dampening);
				
			}
		
		}
		
		//----------------------------------------------
		// Update players in smoke clouds
		//----------------------------------------------
		if ("sna_is_in_smoke" in self) {							// Skip players who somehow don't have this variable.
		
			sna_is_in_smoke = false;												// Reset "sna_is_in_smoke" to false.
			
			var _cloudlen = 0;
			var _cloudrad = 0;
			var _len = 0;
			with (other) {
				_cloudlen = sna_smoke_lifetime;
				_cloudrad = sna_smoke_radius;
				_len = array_length(sna_smoke_clouds);
			}
			
			for (var i = 0; i < _len; i++) {				// Get all smoke clouds.
				var _curcloud = other.sna_smoke_clouds[i];
				var _curcloud_creation_time = _curcloud.creation_time;
				if (_gameplay_time > _curcloud_creation_time + _cloudlen) continue;    // Skip expired smoke clouds.
				if (_gameplay_time <= _curcloud_creation_time + 60) continue;			// Skip initial (transparent) smoke clouds.
				
				// If in the current smoke cloud...
				if ((abs(x - _curcloud.x) < _cloudrad) && (abs(y - (_curcloud.y - 30)) < _cloudrad)) {
					sna_is_in_smoke = true;													// Set "sna_is_in_smoke" to true.
					break;																	// End the loop.
				}
				
			}
		}
		
		//----------------------------------------------
		// Update Snake's visibility
		//----------------------------------------------
		other.sna_stealth_seen = false;														// Snake is NOT seen, by default.
		
		if ("sna_prime" not in self && !clone && !_is_teammate) {							// Skip other Snake players, clones, and teammates.
			// Set whether or not the opponent can see.
			if (!sna_is_in_smoke) {															// If NOT in smoke...
				switch(state_cat) {
					case SC_HITSTUN: sna_sns_sght_can_see = false;
					break; 																	// Opponents can NOT see when in histun.
					default:
						if (was_parried || sna_psyche_depleted) sna_sns_sght_can_see = false;			// Opponents can NOT see when parried.
						else sna_sns_sght_can_see = true;
					break;
				}
			}
			else {																			// If in smoke...
				sna_sns_sght_can_see = false;												// Opponents can't see in smoke.
			}
			
		}
		
		sna_sns_sght_sees_snake = false;												// Set the opponent to NOT see Snake by default.
		
	}
}

//=======================================
// UPDATE SNAKE'S VISIBILITY
//=======================================

// Check if Snake is visible to the other players.
with (oPlayer) {
	if (other.state == PS_SPAWN || other.state == PS_RESPAWN || get_gameplay_time() < 120) continue;				// Don't allow Snake to be seen when spawning.
	if ("sna_prime" in self) continue;												// Skip other Snake players.
	if (clone) continue;															// Skip Forsburn clones.
	if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
	
	if !(sna_sns_sght_can_see) continue;											// Skip players that currently can't see.
	
	// Snake can't be seen in Smoke
	if (other.sna_is_in_smoke) 	break;											// Don't run this code if in smoke.
	
	// Snake can't be seen when idle in a box. (During the caution/sneak phase.)
	var _sna_in_box_idle = false;												// Set Snake to NOT be in a box, by default.
	with (other) {
		if (sna_box_is_equipped) {												// If a box is equipped...
			switch(state) {
				case PS_IDLE:													// If idle...
					_sna_in_box_idle = true;									// Set Snake to be hiding in a box.
				break;
				case PS_ATTACK_GROUND:
					switch(attack) {
						case AT_TAUNT:
		        		case AT_TAUNT_2:										// If in inventory selection...
		        		case AT_EXTRA_1:										// If crouching...
		        			_sna_in_box_idle = true;							// Set Snake to be hiding in a box.
		        		break;
					}
				break;
			}
		}
	}
	if (_sna_in_box_idle && other.sna_stealth_state < 2 ) break;				// Don't run this code if a box is equipped while idle, and in the caution/sneak phase.
	
	
	var _eyeheight = (state == PS_CROUCH) ? sna_sns_sght_eye_height : sna_sns_sght_eye_height_crouch; // Get the eye height.
	
	// If Snake is NOT within the opponent's sight distance...
	if (point_distance(x, y - _eyeheight, other.x, other.y - other.char_height * 0.35) > sna_sns_sght_distance) {
		continue;																// Continue to next player.
	}
	
	// If Snake is NOT within the opponent's peripheral vision...
	//var _relativeangle = point_direction(x, y - _eyeheight, other.x, other.y - other.char_height * 0.35);
	var _relativeangle = point_direction(x, y, other.x, other.y);
	var _ang_difference = angle_difference(_relativeangle, sna_sns_sght_angle);
	if (abs(_ang_difference) > sna_sns_sght_conewidth) {
		continue;																// Continue to next player.
	}
	
	// Line of Sight collision checks
	var _sight_block = collision_line(x, y - _eyeheight, other.x, other.y - other.char_height * 0.5, asset_get("par_block"), true, true);	// Body collision check
	if (instance_exists(_sight_block))	// If an obstruction was hit...
		_sight_block = collision_line(x, y - _eyeheight, other.x, other.y - other.char_height, asset_get("par_block"), true, true);			// Head collision check
	if (instance_exists(_sight_block))	// If an obstruction was still hit...
		_sight_block = collision_line(x, y - _eyeheight, other.x, other.y, asset_get("par_block"), true, true); 							// Foot collision check
	
	if !(instance_exists(_sight_block)) {										// If the opponent's line of sight is still blocked...
		sna_sns_sght_sees_snake = true;											// Set the opponet to see Snake.
		other.sna_stealth_seen = true;											// Set Snake as seen.
	}
	
}

//=======================================
// UPDATE ALERT STATUS
//=======================================
if (time_4s) {

	// Update seen timer
	if (sna_stealth_seen) sna_stealth_seen_timer = clamp(sna_stealth_seen_timer + 1, 0, sna_stealth_seen_alertthreshold);
	else if (sna_stealth_seen_timer > 0) sna_stealth_seen_timer--;
	
	
	
	// Update Alert Status
	
	switch(sna_stealth_state) {
		
		case 0: // SNEAK
			
			// Play sound indication when Snake is seen.
			if (sna_stealth_seen && sna_stealth_seen_timer == 1) {					// On the first frame of Snake being seen...
				var _sfx_seen = sound_get("ui_see_snake");							// Get seen sound effect.
				with (oPlayer) {
					if ("sna_prime" in self) continue;												// Skip other Snake players.
					if (clone) continue;															// Skip Forsburn clones.
					if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
					
					if (sna_sns_sght_sees_snake) {									// Get the first opponent that sees Snake.
						// Display exclamation mark
						sna_emote_window = 1;
						sna_emote_start_time = _gameplay_time;
						// Play seen sound effect
						sound_play(_sfx_seen);										// Play the seen sound.
					}
					
				}
			}
			
			// Trigger ALERT when spotted
			if (sna_stealth_seen_timer == sna_stealth_seen_alertthreshold) {		// If Snake has been seen for too long...
				sna_stealth_state = 3;												// Go into the alert phase.
				sna_stealth_state_awareness = 99.99;								// Reset the awareness.
				
				// Play ALERT sound
				var _sfx_alert = sound_get("ui_alert");								// Get alert sound effect
				with (oPlayer) {
					if ("sna_prime" in self) continue;												// Skip other Snake players.
					if (clone) continue;															// Skip Forsburn clones.
					if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
					
					if (sna_sns_sght_sees_snake) {									// Get the first opponent that sees Snake.
						// Display exclamation mark
						sna_emote_window = 4;
						sna_emote_start_time = _gameplay_time;
						// Play alert sound effect
						sound_play(_sfx_alert);										// Play the alert sound.
					}
					
				}
			}
			
		break;
		
		case 1: // CAUTION
			
			// Update Awareness Timers
			sna_stealth_state_awareness -= sna_stealth_depletionrate_caution;		// Update the awareness.
			
			if (sna_stealth_state_awareness < 0) {									// If the awareness is depleted...
				sna_stealth_state = 0;												// Go to sneak phase.
				sna_stealth_state_awareness = 00.00;								// Reset the awareness.
				
				sound_play(sound_get("ui_alert_end"), false, 0);					// Play the alert end sound effect.
				
			}
			
			// Play sound indication when Snake is seen.
			if (sna_stealth_seen && sna_stealth_seen_timer == 1) {					// On the first frame of Snake being seen...
				var _sfx_seen = sound_get("ui_see_snake");							// Get seen sound effect.
				with (oPlayer) {
					if ("sna_prime" in self) continue;												// Skip other Snake players.
					if (clone) continue;															// Skip Forsburn clones.
					if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
					
					if (sna_sns_sght_sees_snake) {									// Get the first opponent that sees Snake.
						// Display exclamation mark
						sna_emote_window = 1;
						sna_emote_start_time = _gameplay_time;
						// Play seen sound effect
						sound_play(_sfx_seen);										// Play the seen sound.
					}
					
				}
			}
			
			// Trigger ALERT when spotted
			if (sna_stealth_seen_timer == sna_stealth_seen_alertthreshold) {		// If Snake has been seen for too long...
				sna_stealth_state = 3;												// Go into the alert phase.
				sna_stealth_state_awareness = 99.99;								// Reset the awareness.
				
				// Play ALERT sound
				var _sfx_alert = sound_get("ui_alert");								// Get alert sound effect
				with (oPlayer) {
					if ("sna_prime" in self) continue;												// Skip other Snake players.
					if (clone) continue;															// Skip Forsburn clones.
					if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
					
					if (sna_sns_sght_sees_snake) {									// Get the first opponent that sees Snake.
						// Display exclamation mark
						sna_emote_window = 4;
						sna_emote_start_time = _gameplay_time;
						// Play alert sound effect
						sound_play(_sfx_alert);										// Play the alert sound.
					}
					
				}
			}
			
		break;
		
		case 2: // EVASION
			
			// Update Awareness Timers
			sna_stealth_state_awareness -= sna_stealth_depletionrate_evasion;		// Update the awareness.
			
			if (sna_stealth_state_awareness < 0) {									// If the awareness is depleted...
				sna_stealth_state = 1;												// Go to caution phase.
				sna_stealth_state_awareness = 99.99;								// Reset the awareness.
				
				sound_play(sound_get("ui_alert_end"), false, 0);					// Play the alert end sound effect.
				
			}
			
			// Trigger ALERT when spotted
			if (sna_stealth_seen_timer == sna_stealth_seen_alertthreshold) {		// If Snake has been seen for too long...
				sna_stealth_state = 3;												// Go into the alert phase.
				sna_stealth_state_awareness = 99.99;								// Reset the awareness.
				
				// Play notice sound (instead of ALERT sound)
				var _sfx_seen = sound_get("ui_see_snake");							// Get seen sound effect.
				with (oPlayer) {
					if ("sna_prime" in self) continue;												// Skip other Snake players.
					if (clone) continue;															// Skip Forsburn clones.
					if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
					
					if (sna_sns_sght_sees_snake) {									// Get the first opponent that sees Snake.
						// Display exclamation mark
						sna_emote_window = 4;
						sna_emote_start_time = _gameplay_time;
						// Play alert sound effect
						sound_play(_sfx_seen);										// Play the alert sound.
					}
					
				}
			}
			
		break;
		
		case 3: // ALERT
			
			// Update Awareness Timers
			if (sna_stealth_seen_timer == sna_stealth_seen_alertthreshold) {		// If Snake is in the opponent's cone of vision for too long...
				sna_stealth_state_awareness = 99.99;								// Reset the awareness.
			}
			
			else {																	// If Snake is outside the opponent's cone of vision...
				sna_stealth_state_awareness -= sna_stealth_depletionrate_alert;		// Deplete the awareness.
				
				if (sna_stealth_state_awareness < 0) {								// If the awareness is depleted...
					sna_stealth_state = 2;											// Go to EVASION phase.
					sna_stealth_state_awareness = 99.99;							// Reset the awareness.
				}
			}
			
		break;
		
	}

}




//=========================================================
// INVENTORY
//=========================================================

if (state != PS_DEAD && state != PS_RESPAWN) move_cooldown[AT_TAUNT] = 5;													// Create a cooldown for the taunt, so you don't taunt until the menu is open.
//move_cooldown[AT_TAUNT_2] = 5;													// Create a cooldown for the taunt, so you don't taunt until the menu is open.

//if (state != PS_RESPAWN && respawn_taunt > 0) respawn_taunt = 0;				// Temporary fix for respawn bug. (TODO: Allow the player to browse their inventory while on the respawn platform.)

switch (state) {																// Set the states which the player is allowed to open the inventory.
	case PS_DEAD:
	case PS_RESPAWN:
		if (inv_can_open) inv_can_open = false;
	break;
	
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		switch (attack) {
			case AT_JAB:
			case AT_EXTRA_2:
			case AT_FTHROW:
			case AT_UTHROW:
			case AT_DTHROW:
			case AT_NTHROW:
			case AT_FSTRONG:
			case AT_USTRONG:
			case AT_DSTRONG:
			case AT_NSPECIAL:
			//case AT_FSPECIAL: // Specified in FSpecial windows!
			case AT_DSPECIAL:
			case 40: // AT_PHONE
				if (inv_can_open) inv_can_open = false;
			break;
			
			case AT_USPECIAL:
			case AT_EXTRA_3:
				if (inv_can_open) inv_can_open = true;
			break;
		}
	break;
	
	default:
		if (!inv_can_open) inv_can_open = true;
	break;
}

// Detect taunt input.
if (inv_can_open) {
	
	if (taunt_pressed || taunt_down) {
		
		input_timer_taunt++;													// Advance the taunt input timer, if held down.
		disable_all_attacks(5);													// Disable all attacks.
		
		// Prevent turning with stick.
		switch(state){
			
			case PS_IDLE:
			case PS_CROUCH:
			case PS_WALK:
				lock_spr_direction();
			break;
			
			case PS_ATTACK_GROUND:
				switch(attack){
					case AT_EXTRA_1:
					case AT_TAUNT:
					case AT_TAUNT_2:
						lock_spr_direction();
					break;
				}
				
			break;
			
		}
		
	}
	else {																		// If the taunt button is NOT held down...
		inv_menu_open = false;													// Close the inventory menu.
		input_timer_taunt = 0;													// Reset the taunt input timer.
	}
	
	if (input_timer_taunt > input_timer_taunt_toggle_threshold) {				// If taunt is held down past the hold threshold...
		inv_menu_open = true;													// Open the inventory.
	}
	else {																		// If the taunt timer is BELOW the threshold...
		
		if (input_timer_taunt == 0 &&
		(input_timer_taunt_late > 0 &&
		input_timer_taunt_late <= input_timer_taunt_toggle_threshold))			// If you released the taunt button before reaching the threshold...
			inv_toggle_firearm();												// Toggle equip/unequip your weapon.
		
	}
	
	spr_dir_old = spr_dir;														// Update the old sprite direction, for locking the direction.
	
}
else {																			// If you're NOT in a state where you can open the menu...
	inv_menu_open = false;														// Close the inventory menu.
	input_timer_taunt = 0;														// Reset the taunt input timer.
}

// Detect UI Navigation input
if (inv_menu_open || codec_menu_open || supply_menu_open) {						// If either the inventory or codec are open...
	if (input_nav_l) input_timer_nav_l++;
	else input_timer_nav_l = 0;
	if (input_nav_r) input_timer_nav_r++;
	else input_timer_nav_r = 0;
	if (input_nav_u) input_timer_nav_u++;
	else input_timer_nav_u = 0;
	if (input_nav_d) input_timer_nav_d++;
	else input_timer_nav_d = 0;
	
	if (input_nav_stick_l) input_timer_nav_stick_l++;
	else input_timer_nav_stick_l = 0;
	if (input_nav_stick_r) input_timer_nav_stick_r++;
	else input_timer_nav_stick_r = 0;
	if (input_nav_stick_u) input_timer_nav_stick_u++;
	else input_timer_nav_stick_u = 0;
	if (input_nav_stick_d) input_timer_nav_stick_d++;
	else input_timer_nav_stick_d = 0;
} else {																		// If neither the inventory or codec are open...
	if (input_timer_nav_stick_l != 0) input_timer_nav_stick_l = 0;				// Reset the UI input timers.
	if (input_timer_nav_stick_r != 0) input_timer_nav_stick_r = 0;
	if (input_timer_nav_stick_u != 0) input_timer_nav_stick_u = 0;
	if (input_timer_nav_stick_d != 0) input_timer_nav_stick_d = 0;
}


//----------------------------------
// UI State Timers
//----------------------------------
var _ui_cur_state = ui_state[ui_state_current];
var ui_state_timer = _gameplay_time - ui_state_start_time;
if (ui_state_timer >= _ui_cur_state.state_length)								// If at the end of the current state...
		ui_set_state(_ui_cur_state.next_state);									// Go to the next state.

//----------------------------------
// UI State Machine
//----------------------------------
if (inv_menu_open) {															// If the inventory menu is open...
	
	//var _state_length = ui_state[ui_state_current].state_length;
	//var _next_state = ui_state[ui_state_current].next_state;
	var input_nav_l_stick_released = (input_timer_nav_stick_l == 0 && input_timer_nav_stick_l_late > 0);
	var input_nav_r_stick_released = (input_timer_nav_stick_r == 0 && input_timer_nav_stick_r_late > 0);
	var input_nav_u_stick_released = (input_timer_nav_stick_u == 0 && input_timer_nav_stick_u_late > 0);
	var input_nav_d_stick_released = (input_timer_nav_stick_d == 0 && input_timer_nav_stick_d_late > 0);
	
	//disable_all_attacks(5);														// Disable attacks
	
	// Enable taunt
	switch (ui_state_current) {
		
		case 0: // INV_NOONE
		case 1: // INV_MAIN
		break;																		// Don't taunt in the main menu state.
		
		default:
			
			move_cooldown[AT_TAUNT] = 0;											// Remove the taunt cooldown.
			//move_cooldown[AT_TAUNT_2] = 0;											// Remove the taunt cooldown.
			
			if ((state != PS_ATTACK_GROUND &&
			state != PS_ATTACK_AIR &&
			state != PS_DEAD &&
			//state != PS_RESPAWN &&
			state_cat  != SC_HITSTUN) || is_crouching) {							// If not in the attack state, or you're crouching...
				set_attack(AT_TAUNT);												// Go into the taunt state.
				//set_attack(AT_TAUNT_2);												// Go into the taunt state.
			}
			
		break;
		
	}
	
	
	switch (ui_state_current) {														// Get the current state.
		
		// Closed
		case 0: // INV_NOONE
																					// Instantly go to weapon category menus, if already holding a direction.
			if (input_nav_stick_r) {										// If holding right...
				ui_set_state(2); // UI_INV_FIREARMS_OPEN
				ui_cursor_y = inv_firearm_container;								// Navigate to the currently selected firearm slot.
			}
			else if (input_nav_stick_l) {									// If holding left...
				ui_set_state(7); // UI_INV_THROWABLES_OPEN
				ui_cursor_y = inv_throwable_container;								// Navigate to the currently selected throwable slot.
			}
			else if (input_nav_stick_d) {									// If holding down...
				ui_set_state(12); // UI_INV_PLANTABLES_OPEN
				ui_cursor_y = inv_plantable_container;							// Navigate to the currently selected plantable slot.	// TODO: commented this out for crouching? Can safely uncomment now?
				
				//input_timer_nav_cycle_allowed = false;								// Temporarily disable cycling.
				//ui_set_state(1); // INV_MAIN
			}
			else if (input_nav_stick_u) {										// If holding up...
				ui_set_state(17); // UI_INV_ITEMS_OPEN
				ui_cursor_y = inv_item_container;									// Navigate to the currently selected item slot.
			}
			else {																	// If you're not holding a direction, go to the main menu.
				ui_set_state(1); // INV_MAIN
			}
		break;
		
		
		// Main Menu
		case 1: // INV_MAIN
			
			ui_cursor_x = 0;														// Reset the cursor position.
			ui_cursor_y = 0;
			
			if (ui_state_timer >= _ui_cur_state.state_length - 1) 
				inv_hide_equipment_cycle();											// Hide cycled equipment after the main menu animation has looped.
			
			if (ui_state_timer == 0) {												// If on the first frame of the menu...
				input_timer_nav_r = 0;												// Reset the navigation timer, to prevent accidental weapon cycling.
				input_timer_nav_l = 0;
				input_timer_nav_u = 0;
				input_timer_nav_d = 0;
				
				input_timer_nav_stick_r = 0;										// Reset the navigation timer, to prevent accidental weapon cycling.
				input_timer_nav_stick_l = 0;
				input_timer_nav_stick_u = 0;
				input_timer_nav_stick_d = 0;
			}
			
			
			if (ui_state_timer >= input_timer_nav_cycle_threshold)					// If the state timer exceeds the min cycle hold time...
				input_timer_nav_cycle_allowed = true;								// Re-enable cycling, if disabled.
			
			
			if ( input_timer_nav_stick_r >= input_timer_nav_cycle_threshold) {			// If right is held down...
				ui_set_state(2); // UI_INV_FIREARMS_OPEN
				ui_cursor_y = inv_firearm_container;								// Navigate to the currently selected firearm slot.
			}
			else if ( input_timer_nav_stick_l >= input_timer_nav_cycle_threshold) {		// If left is held down...
				ui_set_state(7); // UI_INV_THROWABLES_OPEN
				ui_cursor_y = inv_throwable_container;								// Navigate to the currently selected throwable slot.
			}
			else if ( input_timer_nav_stick_d >= input_timer_nav_cycle_threshold) {		// If down is held down...
				ui_set_state(12); // UI_INV_PLANTABLES_OPEN
				ui_cursor_y = inv_plantable_container;								// Navigate to the currently selected plantable slot.
			}
			else if ( input_timer_nav_stick_u >= input_timer_nav_cycle_threshold) {		// If up is held down...
				ui_set_state(17); // UI_INV_ITEMS_OPEN
				ui_cursor_y = inv_item_container;									// Navigate to the currently selected item slot.
			}
			
			else if (input_timer_nav_cycle_allowed)	{								// If cycling is allowed...
			
				if ( input_nav_r_stick_released ) {																				// If right is tapped...
					inv_firearm_container = add_looped(inv_firearm_container, 1, array_length(inv_firearm_containers));			// Cycle the selected firearm container.
					inv_update_firearm_index();																					// Update the firearm index.
					inv_display_equipment_cycle(1);															// Cycle hook
				}
				else if ( input_nav_l_stick_released ) {																		// If left is tapped...
					inv_throwable_container = add_looped(inv_throwable_container, 1, array_length(inv_throwable_containers));	// Cycle the selected throwable container.
					inv_update_throwable_index();																				// Update the throwable index.
					inv_display_equipment_cycle(2);														// Cycle hook
				}
				else if ( input_nav_d_stick_released ) {																		// If down is tapped...
					inv_plantable_container = add_looped(inv_plantable_container, 1, array_length(inv_plantable_containers));	// Cycle the selected plantable container.
					inv_update_plantable_index();																				// Update the plantable index.
					inv_display_equipment_cycle(3);														// Cycle hook
				}
				else if ( input_nav_u_stick_released ) {																		// If up is tapped...
					inv_item_container = add_looped(inv_item_container, 1, array_length(inv_item_containers));					// Cycle the selected item container.
					inv_update_item_index();																					// Update the item index.
					inv_display_equipment_cycle(4);															// Cycle hook
				}
			}
			
			// Supply Drop Menu
			if (special_pressed) {
				supply_menu_open = true;
				sound_play(sound_get("_pho_acnh_prompt3"), false, 0);			// Play the Menu Opening sound.
				ui_cursor_x = 0;												// Reset cursor coordinates when opening supply drop menu.
				ui_cursor_y = 0;
				clear_button_buffer(PC_SPECIAL_PRESSED);						// Clear input buffer.
			}
			
		break;
		
		
		// Opening Windows
		case 2: // UI_INV_FIREARMS_OPEN
		case 7: // UI_INV_THROWABLES_OPEN
		case 12: // UI_INV_PLANTABLES_OPEN
		case 17: // UI_INV_ITEMS_OPEN
			
			if (ui_state_timer == 1) {												// If on the first frame of the menu...
				input_timer_nav_r = 0;												// Reset the navigation timer, to prevent accidental weapon scrolling.
				input_timer_nav_l = 0;
				input_timer_nav_u = 0;
				input_timer_nav_d = 0;
			}
			
			if (ui_state_timer == 1) sound_play(sfx_ui_inv_open, false, 0);	// Play the inventory open sound effect.
		break;
		
		// Scrolling Windows
		case 4: // UI_INV_FIREARMS_NEXT
		case 5: // UI_INV_FIREARMS_PREV
		case 9: // UI_INV_THROWABLES_NEXT
		case 10: // UI_INV_THROWABLES_PREV
		case 14: // UI_INV_PLANTABLES_NEXT
		case 15: // UI_INV_PLANTABLES_PREV
		case 19: // UI_INV_ITEMS_NEXT
		case 20: // UI_INV_ITEMS_PREV
			if (ui_state_timer == 1) sound_play(sfx_ui_inv_scroll, false, 0);	// Play the inventory scrolling sound effect.
		break;
		
		
		// Firearms
		case 3: // UI_INV_FIREARMS_IDLE
			
			var _cursor_container = inv_firearm_containers[ui_cursor_y];
			var _cursor_weapon = dict_equipment[_cursor_container];
			var _suppressor_attached = _cursor_weapon.suppressor_attached;
			
			if (input_nav_stick_r) {																			// If right stick is held...
				
				if (
					input_timer_nav_u == 1 || input_timer_nav_u >= input_timer_nav_scroll_threshold ||
					input_timer_nav_r == 1 || input_timer_nav_r >= input_timer_nav_scroll_threshold
				) {																								// If up or right is held down...
					ui_set_state(4); // UI_INV_FIREARMS_NEXT
					ui_cursor_y = add_looped(ui_cursor_y, 1, array_length(inv_firearm_containers));				// Advance the cursor position.
				}
				
				else if (
					input_timer_nav_d == 1 || input_timer_nav_d >= input_timer_nav_scroll_threshold ||
					input_timer_nav_l == 1 || input_timer_nav_l >= input_timer_nav_scroll_threshold
				) {																								// If down or left is held down...
					ui_set_state(5); // UI_INV_FIREARMS_PREV
					ui_cursor_y = add_looped(ui_cursor_y, -1, array_length(inv_firearm_containers));			// Advance the cursor position.
				}
				
				// Toggle Suppressor
				if (attack_pressed && _cursor_weapon.uses_suppressors) {										// If the attack button is pressed, and the highlighted weapon uses suppressors...
					
					suppressor_toggle(inv_firearm_containers[ui_cursor_y]);										// Toggle the suppressor.
					
					clear_button_buffer(PC_ATTACK_PRESSED);														// Clear attack button buffer.
					
				}
				
			} else {																							// If right stick is NOT held...
				
				input_timer_nav_cycle_allowed = false;															// Temporarily disable cycling.
				inv_firearm_container = ui_cursor_y;															// Set the equipped firearm to the highlighted cursor slot.
				inv_update_firearm_index();																		// Update the firearm index.
				ui_set_state(6); // UI_INV_FIREARMS_CLOSE
				
			}
			
		break;
		
		
		
		// Throwables
		case 8: // UI_INV_THROWABLES_IDLE
			
			if (input_nav_stick_l) {																			// If right stick is held...
				
				if (
					input_timer_nav_u == 1 || input_timer_nav_u >= input_timer_nav_scroll_threshold ||
					input_timer_nav_r == 1 || input_timer_nav_r >= input_timer_nav_scroll_threshold
				) {																								// If up or right is held down...
					ui_set_state(9); // UI_INV_THROWABLES_NEXT
					ui_cursor_y = add_looped(ui_cursor_y, 1, array_length(inv_throwable_containers));				// Advance the cursor position.
				}
				
				else if (
					input_timer_nav_d == 1 || input_timer_nav_d >= input_timer_nav_scroll_threshold ||
					input_timer_nav_l == 1 || input_timer_nav_l >= input_timer_nav_scroll_threshold
				) {																								// If down or left is held down...
					ui_set_state(10); // UI_INV_THROWABLES_PREV
					ui_cursor_y = add_looped(ui_cursor_y, -1, array_length(inv_throwable_containers));			// Advance the cursor position.
				}
				
			} else {																							// If right stick is NOT held...
				
				input_timer_nav_cycle_allowed = false;															// Temporarily disable cycling.
				inv_throwable_container = ui_cursor_y;															// Set the equipped firearm to the highlighted cursor slot.
				inv_update_throwable_index();																		// Update the firearm index.
				ui_set_state(11); // UI_INV_THROWABLES_CLOSE
				
			}
			
		break;
		
		
		
		// Plantables
		case 13: // UI_INV_PLANTABLES_IDLE
			
			if (input_nav_stick_d) {																			// If right stick is held...
				
				if (
					input_timer_nav_u == 1 || input_timer_nav_u >= input_timer_nav_scroll_threshold ||
					input_timer_nav_r == 1 || input_timer_nav_r >= input_timer_nav_scroll_threshold
				) {																								// If up or right is held down...
					ui_set_state(14); // UI_INV_PLANTABLES_NEXT
					ui_cursor_y = add_looped(ui_cursor_y, 1, array_length(inv_plantable_containers));				// Advance the cursor position.
				}
				
				else if (
					input_timer_nav_d == 1 || input_timer_nav_d >= input_timer_nav_scroll_threshold ||
					input_timer_nav_l == 1 || input_timer_nav_l >= input_timer_nav_scroll_threshold
				) {																								// If down or left is held down...
					ui_set_state(15); // UI_INV_PLANTABLES_PREV
					ui_cursor_y = add_looped(ui_cursor_y, -1, array_length(inv_plantable_containers));			// Advance the cursor position.
				}
				
			} else {																							// If right stick is NOT held...
				
				input_timer_nav_cycle_allowed = false;															// Temporarily disable cycling.
				inv_plantable_container = ui_cursor_y;															// Set the equipped firearm to the highlighted cursor slot.
				inv_update_plantable_index();																		// Update the firearm index.
				ui_set_state(16); // UI_INV_PLANTABLES_CLOSE
				
			}
			
		break;
		
		
		
		// Items
		case 18: // UI_INV_ITEMS_IDLE
			
			if (input_nav_stick_u) {																			// If right stick is held...
				
				if (
					input_timer_nav_u == 1 || input_timer_nav_u >= input_timer_nav_scroll_threshold ||
					input_timer_nav_l == 1 || input_timer_nav_l >= input_timer_nav_scroll_threshold
				) {																								// If up or left is held down...
					ui_set_state(19); // UI_INV_ITEMS_NEXT
					ui_cursor_y = add_looped(ui_cursor_y, 1, array_length(inv_item_containers));				// Advance the cursor position.
				}
				
				else if (
					input_timer_nav_d == 1 || input_timer_nav_d >= input_timer_nav_scroll_threshold ||
					input_timer_nav_r == 1 || input_timer_nav_r >= input_timer_nav_scroll_threshold
				) {																								// If down or right is held down...
					ui_set_state(20); // UI_INV_ITEMS_PREV
					ui_cursor_y = add_looped(ui_cursor_y, -1, array_length(inv_item_containers));			// Advance the cursor position.
				}
				
			} else {																							// If right stick is NOT held...
				
				input_timer_nav_cycle_allowed = false;															// Temporarily disable cycling.
				inv_item_container = ui_cursor_y;															// Set the equipped firearm to the highlighted cursor slot.
				inv_update_item_index();																		// Update the firearm index.
				ui_set_state(21); // UI_INV_ITEMS_CLOSE
				
			}
			
		break;
		
		// Supply Drop Menu
    	case 22:	// UI_SUPPLY_IDLE
    	break;																		// Don't do anything when the supply drop menu is open.
		
	}
	
}

else {										// If you're not in the taunt state, or pressing taunt...
	
	switch (ui_state_current) {
		
		case 0: // INV_NOONE
			ui_cursor_x = 0;															// Reset the cursor position.
			ui_cursor_y = 0;
			if (!input_timer_nav_cycle_allowed) input_timer_nav_cycle_allowed = true;	// Re-enable cycling, if disabled.
		break;
		
		// Main Menu
		case 1: // INV_MAIN
			ui_set_state(0); // INV_NOONE
		break;
		
		
		
		// Firearms
		case 3: // UI_INV_FIREARMS_IDLE
    	case 4: // UI_INV_FIREARMS_NEXT
    	case 5: // UI_INV_FIREARMS_PREV
    	    
    	    inv_firearm_container = ui_cursor_y;									// Set the equipped firearm to the highlighted cursor slot.
			inv_update_firearm_index();												// Update the firearm index.
			ui_set_state(6); // UI_INV_FIREARMS_CLOSE
    	
    	break;
    	case 6:	// UI_INV_FIREARMS_CLOSE
    	break;																		// Let the closing animation play.
    	
    	
    	
    	// Throwables
    	case 8: // UI_INV_THROWABLES_IDLE
    	case 9: // UI_INV_THROWABLES_NEXT
    	case 10: // UI_INV_THROWABLES_PREV
    		
    	    inv_throwable_container = ui_cursor_y;									// Set the equipped throwable to the highlighted cursor slot.
			inv_update_throwable_index();											// Update the throwable index.
			ui_set_state(11); // UI_INV_THROWABLES_CLOSE
    		
    	break;
    	case 11:	// UI_INV_THROWABLES_CLOSE
    	break;																		// Let the closing animation play.
    	
    	
    	
    	// Plantables
    	case 13: // UI_INV_PLANTABLES_IDLE
    	case 14: // UI_INV_PLANTABLES_NEXT
    	case 15: // UI_INV_PLANTABLES_PREV
    		
    	    inv_plantable_container = ui_cursor_y;									// Set the equipped plantable to the highlighted cursor slot.
			inv_update_plantable_index();											// Update the plantable index.
			ui_set_state(16); // UI_INV_PLANTABLES_CLOSE
    		
    	break;
    	case 16:	// UI_INV_PLANTABLES_CLOSE
    	break;																		// Let the closing animation play.
    	
    	
    	
    	// Items
    	case 18: // UI_INV_ITEMS_IDLE
    	case 19: // UI_INV_ITEMS_NEXT
    	case 20: // UI_INV_ITEMS_PREV
    		
    	    inv_item_container = ui_cursor_y;										// Set the equipped item to the highlighted cursor slot.
			inv_update_item_index();												// Update the item index.
			ui_set_state(21); // UI_INV_ITEMS_CLOSE
    		
    	break;
    	case 21:	// UI_INV_ITEMS_CLOSE
    	break;																		// Let the closing animation play.
    	
    	// Supply Drop Menu
    	case 22:	// UI_SUPPLY_IDLE
    	break;																		// Don't exit when the supply drop menu is open.
    	
		
		
		// Everything Else
		default:
			ui_cursor_x = 0;															// Reset the cursor position.
			ui_cursor_y = 0;
			ui_set_state(0); // INV_NOONE
		break;
		
	}
}


//---------------------------------------------------------
// Supply Drop Menu
//---------------------------------------------------------
if (supply_menu_open) {
	
	//---------------------------------------------------------
	// Enable Taunt
	//---------------------------------------------------------
	//move_cooldown[AT_TAUNT] = 0;												// Remove the taunt cooldown.
	//if (state != PS_SPAWN) move_cooldown[AT_TAUNT_2] = 0;						// Remove the taunt cooldown.
	if (state != PS_SPAWN) move_cooldown[AT_TAUNT] = 0;						// Remove the taunt cooldown.
	
	// Conditions for going into taunt.
	var _go_into_taunt = true;
	switch(state) {
		case PS_ATTACK_GROUND:
		case PS_ATTACK_AIR:
		case PS_DEAD:
		case PS_SPAWN:
		case PS_RESPAWN:
			_go_into_taunt = false;
		break;
	}
	if (is_crouching) _go_into_taunt = true;
	switch(state_cat){
		case SC_HITSTUN:
		_go_into_taunt = false;
	}
	
	//if (_go_into_taunt) set_attack(AT_TAUNT_2);									// Go into the taunt state, if possible.
	if (_go_into_taunt) set_attack(AT_TAUNT);									// Go into the taunt state, if possible.
	
	
	// Set UI State
	if (ui_state_current != 22) ui_set_state(22);								// Go into Supply Menu UI State
	
	//---------------------------------------------------------
	// UI Cursor Navigation
	//---------------------------------------------------------
	
	// Y Out of bounds prevention
	var _cursor_y_max = 4;
	
	// Y Cursor Navigation
	if (input_timer_nav_u == 1) {
		ui_cursor_y = add_looped(ui_cursor_y, -1, _cursor_y_max);					// Advance the cursor position.
		sound_play(sound_get("_pho_acnh_move1"), false, 0);				// Play the navigation sound.
	}
	else if (input_timer_nav_d == 1) {
		ui_cursor_y = add_looped(ui_cursor_y, 1, _cursor_y_max);					// Advance the cursor position.
		sound_play(sound_get("_pho_acnh_move1"), false, 0);				// Play the navigation sound.
	}
	
	// X Out of bounds prevention
	_cursor_x_max = array_length(supply_containers[ui_cursor_y]);		// Update x array length.
	ui_cursor_x = clamp(ui_cursor_x, 0, _cursor_x_max - 1);					// Clamp the x cursor, to prevent it from going out of bounds.
	
	// X Cursor Navigation
	if (input_timer_nav_l == 1) {
		ui_cursor_x = add_looped(ui_cursor_x, -1, _cursor_x_max);					// Advance the cursor position.
		sound_play(sound_get("_pho_acnh_move1"), false, 0);				// Play the navigation sound.
	}
	else if (input_timer_nav_r == 1) {
		ui_cursor_x = add_looped(ui_cursor_x, 1, _cursor_x_max);					// Advance the cursor position.
		sound_play(sound_get("_pho_acnh_move1"), false, 0);				// Play the navigation sound.
	}
	
	//---------------------------------------------------------
	// Select (Attack)
	//---------------------------------------------------------
	if (attack_pressed) {													// If the attack button is pressed...
		
		clear_button_buffer(PC_ATTACK_PRESSED);								// Clear input buffer
		
		var _given_equip_idx = supply_containers[ui_cursor_y, ui_cursor_x].linked_equip;
		
		// Request supply drop
		supplydrop_request(x, y, _given_equip_idx);							// Run the supply drop request function.
		
		// Play the select sounds
		sound_play(sound_get("_pho_acnh_select1"));							// Play the UI selection sounds
		sound_play(sound_get("_pho_acnh_select2"));
		
		// Exit
		ui_set_state(0); // INV_NOONE										// Exit the supply drop menu state.
		supply_menu_open = false;											// Disable the supply drop menu variable.
		clear_button_buffer(PC_ATTACK_PRESSED);								// Clear the input buffer.
	}
	
	//---------------------------------------------------------
	// Select (Jump)
	//---------------------------------------------------------
	if (jump_pressed) {														// If the jump button is pressed...
		clear_button_buffer(PC_JUMP_PRESSED);								// TODO: Used to request suppressor supply drops. (Not available as starter, since you start with a suppressor by default.)
	}
	
	//---------------------------------------------------------
	// Exit
	//---------------------------------------------------------
	if (strong_pressed || special_pressed) {									// When pressing the exit button...
		ui_set_state(0); // INV_NOONE											// Exit the supply drop menu state.
		supply_menu_open = false;												// Disable the supply drop menu variable.
		sound_play(sound_get("_pho_acnh_cancel1"), false, 0);					// Play the exit sound.
		clear_button_buffer(PC_SPECIAL_PRESSED);								// Clear the input buffer.
		clear_button_buffer(PC_STRONG_PRESSED);
	}
	
	
}

//---------------------------------------------------------
// Supply Drop Logic
//---------------------------------------------------------

// Play Chopper (or stealth camo) sound effect
if (_gameplay_time == supplydrop_request_time + supplydrop_wait_time - 60) {
	
	// Collision check for ceiling
	var _ceiling_obstruction = collision_line(supplydrop_point_x, supplydrop_point_y - 10, supplydrop_point_x, supplydrop_point_y + supplydrop_box_spawn_y, asset_get("par_block"), true, true);
	
	// Play the sound effect
	if (instance_exists(_ceiling_obstruction)) {																					// If there is a ceiling in the way...
		// Play a stealth camo sound effect.
		sound_play(sound_get("sfx_stealthcamo"), false, 0);																			// Play the stealth camo sound effect.
	}
	else {
		// Play a helicopter flyby sound effect
		sound_play(sound_get("sfx_chopper_flyby"), false, 0, 0.6);																		// Play the helicopter flyby sound effect.
	}
	
}

// Spawn Supply Drop
if (_gameplay_time == supplydrop_request_time + supplydrop_wait_time) {														// If at the end of waiting for the supply drop...
	
	// Collision check for ceiling
	var _ceiling_obstruction = collision_line(supplydrop_point_x, supplydrop_point_y - 10, supplydrop_point_x, supplydrop_point_y + supplydrop_box_spawn_y, asset_get("par_block"), true, true);
	
	// Spawn the supply drop.
	if (instance_exists(_ceiling_obstruction)) {																					// If there is a ceiling in the way...
		// Manually spawn the supplies directly at the drop point.				TODO: Draw the MKII uncloaking, and dropping the supplies?
		supplydrop_manualspawn(supplydrop_point_x, supplydrop_point_y);																// Manually spawn the supplies directly at the drop point
		
		sound_play(sound_get("ui_item_drop"));                              														// Play the item spawn sound effect.
	}
	else {																															// If there is NOT a ceiling in the way...
		// Spawn the supply drop box
		supplydrop_ent_box = instance_create(supplydrop_point_x, supplydrop_point_y + supplydrop_box_spawn_y, "obj_article1");		// Spawn the supply drop entity.
		supplydrop_ent_box.ent_idx = ENT_SUPPLYDROP;																				// Set the entity index to be a supply drop box.
		supplydrop_ent_box.child_hitbox = create_hitbox(AT_NSPECIAL, 10, supplydrop_ent_box.x, supplydrop_ent_box.y);				// Create the hitbox.
		supplydrop_ent_box.child_hitbox.player = 0;																					// Allow the hitbox to hit Snake.
	}
	
}


// On equipment switch...
/*if (time_4s) {
	if (inv_firearm != inv_firearm_late ||
	inv_throwable != inv_throwable_late ||
	inv_plantable != inv_plantable_late ||
	inv_item != inv_item_late)														// If equipment was switched...
	on_equipment_switch();

// On Weapon Switch...
//if (inv_firearm != inv_firearm_late) on_firearm_switch();						// If the firearm was switched, runt he on_firearm_switch hook.

// On Throwable Switch...
// TODO

// On Plantable Switch...
// TODO

// On Item Switch...
// TODO
}*/


//---------------------------------------------------------
// Disable Specials for Empty or Unequipped Containers
//---------------------------------------------------------
if (time_2s) {
	if (inv_firearm == EQ_EMPTY)													move_cooldown[AT_FSPECIAL] = 5;
	if (inv_throwable == EQ_EMPTY || dict_equipment[inv_throwable].ammo_total < 1)	move_cooldown[AT_NSPECIAL] = 5;
	if (inv_plantable == EQ_EMPTY)													move_cooldown[AT_DSPECIAL] = 5;
	//if (inv_item == EQ_EMPTY)														move_cooldown[AT_USPECIAL] = 5;
}


//=========================================================
// CUSTOM SOUND EFFECTS                                                 		// Code taken from ricE's "Tails 2"
//=========================================================

//---------------------------------------------------------
// Respawn Helicopter Sounds
//---------------------------------------------------------
switch (state) {
	case PS_RESPAWN:
		if (state_timer == 0) {
			is_on_respawn_plat = true;											// Set Snake to be on the respawn platform, when in the respawn state.
			sound_play(sound_get("sfx_chopper_arrive_ext"), false, 0);						// Play helicopter arrive sound	
		}
	break;
	
	default:
		if (is_on_respawn_plat) {												// If Snake was on a respawn platform during the last frame...
			sound_stop(sound_get("sfx_chopper_arrive_ext"));						// Stop helicopter arrive sound
			sound_play(sound_get("sfx_chopper_leave"), false, 0); 							// Play helicopter leave sound
			is_on_respawn_plat = false;											// Update the respawn platform variable.
		}
	break;
}


//=========================================================
// FORSBURN SMOKE DEPTH
//=========================================================

switch (state) {
	
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:														// Have default depth when attacking.
		
		// The only attacks that don't reset the depth should be unsuppressed firearms.
		switch(attack){
			case AT_NSPECIAL:
			case AT_USPECIAL:
			case AT_DSPECIAL:
			case AT_EXTRA_1:
			case AT_TAUNT:
			case AT_TAUNT_2:
			case AT_NTHROW:
				sna_hide_in_smoke = true;
			break;
			
			case AT_FSPECIAL:
				
				var _suppressed = dict_equipment[inv_firearm].suppressor_attached;
				
				if ((!_suppressed && window == 3) && !instance_exists(sna_grabbed_playerid)) // If in the firing window, and the weapon is NOT suppressed, and a player is NOT held...
					sna_hide_in_smoke = false;									// Appear in the smoke.
				else sna_hide_in_smoke = true;									// Remain hidden in the smoke.
				
			break;
			
			default:
				sna_hide_in_smoke = false;
			break;
		}
	
	break;
	
	case PS_HITSTUN:
	case PS_HITSTUN_LAND:
		sna_hide_in_smoke = false;												// Have default depth when hit.
	break;
	
	default:
		sna_hide_in_smoke = true;
	break;
	
}

// Apply smoke depth.
if (sna_hide_in_smoke) {														// If hiding in smoke is enabled...
	force_depth = true;
	depth = 0;																	// Force the depth to 0.
}



// Set whether or not Snake is in a smoke cloud.
/*sna_is_in_smoke = false;														// Reset "sna_is_in_smoke" to false.
for (var i = 0; i < array_length(sna_smoke_clouds); i++) {
	if (_gameplay_time > sna_smoke_clouds[i].creation_time + sna_smoke_lifetime) continue;     // Skip expired smoke clouds.
	if (_gameplay_time <= sna_smoke_clouds[i].creation_time + 60) continue;					// Skip initial (transparent) smoke clouds.
	
	// If in the current smoke cloud...
	if ((abs(x - sna_smoke_clouds[i].x) < sna_smoke_radius) && (abs(y - (sna_smoke_clouds[i].y - 30)) < sna_smoke_radius)) {
		sna_is_in_smoke = true;													// Set "sna_is_in_smoke" to true.
		break;																	// End the loop.
	}
	
}*/

//-----------------------------------
// In Smoke Draw Effects
//-----------------------------------
if (sna_is_in_smoke) {															// If Snake is in smoke...
	sna_remove_dust = true;														// Remove dust when in smoke.
	draw_indicator = false;														// Hide Snake's player indicator.
	// TODO: Remove footstep sounds
}
else {																			// If Snake is NOT in smoke...
	sna_remove_dust = false;													// Do NOT remove dust when NOT in smoke.
}



//=========================================================
// DUST REMOVAL
//=========================================================
if(sna_remove_dust){
     with(asset_new_dust) {
          if(player == other.player && x != -300) {
               switch(dust_fx) {
                    case 3: case 4: case 0: case 15:
                         x = -300; y = -300;
                    break;
               }
          }
     }
}



//=========================================================
// VOICE CLIPS
//=========================================================



//=========================================================
// LATE UPDATE
//=========================================================

//spr_dir_old = spr_dir;															// Get last frame's sprite direction.
//free_old = free;																// Get whether or not you were in the air last frame.
//was_crouching = is_crouching;													// If you were crouching in the last frame.

input_timer_nav_stick_l_late = input_timer_nav_stick_l;                         // Used to detect if you've released a button.
input_timer_nav_stick_r_late = input_timer_nav_stick_r;
input_timer_nav_stick_u_late = input_timer_nav_stick_u;
input_timer_nav_stick_d_late = input_timer_nav_stick_d;

if (input_timer_taunt_late != input_timer_taunt)
	input_timer_taunt_late = input_timer_taunt;

/*if (time_4s) {
	inv_firearm_late = inv_firearm;													// Late update for equipment selections.
	inv_throwable_late = inv_throwable;
	inv_plantable_late = inv_plantable;
	inv_item_late = inv_item;
}*/

// TODO: Remove these? Probably useless.
//inv_firearm_container_late = inv_firearm_container;								// Late update for the container selections.
//inv_throwable_container_late = inv_throwable_container;
//inv_plantable_container_late = inv_plantable_container;
//inv_item_container_late = inv_item_container;

//sna_is_aiming_late = sna_is_aiming;												// Late update for aiming.
sna_is_using_aimlegs_late = sna_is_using_aimlegs;								// Late update for aimlegs enabled.
//sna_legs_window_late = sna_legs_window;											// Late update for current legs window.

if (vox_hurt_cooldown > 0 && hitpause == false) vox_hurt_cooldown -= 1;			// Gradually decrease the vox_hurt_cooldown. Hitpause delays the cooldown.
if (vox_hurt_cooldown < 0) vox_hurt_cooldown = 0;								// Clamp the vox_hurt_cooldown




//=========================================================
// FUNCTIONS
//=========================================================

//-----------------------------------------
// Give Equipment
//-----------------------------------------
#define give_equipment(_idx, _ammo, _fill_magazine)															// Give an item. Specify the given ammo, and whether or not it should fill the magazine.
var _given_equipment = dict_equipment[_idx];

dict_equipment[_idx].is_owned = true;																		                    // Give the player the equipment.

if (_given_equipment.uses_ammo) {																								// If the given equipment uses ammo...
	
	give_ammo(_idx, _ammo, _fill_magazine);																						// Give the player the desired ammo.
	
	dict_equipment[_idx].is_chambered = (_given_equipment.ammo_mag > 0) ? true : false;											// If the mag has ammo, chamber it. If the mag comes empty, don't chamber it.

	
}

inventory_refresh();																						                    // Rebuild the inventory lists.



//-----------------------------------------
// Give Ammo
//-----------------------------------------
#define give_ammo(_idx, _ammo, _fill_magazine)
var _given_equipment = dict_equipment[_idx];

dict_equipment[_idx].ammo_total = clamp(dict_equipment[_idx].ammo_total + _ammo, 0, _given_equipment.ammo_total_max);		// Give the player the desired ammo.

if (_fill_magazine == true && _given_equipment.uses_magazines == true) {													// Should the magazine be filled?
	dict_equipment[_idx].ammo_mag = clamp(_given_equipment.ammo_total, 0, _given_equipment.ammo_mag_max);	                // Fill the magazine, if specified.
	if (_given_equipment.mag_bullet_queue < 1)																				// If the mag bullet queue is less than 1...
		dict_equipment[_idx].mag_bullet_queue = clamp(_given_equipment.mag_bullet_queue + _ammo, -_given_equipment.ammo_mag_max, _given_equipment.ammo_mag_max);	// Reset the mag bullet queue.
}																						                    // Rebuild the inventory lists.


//-----------------------------------------
// Remove Equipment
//-----------------------------------------
#define remove_equipment(_idx )														// Remove an item. Specify the given ammo, and whether or not it should fill the magazine.
var _taken_equipment = dict_equipment[_idx];

dict_equipment[_idx].is_owned = false;												// Remove the equipment.

inventory_refresh();																// Rebuild the inventory lists.


//-----------------------------------------
// Refresh Inventory Indexes
//-----------------------------------------
#define inv_update_firearm_index												// Update the current firearm index.
inv_firearm = inv_firearm_containers[inv_firearm_container];

if (inv_firearm != inv_firearm_late) {											// If the firearm has changed...
	on_equipment_switch();														// Run the equipment switch function.
	on_firearm_switch();														// Run the firearm switch function.
	inv_firearm_late = inv_firearm;												// Update the late firearm variable.
}

if (inv_firearm != EQ_EMPTY) inv_firearm_prev = inv_firearm;					// If you didn't switch to an empty slot, update your previously equipped firearm to the currently equipped one.

#define inv_update_throwable_index												// Update the current throwable index.
inv_throwable = inv_throwable_containers[inv_throwable_container];

if (inv_throwable != inv_throwable_late) {										// If the throwable has changed...
	on_equipment_switch();														// Run the equipment switch function.
	inv_throwable_late = inv_throwable;											// Update the late throwable variable.
}

#define inv_update_plantable_index												// Update the current plantable index.
inv_plantable = inv_plantable_containers[inv_plantable_container];

if (inv_plantable != inv_plantable_late) {										// If the plantable has changed...
	on_equipment_switch();														// Run the equipment switch function.
	inv_plantable_late = inv_plantable;											// Update the late plantable variable.
}

#define inv_update_item_index													// Update the current item index.
inv_item = inv_item_containers[inv_item_container];

if (inv_item != inv_item_late) {												// If the item has changed...
	on_equipment_switch();														// Run the equipment switch function.
	inv_item_late = inv_item;													// Update the late item variable.
}


//-----------------------------------------
// Refresh Inventory
//-----------------------------------------
#define inventory_refresh                                                       // Go through the equipment dictionary, and add the owned equipment to the inventory.
inv_firearm_containers = [];
inv_throwable_containers = [];
inv_plantable_containers = [];
inv_item_containers = [];

var _len = array_length(dict_equipment);
for (var _i = 0; _i < _len; _i++) {
    var _category = dict_equipment[_i].category;
    
    // Add an empty container to the firearms category, by default.
    if (_i == EQ_EMPTY) array_push(inv_firearm_containers, EQ_EMPTY);				// By default, add an empty container to the firearms category. THIS IS REQUIRED!!!
    
    else {																			// Skip EQ_EMPTY, since whether or not you "own" it shouldn't affect anything.
    	
    	// Add the rest of the owned weapons.
	    if (dict_equipment[_i].is_owned) {                                          // If the weapon is owned...
	        
	        if (_category == 0) array_push(inv_firearm_containers, _i);              // Add the equipment IDs to the inventory slots.
	        else if (_category == 1) array_push(inv_throwable_containers, _i);
	        else if (_category == 2) array_push(inv_plantable_containers, _i);
	        else if (_category == 3) array_push(inv_item_containers, _i);
	        
	    }
    
    }
    
}

// Handle container categories with no equipment:
if (array_length(inv_throwable_containers) == 0) array_push(inv_throwable_containers, EQ_EMPTY);	// If you have an empty category, add an empty container to each empty category.
if (array_length(inv_plantable_containers) == 0) array_push(inv_plantable_containers, EQ_EMPTY);
if (array_length(inv_item_containers) == 0) array_push(inv_item_containers, EQ_EMPTY);


inventory_retain_selection();                                                   // Retain the current inventory selection.

// Update the inventory equipment IDs
inv_update_firearm_index();														// Update the currently selected inventory indexes.
inv_update_throwable_index();
inv_update_plantable_index();
inv_update_item_index();



//-----------------------------------------
// Retain Inventory Selections
//-----------------------------------------
#define inventory_retain_selection												// Retain the inventory selection. Used after adding/removing an inventory item.

// Firearms
var _len = array_length(inv_firearm_containers);
for (var i = 0; i < _len; i++) {				// Loop through the firearm containers, and find the currently equipped firearm.
	
	if (inv_firearm_containers[i] == inv_firearm)								// If you find the previously equipped firearm index...
		inv_firearm_container = i;												// Set the current firearm container to this one.
	
	else if (i == _len - 1) {				    // If you haven't found your last equipped firearm...
		
		inv_firearm_container = clamp(inv_firearm_container, 0, i);				// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Throwables
_len = array_length(inv_throwable_containers);
for (var i = 0; i < _len; i++) {				// Loop through the throwable containers, and find the currently equipped throwable.
	
	if (inv_throwable_containers[i] == inv_throwable)							// If you find the previously equipped throwable index...
		inv_throwable_container = i;											// Set the current throwable container to this one.
	
	else if (i == _len - 1) {		// If you haven't found your last equipped throwable...
		
		inv_throwable_container = clamp(inv_throwable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Plantables
_len = array_length(inv_plantable_containers);
for (var i = 0; i < _len; i++) {				// Loop through the plantable containers, and find the currently equipped plantable.
	
	if (inv_plantable_containers[i] == inv_plantable)							// If you find the previously equipped plantable index...
		inv_plantable_container = i;											// Set the current plantable container to this one.
	
	else if (i == _len - 1) {		// If you haven't found your last equipped plantable...
		
		inv_plantable_container = clamp(inv_plantable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Items
_len = array_length(inv_item_containers);
for (var i = 0; i < _len; i++) {					// Loop through the item containers, and find the currently equipped item.
	
	if (inv_item_containers[i] == inv_item)										// If you find the previously equipped item index...
		inv_item_container = i;													// Set the current item container to this one.
	
	else if (i == _len - 1) {						// If you haven't found your last equipped item...
		
		inv_item_container = clamp(inv_item_container, 0, i);					// Clamp the current container, in case it's over the array length.
		
	}
	
}


//-----------------------------------------
// Toggle Firearm
//-----------------------------------------
#define inv_toggle_firearm														// Update the current firearm index.
var _len = array_length(inv_firearm_containers);
if (inv_firearm == EQ_EMPTY) {													// If your firearm is unequipped...
	for (var i = 0; i < _len; i++) {			// Loop through the firearm containers, and find the previously equipped firearm.
		
		if (inv_firearm_containers[i] == inv_firearm_prev) {					// If you find the previously equipped firearm index...
			
			inv_firearm_container = i;											// Set the current firearm container to this one.
			inv_firearm = inv_firearm_containers[inv_firearm_container];		// Update the current firearm index.
			
		}
		
	}
}

else {																			// If you have a firearm equipped...
	for (var i = 0; i < _len; i++) {			// Loop through the firearm containers, and find the EMPTY slot. (Redundant code? Just input 0 directly?)
		
		if (inv_firearm_containers[i] == EQ_EMPTY) {							// If you find the EMPTY slot index...
			
			inv_firearm_container = i;											// Set the current firearm container to this one.
			inv_firearm = inv_firearm_containers[inv_firearm_container];		// Update the current firearm index.
			
		}
		
	}
}

on_equipment_switch();															// Run the on_equipment_switch hook
on_firearm_switch();



//-----------------------------------------
// Display Cycled Equipment
//-----------------------------------------
#define inv_display_equipment_cycle(_inv_display_cycled_category)	// Called whenever you cycle equipment

inv_display_cycle = true;
inv_display_cycled_category = _inv_display_cycled_category;					// 0 = none, 1 = firearms, 2 = throwables, 3 = plantables, 4 = items

ui_state_timer = 0;																// Reset the Main Menu state timer to 0, to restart the cycle animation.



//-----------------------------------------
// Hide Cycled Equipment Display
//-----------------------------------------
#define inv_hide_equipment_cycle												// Called whenever you cycle equipment

inv_display_cycle = false;
inv_display_cycled_category = 0;



//-----------------------------------------
// Set UI State
//-----------------------------------------
#define ui_set_state(_state)

ui_state_current = _state;														// Go to the desired state.
//ui_state_timer = 0;															// Reset the state timer.
ui_state_start_time = get_gameplay_time();										// Reset the state timer.


inv_hide_equipment_cycle();														// Hide the cycled equipment when switching to a new UI state.



//-----------------------------------------
// Play Voice Clip
//-----------------------------------------
#define vox_play(_vox, _can_be_interrupted)                                     // Play voice clip; Overwrites already playing voice clips.

sound_stop(vox_prev);                                                           // Stop the previous voice clip, if one is currently playing.
sound_play(_vox);                                                               // Play the voice clip.
if (_can_be_interrupted) vox_prev = _vox;                                       // Update the previous voice clip



//---------------------------------------------------------
// Spawn Pickup Item
//---------------------------------------------------------
#define pickup_spawn(_x, _y, _hsp, _vsp, _ent_idx)

// Spawn the item
var _new_item = instance_create(_x, _y, "obj_article1");						// Spawn the entity
variable_instance_set(_new_item, "ent_idx", _ent_idx);							// Set the entity index
variable_instance_set(_new_item, "depth", -2);									// Set the item depth to be visible in smoke.

// Set Initial Item Movement
variable_instance_set(_new_item, "hsp_float", _hsp);							// Apply hspeed float
variable_instance_set(_new_item, "vsp_float", _vsp);							// Apply vspeed float



//-----------------------------------------
// Toggle Suppressor
//-----------------------------------------
#define suppressor_toggle(_weapon_idx)
var _weap = dict_equipment[_weapon_idx];
var _suppressor_attached = _weap.suppressor_attached;

if (_weap.suppressor_durability > 0) {											// If the suppressor durability is greater than 0...
	dict_equipment[_weapon_idx].suppressor_attached = (_suppressor_attached) ? false : true;	// Toggle suppressor.
	sound_play(sound_get("ui_suppressor_toggle"), false, 0);									// Play the suppressor toggle sound.
}



//-----------------------------------------
// Disable All Attacks
//-----------------------------------------
#define disable_all_attacks(_time)												// Disables every attack for a set duration.
move_cooldown[AT_JAB] = _time;
move_cooldown[AT_EXTRA_2] = _time;
move_cooldown[AT_FTILT] = _time;
move_cooldown[AT_DTILT] = _time;
move_cooldown[AT_UTILT] = _time;
move_cooldown[AT_NAIR] = _time;
move_cooldown[AT_FAIR] = _time;
move_cooldown[AT_BAIR] = _time;
move_cooldown[AT_DAIR] = _time;
move_cooldown[AT_UAIR] = _time;
move_cooldown[AT_FSTRONG] = _time;
move_cooldown[AT_DSTRONG] = _time;
move_cooldown[AT_USTRONG] = _time;
move_cooldown[AT_DATTACK] = _time;
move_cooldown[AT_NSPECIAL] = _time;
move_cooldown[AT_FSPECIAL] = _time;
move_cooldown[AT_DSPECIAL] = _time;
move_cooldown[AT_USPECIAL] = _time;
move_cooldown[AT_NTHROW] = _time;



//-----------------------------------------
// On Equipment Switch Hook
//-----------------------------------------
#define on_equipment_switch														// Called whenever you switch equipment

if (get_gameplay_time() > 1)															// If not on the first frame of the game...
	sound_play(sfx_ui_inv_equip, false, 0);											// Play the equip sound effect.



//-----------------------------------------
// On Firearm Switch Hook
//-----------------------------------------
#define on_firearm_switch														// Called whenever you switch firearms

user_event(1);																	// Change the attack windows, depending on what the currently equipped firearm is.

// Cancel FSpecial
if(attack == AT_FSPECIAL) {
	attack_end();
	window = get_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS) + 1;					// Go to the end of the attack.
	window_timer = 0;
}

update_aim_origins();															// Update aiming origin coordinates.



//-----------------------------------------
// On Firearm Switch Hook
//-----------------------------------------
#define on_use_item
switch(inv_item){
	case 16: // Cardboard Box
		if (dict_equipment[EQ_BOX].ammo_total <= 0) break;						// If there are no boxes left, do not equip any boxes.
		
		// Toggle cardboard box
		if (sna_box_is_equipped) {												// If the cardboard box is equipped...
			sna_box_is_equipped = false;										// Unequip the cardboard box
			sna_box_equip_time = get_gameplay_time();							// Set the time the box was equipped at.
			//instance_destroy(sna_box_obj);										// Remove the cardboard box entity.
			hurtboxID.sprite_index = hurtbox_spr_default;						// Reset the hurtbox sprite
		}
		else {																	// If the cardboard box is NOT equipped...
			sna_box_is_equipped = true;											// Equip the cardboard box
			sna_box_equip_time = get_gameplay_time();							// Set the time the box was equipped at.
			//sna_box_obj = instance_create(x, y - 36, "obj_article_platform");	// Spawn the cardboard box entity.
			hurtboxID.sprite_index = sprite_get("hurtbox_box");					// Set the hurtbox sprite to the "box" hurtbox sprite
		}
		
		// Play box toggle sound
		sound_play(sfx_ui_inv_equip, false, 0);									// Play the equip sound effect.
		
		
	break;
	
	case 17: // Ration
		if (dict_equipment[EQ_RATION].ammo_total <= 0) break;					// If there are no rations left, do not use any rations.
		if (sna_ration_cooldown > 0) break;											// Can't use rations unless the ration cooldown is at 0.
		
		// Use ration
		take_damage( player, -1, -10 );											// Recover damage
		sna_life = clamp(sna_life + 50, 0, 100);								// Recover LIFE
		sna_psyche = clamp(sna_psyche + 25, 0, 100);							// Recover PSYCHE
		
		// Play Sound
		sound_play(sound_get("ui_item_heal"), false, 0);						// Play the heal sound effect.
		
		// Subtract ration
		with (dict_equipment[EQ_RATION]) {
			ammo_total = clamp(ammo_total - 1, 0, ammo_total_max);				// Subtract ration
		}
		
		// Set ration cooldown.
		sna_ration_cooldown = 30;												// To prevent ration spamming, so players can't heal too much too soon. (And because it sounds annoying.)
		
	break;
}



//-----------------------------------------
// Equip Firearm
//-----------------------------------------
#define equip_firearm(_EQ_DESIRED)
if (inv_firearm != _EQ_DESIRED) {												// If the desired weapon is NOT equipped...
	var _len = array_length(inv_firearm_containers);
	for (var i = 0; i < _len; i++) {			// Loop through the firearm containers, and find the desired weapon.
		if (inv_firearm_containers[i] == _EQ_DESIRED) {							// If you find the desired firearm index...
			inv_firearm_container = i;											// Set the current firearm container to this one.
			inv_firearm = inv_firearm_containers[inv_firearm_container];		// Update the current firearm index.
			inv_firearm_prev = _EQ_DESIRED;
			break;																// End the for loop.
		}
	}
	on_equipment_switch();
	on_firearm_switch();
}



//-----------------------------------------
// Equip Throwable
//-----------------------------------------
#define equip_throwable(_EQ_DESIRED)
if (inv_throwable != _EQ_DESIRED) {												// If the desired weapon is NOT equipped...
	var _len = array_length(inv_throwable_containers);
	for (var i = 0; i < _len; i++) {			// Loop through the firearm containers, and find the desired weapon.
		if (inv_throwable_containers[i] == _EQ_DESIRED) {						// If you find the desired firearm index...
			inv_throwable_container = i;										// Set the current firearm container to this one.
			inv_throwable = inv_throwable_containers[inv_throwable_container];	// Update the current firearm index.
			break;																// End the for loop.
		}
	}
	on_equipment_switch();
}



//-----------------------------------------
// Equip Plantable
//-----------------------------------------
#define equip_plantable(_EQ_DESIRED)
if (inv_plantable != _EQ_DESIRED) {												// If the desired weapon is NOT equipped...
	var _len = array_length(inv_plantable_containers);
	for (var i = 0; i < _len; i++) {			// Loop through the firearm containers, and find the desired weapon.
		if (inv_plantable_containers[i] == _EQ_DESIRED) {						// If you find the desired firearm index...
			inv_plantable_container = i;										// Set the current firearm container to this one.
			inv_plantable = inv_plantable_containers[inv_plantable_container];	// Update the current firearm index.
			break;																// End the for loop.
		}
	}
	on_equipment_switch();
}



//-----------------------------------------
// Supply Drop Request
//-----------------------------------------
#define supplydrop_request(_x, _y, _given_equip_idx)

// Destroy any already existing supply drop boxes
if (instance_exists(supplydrop_ent_box)) {										// If a supply drop box has spawned...
	instance_destroy(supplydrop_ent_box);										// Destroy the supply drop box
	supplydrop_ent_box = noone;													// Reset the variable
}

// Set the supply drop timer
supplydrop_request_time = get_gameplay_time();

// Set the supply drop coordinates
supplydrop_point_x = _x;
supplydrop_point_y = _y;

// Set the supply drop equipment
switch(_given_equip_idx) {
	// Firearms
	case 2: // EQ_M9
		if (dict_equipment[_given_equip_idx].is_owned) {		// If the weapon is already owned, drop ammo.
			supplydrop_pickup_1 = noone;
			supplydrop_pickup_2 = ENT_PKUP_M9_AMMO;
			supplydrop_pickup_3 = ENT_PKUP_M9_AMMO;
		}
		else {												// If the weapon is NOT owned, drop the weapon.
			supplydrop_pickup_1 = ENT_PKUP_M9;
			supplydrop_pickup_2 = noone;
			supplydrop_pickup_3 = noone;
		}
	break;
	case 3: // EQ_SOCOM
		if (dict_equipment[_given_equip_idx].is_owned) {		// If the weapon is already owned, drop ammo.
			supplydrop_pickup_1 = noone;
			supplydrop_pickup_2 = ENT_PKUP_SOCOM_AMMO;
			supplydrop_pickup_3 = ENT_PKUP_SOCOM_AMMO;
		}
		else {												// If the weapon is NOT owned, drop the weapon.
			supplydrop_pickup_1 = ENT_PKUP_SOCOM;
			supplydrop_pickup_2 = noone;
			supplydrop_pickup_3 = noone;
		}
	break;
	case 4: // EQ_MOSIN
		if (dict_equipment[_given_equip_idx].is_owned) {		// If the weapon is already owned, drop ammo.
			supplydrop_pickup_1 = noone;
			supplydrop_pickup_2 = ENT_PKUP_MOSIN_AMMO;
			supplydrop_pickup_3 = ENT_PKUP_MOSIN_AMMO;
		}
		else {												// If the weapon is NOT owned, drop the weapon.
			supplydrop_pickup_1 = ENT_PKUP_MOSIN;
			supplydrop_pickup_2 = noone;
			supplydrop_pickup_3 = noone;
		}
	break;
	case 5: // EQ_M4
		if (dict_equipment[_given_equip_idx].is_owned) {		// If the weapon is already owned, drop ammo.
			supplydrop_pickup_1 = noone;
			supplydrop_pickup_2 = ENT_PKUP_M4_AMMO;
			supplydrop_pickup_3 = ENT_PKUP_M4_AMMO;
		}
		else {												// If the weapon is NOT owned, drop the weapon.
			supplydrop_pickup_1 = ENT_PKUP_M4;
			supplydrop_pickup_2 = noone;
			supplydrop_pickup_3 = noone;
		}
	break;
	// Throwables
	case 9: // EQ_SMOKE_GRENADE
		supplydrop_pickup_1 = ENT_PKUP_SMOKE_GRENADE;
		supplydrop_pickup_2 = ENT_PKUP_SMOKE_GRENADE;
		supplydrop_pickup_3 = ENT_PKUP_SMOKE_GRENADE;
	break;
	case 10: // EQ_STUN_GRENADE
		supplydrop_pickup_1 = ENT_PKUP_STUN_GRENADE;
		supplydrop_pickup_2 = ENT_PKUP_STUN_GRENADE;
		supplydrop_pickup_3 = ENT_PKUP_STUN_GRENADE;
	break;
	case 11: // EQ_GRENADE
		supplydrop_pickup_1 = ENT_PKUP_GRENADE;
		supplydrop_pickup_2 = ENT_PKUP_GRENADE;
		supplydrop_pickup_3 = ENT_PKUP_GRENADE;
	break;
	// Plantables
	case 12: // EQ_C4
		supplydrop_pickup_1 = noone;
		supplydrop_pickup_2 = ENT_PKUP_C4;
		supplydrop_pickup_3 = ENT_PKUP_C4;
	break;
	case 13: // EQ_CLAYMORE
		supplydrop_pickup_1 = noone;
		supplydrop_pickup_2 = ENT_PKUP_CLAYMORE;
		supplydrop_pickup_3 = ENT_PKUP_CLAYMORE;
	break;
	case 14: // EQ_BOOK
		supplydrop_pickup_1 = noone;
		supplydrop_pickup_2 = ENT_PKUP_BOOK;
		supplydrop_pickup_3 = ENT_PKUP_BOOK;
	break;
	case 15: // EQ_SATCHEL
		supplydrop_pickup_1 = noone;
		supplydrop_pickup_2 = ENT_PKUP_SATCHEL;
		supplydrop_pickup_3 = ENT_PKUP_SATCHEL;
	break;
	// Items
	case 16: // EQ_BOX
		supplydrop_pickup_1 = noone;
		supplydrop_pickup_2 = ENT_PKUP_BOX;
		supplydrop_pickup_3 = ENT_PKUP_BOX;
	break;
	case 17: // EQ_RATION
		supplydrop_pickup_1 = ENT_PKUP_RATION;
		supplydrop_pickup_2 = noone;
		supplydrop_pickup_3 = noone;
	break;
}



//-----------------------------------------
// Supply Drop Manual Spawn
//-----------------------------------------
#define supplydrop_manualspawn(_x, _y)											// Mannually spawn the requested supplies at a desired position.
if (supplydrop_pickup_1 != noone) pickup_spawn(_x, _y - 4, 0, -5, supplydrop_pickup_1);
if (supplydrop_pickup_2 != noone) pickup_spawn(_x, _y - 4, 1, -5, supplydrop_pickup_2);
if (supplydrop_pickup_3 != noone) pickup_spawn(_x, _y - 4, -1, -5, supplydrop_pickup_3);



//-----------------------------------------
// On Stance Switch Hook
//-----------------------------------------
#define on_stance_switch														// Called whenever you change stances

// Update Weapon Attack Windows
user_event(1);																	// Change the weapon attack windows, depending on what the currently equipped firearm is.

update_aim_origins();															// Update aiming origin coordinates.

// Set the attack sprites to crouched attack sprites.
if (is_crouching) {																// If crouching...
	// Taunt (Crouch Idle)
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_crouch"));			// Set the taunt sprites to the crouch sprites.
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, crouchbox_spr);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_crouch"));			// Set the taunt sprites to the crouch sprites.
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, crouchbox_spr);
	
	// DSpecial
	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_crouch"));
	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, crouchbox_spr);
}
// Set the attack sprites to standing attack sprites.
else {																			// If NOT crouching...
	// Taunt (Crouch Idle)
	reset_attack_value(AT_TAUNT, AG_SPRITE);									// Reset the taunt sprites to the standing taunt sprites.
	reset_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE);
	//reset_attack_value(AT_TAUNT_2, AG_SPRITE);									// Reset the taunt sprites to the standing taunt sprites.
	//reset_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE);
	
	// DSpecial
	reset_attack_value(AT_DSPECIAL, AG_SPRITE);
	reset_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
}



//-----------------------------------------
// Update Aim Origins
//-----------------------------------------
#define update_aim_origins
var _cur_firearm = dict_equipment[inv_firearm];

// Update Limb Origin Coordinates
if (is_crouching) {															// If crouching...
	// TODO: Set Supine Coordinates
	sna_arms_x = _cur_firearm.arms_crawl_x;									// Set the arm sprite origins.
	sna_arms_y = _cur_firearm.arms_crawl_y;
	sna_head_x = _cur_firearm.head_crawl_x;									// Set the head sprite origins.
	sna_head_y = _cur_firearm.head_crawl_y; 
}
else {																		// If NOT crouching...
	sna_arms_x = _cur_firearm.arms_x;										// Set the arm sprite origins.
	sna_arms_y = _cur_firearm.arms_y;
	sna_head_x = _cur_firearm.head_x;										// Set the head sprite origins.
	sna_head_y = _cur_firearm.head_y; 
}



//-----------------------------------------
// Lock Sprite Direction
//-----------------------------------------
#define lock_spr_direction
spr_dir = spr_dir_old;



//-----------------------------------------
// Add Looped
//-----------------------------------------
#define add_looped(variable, val, _max)											// Add a number to a number, looping through when 

/*
	Thanks to CAT in ExW for helping out with this function!
*/

var _newval = (variable + val) % _max;  										// Do the magic that loops the number.
while (_newval < 0) {															// Turn any negative results into a positive number.
  _newval += _max;
}
return _newval;



//-----------------------------------------
// Get Rotate Around Point X
//-----------------------------------------
#define rotate_around_point( _origin_x, _origin_y, _offset_x, _offset_y, _angle_transform )

var _oirigin_off_ang = point_direction(_origin_x, _origin_y, _origin_x + _offset_x, _origin_y + _offset_y);
var _oirigin_off_dist = point_distance(_origin_x, _origin_y, _origin_x + _offset_x, _origin_y + _offset_y);
var _oirigin_x_rotated = round(_origin_x + lengthdir_x(_oirigin_off_dist, _oirigin_off_ang + _angle_transform));
var _oirigin_y_rotated = round(_origin_y + lengthdir_y(_oirigin_off_dist, _oirigin_off_ang + _angle_transform));

return [_oirigin_x_rotated, _oirigin_y_rotated];



//---------------------------------------------------------------
// Raycasting (https://yal.cc/gamemaker-collision-line-point/)
//---------------------------------------------------------------
#define collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;


//-----------------------------------------
// Spawn Base Dust
//-----------------------------------------
#define spawn_base_dust // written by supersonic
/// @param x
/// @param y
/// @param name
/// @param dir=0
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