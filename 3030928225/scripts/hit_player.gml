//hit_player.gml
//this script runs every time you hit someone with a hitbox
//NOTE: to check for hitbox variables use [my_hitboxID] like the examples below, otherwise don't include it in you statements


var attack = my_hitboxID.attack;
var hbox = my_hitboxID.hbox_num;

if (hit_player_obj.state_cat == SC_HITSTUN) {
	//airstrong lerp 
	if ((attack == AT_FSTRONG_2) && (hbox < 6)) {
	    hit_player_obj.x = lerp(floor(hit_player_obj.x), x+80 * spr_dir, .2)
	    hit_player_obj.y = lerp(floor(hit_player_obj.y), y-15, .2)
	}
	
	//fstrong lerp
	if ((attack == AT_FSTRONG) && (hbox != 3) && (hbox != 8)) {
		if (hit_player_obj.free) { //only happens if they arent grounded
	    	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+70 * spr_dir, .2)
	    	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-5, .3)
		}
	}
	
	//dattack lerp
	if ((attack == AT_DATTACK) && (hbox != 3)) {
		if (hit_player_obj.free) { //only happens if they arent grounded
	    	hit_player_obj.x = lerp(floor(hit_player_obj.x), x+100 * spr_dir, .4)
	    	hit_player_obj.y = lerp(floor(hit_player_obj.y), y-5, .4)
		}
	}
}

//dspecial
if (attack == AT_DSPECIAL_AIR) {
	// Restore double jump on dspecial_air hit
	if (djumps > 0) {
		djumps = 0;
		//print_debug("Restore djump on dspecial_air hit");
	}
	//print_debug("landed a dspecial_air");
}

//fspecial
if (attack == AT_FSPECIAL) {
	// Restore double jump on fspecial hit
	if (djumps > 0) {
		djumps = 0;
	}
} else {
	// Can use charged strong or special on hit
	// (For everything except fspecial)
	can_stancle = true;
}

//if statement for your attack
if (attack == AT_BAIR) {
    if (hbox == 2) {
        sound_play(asset_get("sfx_land_heavy"));
    }
}

if (attack == AT_BAIR) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_burnapplied"));
    }
}

if (attack == AT_FAIR) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_icehit_medium1"));
    }
}

if (attack == AT_FAIR) {
    if (hbox == 2) {
        sound_play(asset_get("sfx_icehit_weak2"));
    }
}

if (attack == AT_UTILT) {
    if (hbox == 2) {
        sound_play(asset_get("sfx_icehit_medium1"));
    }
}

if (attack == AT_UTILT) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_icehit_weak2"));
    }
}

if (attack == AT_DTILT) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_burnapplied"));
    }
}


if (attack == AT_DAIR) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_blow_medium1"));
    }
}

if (attack == AT_DAIR) {
    if (hbox == 2) {
        sound_play(asset_get("sfx_blow_medium2"));
    }
}

if (attack == AT_DAIR) {
    if (hbox == 3) {
        sound_play(asset_get("sfx_icehit_weak2"));
    }
}

if (attack == AT_UAIR) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_ori_dsmash_seinhits"));
    }
}

if (attack == AT_DATTACK) {
    sound_play(asset_get("sfx_icehit_medium1"), false, noone, 0.6, 1.2);
    
    if hbox == 5 {
    	sound_play(asset_get("sfx_buzzsaw_hit"), false, noone, 0.6, 1.0);
    }
}
    
if (attack == AT_NAIR) {
        sound_play(asset_get("sfx_icehit_medium1"));
    }
    
if (attack == AT_DSTRONG) {
        sound_play(asset_get("sfx_zetter_upb_hit"));
    }

if (attack == AT_USTRONG_2) {
    if (hbox == 2) {
        sound_play(asset_get("sfx_forsburn_reappear_hit"));
    }
}
if (attack == AT_FSTRONG) {
    if (hbox == 3) {
        sound_play(asset_get("sfx_crunch"));
    }
}

if (attack == AT_FSTRONG) {
    if (hbox == 8) {
        sound_play(asset_get("sfx_crunch"));
    }
}

if (attack == AT_FSTRONG) {
        sound_play(asset_get("sfx_bigplant_clamp"));
    }
    
if (attack == AT_NSPECIAL) {
        sound_play(asset_get("sfx_forsburn_combust"));
    }
    
if (attack == AT_NSPECIAL_AIR) {
        sound_play(asset_get("sfx_forsburn_combust"));
    } 
    
if (attack == AT_DSPECIAL_AIR) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_blow_medium1"));
    }
}

    
if (attack == AT_DSPECIAL_AIR) {
    if (hbox == 3) {
        sound_play(asset_get("sfx_blow_medium2"));
    }
}

if (attack == AT_DSPECIAL_AIR) {
    if (hbox == 4) {
        sound_play(asset_get("sfx_blow_medium1"));
    }
}

if (attack == AT_FSTRONG_2) {
    if (hbox == 1) {
        sound_play(asset_get("sfx_zetter_upb_hit"));
	} else if (hbox == 2) {
        sound_play(asset_get("sfx_zetter_upb_hit"));    
	} else if (hbox == 3) {
        sound_play(asset_get("sfx_zetter_upb_hit"));
	} else if (hbox == 4) {
        sound_play(asset_get("sfx_zetter_upb_hit"));  
	} else if (hbox == 5) {
        sound_play(asset_get("sfx_burnapplied")); 
	} else if (hbox == 6) {
        sound_play(asset_get("sfx_burnconsume"), false, noone, .6, 1.3);  
        sound_play(asset_get("sfx_burnapplied"));
    }
}

//break/// 

if my_hitboxID.attack == AT_DAIR {
old_vsp = -7;
old_hsp = 0;
}



// Check if we grabbed someone
if (my_hitboxID == grab_hitbox) {
	if (attack == AT_FSPECIAL) {
	    // Fail grab under certain circumstances
	    if ((!hit_player_obj.invincible)
	        && (!hit_player_obj.super_armor)
	        && grab_hitbox.proj_can_grab)
	    {
	        // Grab the struck opponent
	        hit_player_obj.SQUIGLY_HOLDER_ID = id;
			// Pause to do the grab animation
			grab_hitbox.start_clamp = true;
	        // Start a 'reeling' animation
	        fspecial_caught_one = true;
	        
	        // Play a grab-confirm sound
	        sound_play(asset_get("sfx_waveland_syl"));
	        if (va_mode_active) {
				curr_va_line_must_play_fully = true;
	        	if (my_hitboxID.hbox_num == 2) {
	        		play_va_line("Cfspecial_land", 2, 100, 1);
	        	} else {
	        		play_va_line("fspecial_land", 2, 100, 1);
	        	}
	        }
	    }
	} else 	if (attack == AT_DSPECIAL_AIR) {
	    // Fail grab under certain circumstances
	    if ((!hit_player_obj.invincible)
	        && (!hit_player_obj.super_armor))
	    {
	        // Grab the struck opponent
	        hit_player_obj.SQUIGLY_HOLDER_ID = id;
	        
	        dspecial_caught_one = true;
	        
	        // Play a grab-confirm sound
	        sound_play(asset_get("sfx_waveland_syl"));
	        if (va_mode_active) {
	        	if (my_hitboxID.hbox_num == 3) {
	        		play_va_line("ACdspecial_grab", 1, 100, 1);
	        	}
	        }
	    }
	}
} else {
	hit_player_obj.SQUIGLY_HOLDER_ID = noone;
	stun_counter = 0;
}


/*
if (my_hitboxID.orig_player_id != self) exit; //this line makes it so only hitboxes that belong to tester work with hit_player

switch (my_hitboxID.attack)
{
    case AT_FTILT: //command grab
        if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        break;
    case AT_USTRONG: //strong charge increasing height
        sound_play(asset_get("sfx_ori_seinhit_heavy")); //play both these sounds when it hits someone
        sound_play(asset_get("sfx_blow_heavy2"));
        break;
 
    case AT_NSPECIAL: //multihit projectile
        //for rune E, the 2nd charge for the nspecial projectile spawns an extra hitbox
        if (my_hitboxID.hbox_num == 2 && has_rune("E")) create_hitbox(AT_NSPECIAL, 4, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height/2);

        //slows down the final charge projectile on the first hit
        with (my_hitboxID)
        {
            if (proj_hit_count == 0)
            {
                //hsp *= 0.6;
                //vsp *= 0.6;
            }
        }
        break;
    case AT_FSPECIAL: //tether
        if (my_hitboxID.hbox_num == 2)
        {
            fspec_found_target = true; //tells the game to move the character to the success window
            set_grab_id(); //sets the grabbed player, look below for more details
        }
        else my_grab_id = noone; //hbox_num 1 is the collision hitbox, it should let go of grabbed players
        break;
}

//appying custom status code
//  yes, you can check any hitbox variable you like for this to work
//  just make sure you are check [my_hitboxID.attack] and [my_hitboxID.hbox_num]
if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EFFECT) == 30)
{
    hit_player_obj.test_status_timer = test_status_time_set; //sets the status timer to the set time
    hit_player_obj.test_status_owner = self; //sets status owner to us (so we can show different colors on them)
}

//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && multihit_amount > 0)
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
*/

// All voice lines start with va_, and will randomize between num_options
// Chance is 0 - 100 % chance of playing the line at all
// Volume needs to be between 0 and 1
#define play_va_line(va_line, num_options, chance, volume)
playing_stance_line = false;
var roll = random_func(13, 100, false);
if (roll < chance) {
	if (curr_va_line_must_play_fully) {
		curr_va_line_must_play_fully = false;
	} else if (curr_va_line != noone) {
		sound_stop(curr_va_line);
	}
	if (num_options > 1) {
		var choice = random_func(14, num_options, true);
		curr_va_line = sound_play(sound_get("va_" + va_line + string(choice + 1)), false /*looping*/, noone /*panning*/, volume/*volume*/, 1/*pitch*/);
	} else {
		curr_va_line = sound_play(sound_get("va_" + va_line), false /*looping*/, noone /*panning*/, volume/*volume*/, 1/*pitch*/);
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