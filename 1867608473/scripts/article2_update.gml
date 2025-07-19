//

// Delete the rune if it goes off stage
if (y > room_height + 100 && (state != 6 and state != 7 and state != 2 and state != 3)){
	// Remove Soul
	if (state == 0 or state == 1){
		player_id.soul = noone;
	    setState(3);
	}
}

if soundplayed{
	soundplayed = false;
}

if state < 4{
	offscreen_track = 9;
}

if lifetime < lifetime_max{
	if state < 3{
		lifetime++
	}
} else {
	setState(5);
}

if state != 5{
	ignores_walls = false;
} else {
	ignores_walls = true;
}

// State Handler
switch(state){
    case 0:     // Spawning
    	if state_timer == 24{
    		setState(1);
    	}
        break;
    case 1:     // Idle
    	is_hittable = true;
        break;
    case 2:     // Pulling Kris
    	is_hittable = true;
    	if player_id.state != PS_ATTACK_AIR and player_id.attack != AT_FSPECIAL_2{
    		setState(1);
    	}
        break;
    case 3:     // Destroy
    	is_hittable = false;
    	player_id.move_cooldown[AT_DSPECIAL] = 0;
        player_id.soul = noone;
        instance_destroy();
        exit;
        break;
    case 4:     // Hit Cooldown
    	is_hittable = false;
    	with player_id{
    		move_cooldown[AT_NSPECIAL] = 180;
    		move_cooldown[AT_NSPECIAL_2] = 180;
    		move_cooldown[AT_FSPECIAL] = 180;
    		move_cooldown[AT_DSPECIAL] = 180;
    		move_cooldown[AT_DSPECIAL_2] = 180;
    	}
    
    	if state_timer == 1{
    		if player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND{
    			if player_id.attack == AT_DSPECIAL_2{
    				// knock them out of it
    				player_id.state = PS_PRATFALL;
    			}
    		}
    	}
    	if state_timer % 2 == 0{
    		soul_hit_vis = 0;
    	} else {
    		soul_hit_vis = 1;
    	}
    	if state_timer == round(hit_cool) + 360{
    		hit_cool = 0;
    		soul_hit_vis = 0;
    		setState(5);
    	}
        break;
    case 5:
    	is_hittable = false;
    	x = lerp(x, player_id.x, .15);
    	y = lerp(y, player_id.y, .15);
    	if point_distance(x, y, player_id.x, player_id.y) <= 30{
    		player_id.move_cooldown[AT_DSPECIAL] = 0;
    		player_id.soul = noone;
    		instance_destroy();
    		exit;
    	}
    	break;
    case 6:	// FSpecial Recover
    	is_hittable = false;
    	if state_timer == 14{
    		setState(1);
    	}
    	break;
    case 7:	// NSpecial Charge
    	is_hittable = false;
    	if state_timer == 8{
    		sound_play(sound_get("sfx_charge_shot"));
    		proj = create_hitbox(AT_NSPECIAL, 1, x - (1 * spr_dir) ,y + 2);
    		setState(8);
    	}
    	break;
    case 8:	// NSpecial Fire
    	is_hittable = false;
		// Create small blast
		if state_timer == 4{
			setState(9);
		}
    	break;
    case 9:	// FSpecial Recover
    	is_hittable = true;
    	if state_timer == 7{
    		depth = 0;
    		setState(1);
    	}
    	break;
    case 10: // FSpecial FLYING
    	is_hittable = false;
	    if state_timer == 1{
	    	hitbox = create_hitbox(AT_FSPECIAL, 1, x * spr_dir, y + 8);
	    }
        if hsp == 0{
        	instance_destroy(hitbox);
            // Slash
            setState(6);
        } else {
			if instance_exists(hitbox)
			{
			  hitbox.x = x + hsp * spr_dir;
			  hitbox.y = y + 8 + vsp;
			}
			
			hsp -= .25 * spr_dir;
        }
    	break;
}

// Animation Handler
switch(anim_type[state]){
    case 0:
        var frames = 3;
        var frame_dur = 6;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 1: //unused, just from template
        var frames = 20;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 2: //unused, just from template
        var frames = 20;
        var frame_dur = 3;
        image_index = 4;
        break;
    case 3: // Turn
        var frames = 4;
        var frame_dur = 6;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 4: // Charging
        if state_timer < 7{
        	image_index = 0;
        } else {
        	image_index = 1;
        }
        break;
    case 5: // FIRE
        image_index = 0;
        break;
    case 6: // Turn Recover
        var frames = 3;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 7: // Turn Recover
        var frames = 4;
        var frame_dur = 4;
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