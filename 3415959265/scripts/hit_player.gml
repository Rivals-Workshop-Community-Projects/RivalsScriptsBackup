//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes sure that the hitboxes belong to us and not someone like kragg

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

//Thousand-Blows Mechanic
if (has_rune("N") && is_guardian) || (is_super)
{
	switch (my_hitboxID.attack) {
	    case AT_USPECIAL: case AT_NSPECIAL: case AT_NSPECIAL_AIR: case AT_DSPECIAL: case AT_FSPECIAL: case AT_FSPECIAL_AIR:
	        var found = false;
	        // Check if the player is already marked
	        for (var i = 0; i < ds_list_size(marked_players); i++) {
	            var entry = marked_players[| i];
	            var player = entry[0];
	            if (player == hit_player_obj) {
	                if (entry[1] < 5) {
	                    entry[1]++; // Increment marks
	                    marked_players[| i] = entry; // Update the list
	                    mark_anim = 0; // Reset animation for newly added mark
	                } 
	                found = true;
	                break;
	            }
	        }
	        // If not found, initialize marks for the new player
	        if (!found) {
	            var new_entry = [hit_player_obj, 1]; // New player, first mark
	            ds_list_add(marked_players, new_entry);
	            mark_anim = 0; // Reset animation for the first mark
	        }
	        break;
		case AT_DSPECIAL_2:
		    if (my_hitboxID.hbox_num == 1 && my_grab_id == noone) {
		        var target_player = noone;
		        var closest_distance = 999999;
				set_grab_id();
		        // Identify the nearest marked player
		        for (var i = 0; i < ds_list_size(marked_players); i++) {
		            var entry = marked_players[| i];
		            var player = entry[0];
		            if (instance_exists(player)) {
		                var distance = point_distance(x, y, player.x, player.y);
		                if (distance < closest_distance) {
		                    closest_distance = distance;
		                    target_player = i; // Store the index of the entry
		                }
		            }
		        }
		
		        if (target_player != noone) {
		            var entry = marked_players[| target_player];
		            var player = entry[0];
		            var marks = entry[1];
		
		            if (instance_exists(player)) {
		                my_grab_id = player; // Track the specific player hit
		                marks_consumed = marks;
		
		                // Consume marks
		                entry[1] = 0;
		                marked_players[| target_player] = entry;
		
		                // Trigger detonation for all marks
		                for (var j = 0; j < marks; j++) {
		                    var radius = 60; // Radius for mark rotation
		                    var mark_x = player.x + (dcos(mark_angle + (360 / marks) * j) * radius);
		                    var mark_y = player.y - char_height / 2 + (dsin(mark_angle + (360 / marks) * j) * radius);
		
		                    // Add detonation entry
		                    var detonation_entry = [
		                        mark_x,  // Detonation X position
		                        mark_y,  // Detonation Y position
		                        0        // Start animation frame
		                    ];
		                    ds_list_add(detonating_marks, detonation_entry);
		                }
		            }
		        }
		    }
		    break;
	}	
}

//Grab Code
switch (my_hitboxID.attack)
{
	case AT_DATTACK:
		if (my_hitboxID.hbox_num <= 2){
			hit_player_obj.old_vsp = -14;			
			hit_player_obj.old_hsp = 8*spr_dir;			
		}
	    break;
    case AT_USTRONG: //command grab
        if (my_hitboxID.hbox_num < 6) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        if (my_hitboxID.hbox_num == 1) sound_play(sound_get("sfx_saya_blow_weak"), 0, noone, 0.6);  
        if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_saya_blow_weak"), 0, noone, 0.6, 1.1);  
        if (my_hitboxID.hbox_num == 3) sound_play(sound_get("sfx_saya_blow_weak"), 0, noone, 0.6, 1.2);  
        if (my_hitboxID.hbox_num == 4) sound_play(sound_get("sfx_saya_blow_weak"), 0, noone, 0.6, 1.3);  
        if (my_hitboxID.hbox_num == 5) sound_play(sound_get("sfx_saya_blow_weak"), 0, noone, 0.6, 1.4);  
        if (my_hitboxID.hbox_num == 6)
        {
        	sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 0.6, 1);  
        	sound_play(sound_get("sfx_saya_blow_heavy1"), 0, noone, 0.4, 1);  
        }
        
        if (is_sparking || is_guardian || is_super || has_rune("G"))
        {
          if (my_hitboxID.hbox_num == 6) 
          {
              set_grab_id(); //special function you can see below that sets the hit player to be grabbed
              set_window(7);
              hit_player_obj.should_make_shockwave = false;
          }
        }
	    // Iterate through the article list to apply the slam grab ID
	    for (var i = 0; i < ds_list_size(article_list); i++) {
	        var article_instance = article_list[| i];
	        
	        if (instance_exists(article_instance) && my_hitboxID.hbox_num == 7 && !article_instance.should_galaxy) {
	            hit_player_obj.should_make_shockwave = false; // Prevent shockwave for grab interaction
	            set_grab_id(); // Set the grab ID
	        }
	    }        
        break;
    case AT_DSTRONG:
        if (my_hitboxID.hbox_num < 5) sound_play(sound_get("sfx_saya_blow_medium"), 0, noone, 0.8, 1.1);
        break;
        
     case AT_FSPECIAL:
        if (my_hitboxID.hbox_num < 3) sound_play(sound_get("sfx_saya_punch_blow"), 0, noone, 0.8, 1.1);
        break;
        
    case AT_FSPECIAL_AIR:
        if (my_hitboxID.hbox_num < 4) sound_play(sound_get("sfx_saya_punch_blow"), 0, noone, 0.8, 1.1);
        break;        
    case AT_NSPECIAL:
    	if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        
        if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_saya_blow_medium"), 0, noone, 0.9);
	    // Iterate through the article list to apply the slam grab ID
	    for (var i = 0; i < ds_list_size(article_list); i++) {
	        var article_instance = article_list[| i];
	        
	        if (instance_exists(article_instance) && my_hitboxID.hbox_num == 2 && !article_instance.should_galaxy) {
	            hit_player_obj.should_make_shockwave = false; // Prevent shockwave for grab interaction
	            set_grab_id(); // Set the grab ID
	        }
	    }      
    	break;
    	
    case AT_NSPECIAL_AIR:
    	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        
        if (my_hitboxID.hbox_num == 3) sound_play(sound_get("sfx_saya_blow_medium"), 0, noone, 0.9);
    	break;    	
    case AT_USPECIAL: //command grab
        if (my_hitboxID.hbox_num < 5 && special_down) && (is_guardian || is_sparking || is_super || has_rune("G")) 
        {
        	set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        	hit_player_obj.should_make_shockwave = false;
        }
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state

        if (my_hitboxID.hbox_num < 3) 
        {
        	sound_play(sound_get("sfx_saya_blow_heavy1"), 0, noone, 0.3, 1.1);
        	sound_play(sound_get("sfx_saya_punch_blow"), 0, noone, 0.7, 1.1);
        }
        if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4) sound_play(sound_get("sfx_saya_blow_medium"), 0, noone, 0.6, 1.1);
        if (my_hitboxID.hbox_num == 5) sound_play(sound_get("sfx_saya_blow_heavy1"), 0, noone, 0.9);
        if (my_hitboxID.hbox_num == 6) sound_play(sound_get("sfx_saya_blow_medium"), 0, noone, 0.9, 0.9);
        
	    // Iterate through the article list to apply the slam grab ID
	    for (var i = 0; i < ds_list_size(article_list); i++) {
	        var article_instance = article_list[| i];
	        
	        if (instance_exists(article_instance) && my_hitboxID.hbox_num == 5 && !article_instance.should_galaxy) {
	            hit_player_obj.should_make_shockwave = false; // Prevent shockwave for grab interaction
	            set_grab_id(); // Set the grab ID
	        }
	    }        
        break; 
    case AT_DSPECIAL:
        if (my_hitboxID.hbox_num < 5) sound_play(sound_get("sfx_saya_explosion_blow2"), 0, noone, 1);
        //if (my_hitboxID.hbox_num < 5) sound_play(sound_get("sfx_saya_explosion_small"), 0, noone, 0.9);
        break;        
        
    case AT_FSTRONG: //command grab
        if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        
        if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_saya_blow_heavy1"), 0, noone, 0.7);
        if (my_hitboxID.hbox_num == 3) sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 1, 1);
        if (my_hitboxID.hbox_num == 4)
        {
        	sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 0.5);	
        	sound_play(asset_get("sfx_blow_heafvy"), 0, noone, 0.5);	
        	
        }
        	
	    // Iterate through the article list to apply the slam grab ID
	    for (var i = 0; i < ds_list_size(article_list); i++) {
	        var article_instance = article_list[| i];
	        
	        if (instance_exists(article_instance) && my_hitboxID.hbox_num == 2 && !article_instance.should_galaxy) {
	            hit_player_obj.should_make_shockwave = false; // Prevent shockwave for grab interaction
	            set_grab_id(); // Set the grab ID
	        }
	    }   
        break;
        
    case AT_EXTRA_2: //command grab
        if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        
        if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_saya_blow_heavy1"), 0, noone, 0.7);
        if (my_hitboxID.hbox_num == 3) sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 1, 1);    
        	
	    // Iterate through the article list to apply the slam grab ID
	    for (var i = 0; i < ds_list_size(article_list); i++) {
	        var article_instance = article_list[| i];
	        
	        if (instance_exists(article_instance) && my_hitboxID.hbox_num == 2 && !article_instance.should_galaxy) {
	            hit_player_obj.should_make_shockwave = false; // Prevent shockwave for grab interaction
	            set_grab_id(); // Set the grab ID
	        }
	    }  
	    break;
	case AT_EXTRA_1:
	    if (my_hitboxID.hbox_num == 1) {
	        // Iterate through all articles in the list to determine which one should grab the player
	        for (var i = 0; i < ds_list_size(article_list); i++) {
	            var article_instance = article_list[| i];
	            
	            // If the article instance triggered the grab (e.g., it's in range and ready)
	            if (instance_exists(article_instance) && article_instance.artc_grab_id == noone) {
	                // Use the macro to attempt grabbing the hit player for this specific article instance
	                artc_set_grab_id(article_instance);
	            }
	        }
	    } else {
	        // Release logic if necessary
	        for (var i = 0; i < ds_list_size(article_list); i++) {
	            var article_instance = article_list[| i];
	
	            // If this article has grabbed a player, release them
	            if (instance_exists(article_instance) && article_instance.artc_grab_id != noone) {
	                article_instance.artc_grab_id = noone;  // Release the grab
	                article_instance.should_galaxy = false; // Reset other grab-related flags if necessary
	            }
	        }
	    }
	    break;
	case AT_DSPECIAL_2:
	    // Check if this is the last hitbox based on marks
	    if (my_hitboxID.hbox_num == (2 + marks_consumed - 1)) { // The last hitbox ID dynamically calculated
	        hit_player_obj.should_make_shockwave = true; // Enable shockwave effect for the last hitbox
	    } else {
	        hit_player_obj.should_make_shockwave = false; // Prevent shockwave for other hitboxes
	    }
	    break;
}


//Meter Gain
var hitmove = my_hitboxID.attack;

// Set the meter multiplier based on Rune L and install states
var meter_multiplier = has_rune("L") ? (is_guardian || is_sparking ? 1.0 : 1.5) : 1.0;

var meter_add = 0;

// Allow meter gain in all modes if Rune L is active
var allow_meter_gain = has_rune("L") || (!is_guardian && !is_sparking);

if (meter < meter_max && allow_meter_gain) {
    switch (hitmove) {
        case AT_DSTRONG:
            meter += (120 + meter_add) * meter_multiplier;
            break;
        case AT_USTRONG:
            meter += (20 + meter_add) * meter_multiplier;
            break;
        case AT_FSTRONG:
            meter += (120 + meter_add) * meter_multiplier;
            break;
        case AT_JAB:
            meter += (34 + meter_add) * meter_multiplier;
            break;
        case AT_DATTACK:
            meter += (55 + meter_add) * meter_multiplier;
            break;    
        case AT_DTILT: case AT_UTILT: case AT_FTILT:
            meter += (65 + meter_add) * meter_multiplier;
            break;
        case AT_UAIR: case AT_BAIR: case AT_NAIR: case AT_DAIR:
            meter += (65 + meter_add) * meter_multiplier;
            break;
        case AT_FAIR:
            meter += (45 + meter_add) * meter_multiplier;
            break;    
        case AT_NSPECIAL: case AT_NSPECIAL_AIR:
            meter += (35 + meter_add) * meter_multiplier;
            break;
        case AT_FSPECIAL: case AT_FSPECIAL_AIR: 
            meter += (60 + meter_add) * meter_multiplier;
            break;
        case AT_DSPECIAL:
            break; // No meter gain for DSPECIAL
        case AT_USPECIAL:
            meter += (120 + meter_add) * meter_multiplier;
            break;        
    }
    // Ensure meter doesn't exceed maximum
    if (meter > meter_max) meter = meter_max;

    // Trigger max meter effects
    if (meter == meter_max) 
    {
        if (!is_sparking && !is_guardian)
        {
        	meter_voice = true;
            sound_play(sound_get("sfx_saya_chargemax3"), 0, noone, 0.6);
            var temp_fx = spawn_hit_fx(x - 50 * spr_dir, y - 120, vfx_shine); 
            temp_fx.vsp -= 1;    		
        }
    }
}




with (my_hitboxID) if (type == 2)
{
    //psuedo melee hitbox hitpause
    if (psuedo_melee_hitbox)
    {
        with (other) //this "other" reffers to us, the player that's hitting
        {
            old_hsp = hsp; //set the speed values that should activate when exiting the move
            old_vsp = vsp;
            hitstop = get_hitstop_formula( //this formula is used to calculate how much hitpause we should get
                get_player_damage(hit_player_obj.player),
                other.damage,
                other.hitpause,
                other.hitpause_growth,
                0);
            hitstop_full = hitstop;
            hitpause = true; //we also need to manually set hitpause to true as it doesn't normally do this for projectiles
        }

        hitbox_hitstop = other.hitstop; //set the hitpause of the hitbox to the player's hitpause
        has_hit = other.has_hit; //set off the has_hit and has_hit_player flags, usually used for cancels
        has_hit_player = other.has_hit_player;
        in_hitpause = true; //the hitbox counterpart to the player's "hitpause" variable
    }

    //stop projectile homing if multihits start multihitting
    if (multihit_amount > 0 && homing_enabled) homing_enabled = false;

    ///////////////////////////////////////// MULTIHIT LOGIC /////////////////////////////////////////

    //if the multihit amount is more than 0 it should activate the multihit code
    if (multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);

            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
            hitbox_timer = length; //makes it so it stops existing on the final hit
            multihit_hit_player = noone;
        }
    }
}





#define set_grab_id
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)
    //  - if the player isn't in ranno's bubble
    
    if (my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        my_grab_id = hit_player_obj;
    }
}

#define artc_set_grab_id(article_instance) {
    // Ensure that the article instance exists and is not already grabbing a player
    if (instance_exists(article_instance) && article_instance.artc_grab_id == noone) {
        // Ensure that the article meets all conditions to grab
        if (!hit_player_obj.clone &&
            (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) &&
            !hit_player_obj.bubbled) {

            // Set the grabbed player ID for this specific article
            article_instance.artc_grab_id = hit_player_obj;
        }
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define set_window(_new_window) // Version 0
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion