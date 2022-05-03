// got_parried.gml

//=========================================================
// TRIGGER ALERT ON PARRIED
//=========================================================

// Draw exclamation mark
var _sfx_alert = sound_get("ui_alert");											// Get alert sound effect
var _sfx_seen = sound_get("ui_see_snake");										// Get seen sound effect.

with (hit_player_obj) {
	// Display exclamation mark
	sna_emote_window = 4;
	sna_emote_start_time = get_gameplay_time();
	// Play alert sound effect
	if (other.sna_stealth_state < 2)											// If in the sneak or caution phase...
		sound_play(_sfx_alert);													// Play the alert sound.
	else																		// If in the evasion or alert phase...
		sound_play(_sfx_seen);													// Play the seen sound.
}

// Go into Alert
sna_stealth_state = 3;															// Go into the alert phase.
sna_stealth_state_awareness = 99.99;											// Reset the awareness.




//=========================================================
// ENTITY PARRY BEHAVIOUR
//=========================================================
if (variable_instance_exists(my_hitboxID, "sna_parent_ent") ) {
	
	if (my_hitboxID.sna_parent_ent != noone) {									// If the hitbox has a parent entity...
		
		my_hitboxID.player = hit_player;										// Set the hitbox owner to the player who parried the hitbox.
		
		with (my_hitboxID.sna_parent_ent) {
	    	
	    	hsp_float *= -2;                                            		// Reverse the horizontal momentum.
	    	vsp_float *= -1;													// Reverse the vertical momentum.
	    	
		}
	}
    
}