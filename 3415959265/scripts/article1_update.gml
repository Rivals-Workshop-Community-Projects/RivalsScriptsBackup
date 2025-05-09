//article1_update.gml

state_timer++;

// Ensure hitstop doesn't go negative
if (hitstop < 0) hitstop = 0;

if (player_id.my_grab_id != noone) slam_grab_id = player_id.my_grab_id 

//Placed these outside the switch case as the 3 states share the same detonation code for the command grabs
if (state == 1) //Prepping
{
	artc_hp = artc_hp_max;
    sprite_index = sprite_get("artc_prepping");
    image_index = state_timer / 6;
	if (has_rune("H")) {
	    // Instant charge: Transition to Prepped state immediately
	    if (state_timer >= 0) {
	        state_timer = 0; // Immediate charge
	        newState(2); // Transition to Prepped
	    }
	} else {
	    // Standard behavior: Delay charge with state_timer at 200
	    if (state_timer >= 200) {
	        newState(2); // Transition to Prepped
	    }
	}
}


if (state == 2) //Prepped
{
    sprite_index = sprite_get("artc_prepped");
    image_index = state_timer / 6;
    if (state_timer == 1) sound_play(sound_get("sfx_saya_artc_charged"), 0, noone, 0.8);
    if (state_timer >= 20) newState(3); // Transition to Prepped Idle	
}

// Iterate through all the articles in the ds_list to update their states
for (var i = 0; i < ds_list_size(player_id.article_list); i++) {
    var article_instance = player_id.article_list[| i];

    // Check if the article still exists
    if (!instance_exists(article_instance)) {
        ds_list_delete(player_id.article_list, i); // Remove it from the list
        i--; // Decrement index to accommodate for removed element
        continue;
    }

    // Handle the state update for each article
    with (article_instance) {
        if (state == 3) { // Prepped Idle
            if (artc_hp <= 0) {
                newState(11); // Longer time to prep due to being hit
            } else {
                sprite_index = sprite_get("artc_idle");
                image_index = state_timer / 5;

                // Grabbing Logic (Detect Valid Hit Player)
                var grabbing_player_obj = player_id.hit_player_obj;

                if (instance_exists(grabbing_player_obj)) {
                    var grabbing_player_hb = grabbing_player_obj.hurtboxID;

                    if (grabbing_player_obj != player_id.my_grab_id && !grabbing_player_obj.activated_kill_effect) {
                        // Check lockout before allowing grab
                        if (player_id.artc_lockout == 0) {
                            if (place_meeting(x, y, grabbing_player_hb) &&
                                grabbing_player_obj.state == PS_HITSTUN) {
                                // Trigger Grab
                                newState(4);
                                create_hitbox(AT_EXTRA_1, 1, x, y - article_height / 2);
                                player_id.artc_lockout = 120; // Adjust duration as needed
                            }
                        }
                    }
                }

                // New Hitbox Baiting Logic
                var total_players = instance_number(oPlayer); // Get total number of player instances

                for (var j = 0; j < total_players; j++) {
                    var target_player = instance_find(oPlayer, j);

                    if (instance_exists(target_player)) {
                        var target_hurtbox = target_player.hurtboxID;

                        // Exclude the Article's Owner & Check Conditions
                        if (target_player != player_id && instance_exists(target_hurtbox)) {
                            if (target_player.state != PS_HITSTUN) { 
                                if (place_meeting(x, y, target_hurtbox)) { // If overlapping a valid player's hurtbox
                                	detect_player = true;
    	                        	sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 1, 1.1);
                                    newState(4); // Trigger the article's attack state
                                    break; // Exit loop early since we triggered state 4
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
switch (state)
{
    case 0: // Spawn
        sprite_index = sprite_get("artc_spawn");
        image_index = state_timer / 6;
        if (state_timer >= 22) newState(1); // Transition to Prepping
        break;

    case 1: case 2: case 3: case 11: // Detonation code
        switch (player_id.attack) {
            case AT_FSTRONG:
                switch (player_id.window) {
                    case 8: case 13: case 16: // Looping windows
                        should_galaxy = !place_meeting(x, y, slam_grab_id);
                        break;

                    case 9: case 14: case 17: // Slam windows
                        if (player_id.hitstop < slam_sound_time && !sound_played && !should_galaxy) {
                            sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
                            sound_played = true;
                        }
                        if (player_id.hitstop < slam_hitpause && !should_galaxy) {
                            newState(8);
                            sound_played = false;
                        }
                        break;
                }
                break;
                
            case AT_EXTRA_2:
                switch (player_id.window) {
                    case 6: // Looping windows
                        should_galaxy = !place_meeting(x, y, slam_grab_id);
                        break;

                    case 7: // Slam windows
                        if (player_id.hitstop < slam_sound_time && !sound_played && !should_galaxy) {
                            sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
                            sound_played = true;
                        }
                        if (player_id.hitstop < slam_hitpause && !should_galaxy) {
                            newState(8);
                            sound_played = false;
                        }
                        break;
                }
                break;
            case AT_USTRONG:
                switch (player_id.window) {
                    case 7: case 8: // Startup windows
                        should_galaxy = !place_meeting(x, y, slam_grab_id);
                        break;

                    case 9: // Slam window
                        if (player_id.hitstop < slam_sound_time && !sound_played && !should_galaxy) {
                            sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
                            sound_played = true;
                        }
                        if (player_id.hitstop < slam_hitpause && !should_galaxy) {
                            newState(8);
                            sound_played = false;
                        }
                        break;
                }
                break;

            case AT_USPECIAL:
                switch (player_id.window) {
                    case 7: // Looping window
                        should_galaxy = !place_meeting(x, y, slam_grab_id);
                        break;

                    case 8: // Slam window
                        if (player_id.hitstop < slam_sound_time && !sound_played && !should_galaxy) {
                            sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
                            sound_played = true;
                        }
                        if (player_id.hitstop < slam_hitpause && !should_galaxy) {
                            newState(8);
                            sound_played = false;
                        }
                        break;
                }
                break;

            case AT_NSPECIAL:
                switch (player_id.window) {
                    case 4: // Windup window
                        should_galaxy = !place_meeting(x, y, slam_grab_id);
                        break;

                    case 5: // Slam window
                        if (player_id.hitstop < slam_sound_time && !sound_played && !should_galaxy) {
                            sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
                            sound_played = true;
                        }
                        if (player_id.hitstop < slam_hitpause && !should_galaxy) {
                            newState(8);
                            sound_played = false;
                        }
                        break;
                }
                break;
			case AT_NSPECIAL_AIR:
			    switch (player_id.window) {
			        case 4: // Windup window
			            should_galaxy = !place_meeting(x, y, slam_grab_id);
			            break;
			
			        case 6: // Throw window
			            if (player_id.hitstop < slam_sound_time + 20 && !sound_played && !should_galaxy) {
			                sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
			                sound_played = true;
			            }
			
			            // Ensure should_galaxy is still properly checked before transition
			            if (player_id.hitstop < slam_hitpause && !should_galaxy) {
			                newState(8);
			                sound_played = false;
			            }
			            break;
			    }
			    break;
			case AT_FSPECIAL_AIR:
			    switch (player_id.window) {
			        case 4: case 7: // Only detect in valid windows
			            if (player_id.window_timer < 2) { // Ensure early window
			                var player_hurtbox = player_id.hurtboxID; // Get player's hurtbox instance
			                
			                if (instance_exists(player_hurtbox)) { // Check if hurtbox exists
			                    if (place_meeting(x, y, player_hurtbox)) { // Check if hurtbox is overlapping
			                        newState(8); // Set article to detonate
			                        sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 0.7);
			                        sound_played = true;    
			                        player_id.fspc_bounce = true;
			                    }
			                }
			            }
			            break;
			    }
			    break;
        }
        break;
        
    case 4: // Attack Start
        sprite_index = sprite_get("artc_atk_start");
        image_index = state_timer / 6;
        artc_grab_time++; // Increment article grab time

        // Handling grabbing logic for each grabbed player
        if (artc_grab_id != noone) {
            with (artc_grab_id) {
                hitstop = 2;
                x = ease_sineInOut(x, other.x, other.artc_grab_time, other.artc_grab_time + 16);
                y = ease_sineInOut(y, other.y - 10, other.artc_grab_time, other.artc_grab_time + 16);
            }
        }
		// Transition to the next state after attack animation finishes
		if ((detect_player && state_timer >= 10) || (!detect_player && state_timer >= 16)) 
		{
		    if (has_rune("M")) { // Always enhanced rune
		        sound_play(sound_get("sfx_saya_chargemax2"), 0, noone, 1.1);
		        newState(9);
		    } 
		    else {
		        sound_play(sound_get("sfx_saya_artcblast1"), 0, noone, 0.6, 1.1);
		        newState(5);
		    }
		    
		    artc_grab_time = 0;
		}
        break;
	case 5: // Attack
	    sprite_index = sprite_get("artc_atk");
	    image_index = state_timer / 6;
	    
	    if (state_timer == 1) {
	        newState(6); // Transition to Attack End
	
	        // **Spawn different hitbox based on detect_player**
	        if (detect_player) {
	            create_hitbox(AT_EXTRA_1, 4, x, (y - article_height / 2) - 20); // **Spawn hitbox 4**
	        } else {
	            create_hitbox(AT_EXTRA_1, 2, x, (y - article_height / 2) - 20); // **Spawn hitbox 2**
	        }
	
	        // **Reset detect_player after hitbox is created**
	        detect_player = false;
	
	        artc_grab_id = noone;
	    }
	    break;

	case 6: // Attack End
	    sprite_index = sprite_get("artc_atk_end");
	    image_index = state_timer / 6;
	
	    if (state_timer >= 40) { 
	        // **Remove Article from List Before Destroying**
	        var index = ds_list_find_index(player_id.article_list, self);
	        if (index != -1) {
	            ds_list_delete(player_id.article_list, index);
	            player_id.artc_count = max(0, player_id.artc_count - 1);
	        }
	
	        instance_destroy(self);
	        exit;                    
	    }        
	    break;

	case 7: // Timeout/Reposition
	    sprite_index = sprite_get("artc_timeout");
	    image_index = state_timer / 6;
	
	    if (state_timer >= 40) { 
	        // **Remove Article from List Before Destroying**
	        var index = ds_list_find_index(player_id.article_list, self);
	        if (index != -1) {
	            ds_list_delete(player_id.article_list, index);
	            player_id.artc_count = max(0, player_id.artc_count - 1);
	        }
	
	        instance_destroy(self);
	        exit;
	    }
	    break;

    case 8: // Slam Start
        sprite_index = sprite_get("artc_slam_start");
        image_index = state_timer / 6;
        artc_grab_time++; // Increment article grab time every frame while in this state        
        if (slam_grab_id != noone) 
        {
 			//"with" switches the perspective of the code, in this case to the grabbed player
			//if you want to refer to the article in this scenario it is called "other"           
            with (slam_grab_id)
            {
                hitstop = 5;
                //x = ease_sineInOut(x, other.x, other.artc_grab_time, other.artc_grab_time+4);
                //y = ease_sineInOut(y, other.y-10, other.artc_grab_time, other.artc_grab_time+4);
            }
        }
        // Transition to the next state after the attack animation finishes
        if (state_timer >= 4) 
        {
            
            newState(9); // Move to the next attack state in the article
            slam_grab_id = noone;
            artc_grab_time = 0; // Reset article grab time
            player_id.my_grab_id = noone; // Clear the grab reference for the player (just in case)
            player_id.grab_time = 0; // Reset player's grab timer (just in case)            
        }
        break;

    case 9: // Slam Attack
        sprite_index = sprite_get("artc_slam_atk");
        image_index = state_timer / 6;
        if (state_timer == 1) create_hitbox(AT_EXTRA_1, 3, x, (y-article_height/2)-24);  
        if (state_timer >= 20) newState(10); // Transition to Slam End
        should_galaxy = true;
        shake_camera(3, 3);
        break;

	case 10: // Slam End
	    sprite_index = sprite_get("artc_slam_end");
	    image_index = state_timer / 6;
	
	    if (state_timer >= 40) { 
	        // **Remove Article from List Before Destroying**
	        var index = ds_list_find_index(player_id.article_list, self);
	        if (index != -1) {
	            ds_list_delete(player_id.article_list, index);
	            player_id.artc_count = max(0, player_id.artc_count - 1);
	        }
	
	        instance_destroy(self);
	        exit;
	    }
	    break;
}


var player_hit = player_id.hit_player_obj;
if (instance_exists(player_hit))
{
    if (player_hit.last_player == player_id.player)
    {
        var new_mask;

        if (player_hit.state == PS_HITSTUN) {
            new_mask = sprite_get("artc_mask2");
        } else {
            new_mask = sprite_get("artc_mask");
        }

        if (new_mask != mask_sprite_prev)
        {
            mask_index = new_mask;
            mask_sprite_prev = new_mask;

            // Snap to floor/platform using pixel-accurate rayDown
            var snap_y = rayDown("par_block", "par_jumpthrough");
            if (snap_y != 1000) {
                y = snap_y;

                // Extra: force-correct Y down until we touch a surface
                while (!place_meeting(x, y + 1, asset_get("par_block")) &&
                       !place_meeting(x, y + 1, asset_get("par_jumpthrough")))
                {
                    y += 1;
                    if (y > room_height) break;
                }
            }
        }
    }
}

/// === 2. Grounded Status Check (Manual) ===
safe_grounded = place_meeting(x, y + 1, asset_get("par_block")) ||
                place_meeting(x, y + 1, asset_get("par_jumpthrough"));

/// === 3. Transition to Timeout Only When Actually Leaving Ground ===
if (!safe_grounded && grounded_last_frame)
{
    newState(7); // Despawn timeout
}

/// === 4. Store Previous Grounded State ===
grounded_last_frame = safe_grounded;

#define rayDown(key1, key2){  
    if (!free) return y;  
    var _y = y;  
    var _obj;  
    for (var i = 0; i < 100; ++i) {  
        _obj = instance_position(x + spr_dir, _y + 16 * i, asset_get(key1));  
        if (_obj == noone) _obj = instance_position(x + spr_dir, _y + 16 * i, asset_get(key2));  
        if (_obj != noone) return _y + i;  
    }  
    return 1000;  
}
// State change function
#define newState (state_id)
{
    state = state_id;
    state_timer = 0;
}