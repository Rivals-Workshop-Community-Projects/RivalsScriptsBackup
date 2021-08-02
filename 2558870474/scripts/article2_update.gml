// Update
/*
* STATES:
*   0 - Spawning
*   1 - NYOOM
*   2 - Active
*   3 - Shatter
*   4 - Despawn
*
*/

// Delete the rune if it goes off stage
if (y > room_height + 100 && (state != 6 and state != 7 and state != 2 and state != 3)){
	// Remove Clone
	if (state != 5){
	    setState(5);
	}
}

if (place_meeting(x, y, asset_get("plasma_field_obj")) && (state != 0 and state != 4)) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    setState(5);
}

switch(state){
    case 0: // Spawning
        if state_timer == 8{
            hsp = (8 + hsp_charge) * spr_dir;
            setState(1);
        }
        break;
    case 1: // Speeding Forward
    	if state_timer == 1{
    		hitbox = create_hitbox(AT_FSTRONG, 1, x + (10 * spr_dir), y-23);
    	}
        if hsp > 0{
            // Reduce Speed
            hsp -= ground_fric;
        }
        if hsp < 0{
            hsp += ground_fric;
        }
        if hsp == 0{
        	instance_destroy(hitbox);
            // Slash
            setState(6);
        } else {
			if instance_exists(hitbox)
			{
			  hitbox.x = x + hsp
			  hitbox.y = y - 16 + vsp;
			}
        }
        break;
    case 2: // Start Up
    	ignores_walls = true;
    	if state_timer == 1{
    		destroy_hitboxes();
    	}
    	if state_timer == 14{
    		sound_play(asset_get("sfx_swipe_heavy2"));
    	}
    	if state_timer == 16{
	        // now put in active
	        setState(3);
    		// create hitbox
    		if spr_dir == 1{
    			create_hitbox(AT_FSTRONG, 2, x+42, y-39);
    		} else {
    			create_hitbox(AT_FSTRONG, 2, x-42, y-39);
    		}
    	}
        break;
    case 3: // Active (ATTACK)
    	ignores_walls = true;
    	if state_timer == 3{
	        // now put in endlag
	        setState(4);
    	}
        break;
    case 4: // Shatter (Endlag)
    	ignores_walls = true;
    	if state_timer == 1{
    		destroy_hitboxes();
    	}
        if (state_timer == 25){
        	spawn_hit_fx(x + clonevf_x, y + 8, player_id.vfx_roll_clone);
            setState(5);
        }
        break;
    case 6:
    case 5: // Despawning
    	instance_destroy(hitbox)
    	ignores_walls = true;
    	player_id.illusion = noone;
        instance_destroy();
        break;

}

// Animation Handler
switch(anim_type[state]){
    case 0:
        var frames = 4;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 1: //unused, just from template
        var frames = 20;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 2: // Nyoom?
        var frames = 2;
        var frame_dur = 6;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 3: //Dashing
        var frames = 4;
        var frame_dur = 6;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 4: // Start-up
        var frames = 5;
        var frame_dur = 6;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 5: //Active
        var frames = 1;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 6: // Endlag
        var frames = 4;
        var frame_dur = 7;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

state_timer += 1;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

prev_state = state;
state = new_state;
state_timer = 0;
