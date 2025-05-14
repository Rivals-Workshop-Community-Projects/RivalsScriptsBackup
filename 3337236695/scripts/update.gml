//Music randomizer
if (cur_song == -1) cur_song = random_func(current_second, 6, true)+1;

music_play_file("music_track" + string(cur_song));

//If preferred, songs can now be selected from a set of four instead of randomized!
//This is done by reading the inputs from both the left and right sticks, along with their keyboard equivalents.
//Directions are listed starting clockwise from the top.
//Edit the value for "cur_song" under each input to change which song is set to that selection.
//Aether Mode music is also supported, if you don't have Aether exclusive songs the parts to remove are labeled.
if (get_gameplay_time() < 120){
  with (oPlayer) {
      //Option 1: Up
    if (shield_down && up_down || up_stick_down) {
      with (other) {
        cur_song = 1
      }
    }
    //Option 2: Right
    if (shield_down && right_down || right_stick_down) {
      with (other) {
        cur_song = 2
      }
    }
    //Option 3: Down
    if (shield_down && down_down || down_stick_down) {
      with (other) {
        cur_song = 4
      }
    }
    //Option 4: Left
    if (shield_down && left_down || left_stick_down) {
      with (other) {
        cur_song = 6
      }
    }
  }
}

//Allows the Miis to cheer when a player taunts.
with (oPlayer) {
    if (taunt_down) {
      with (other) {
        mii_can_cheer = true
      }
    }
}

//Ice physics on Aether Mode.
//Original code from Punch Bowl by Aperson!
//Has been modified to work with platforms by saving the player's original ground_friction value.
if is_aether_stage() && get_gameplay_time() = 3 {
    with (oPlayer) {
        ice_friction_original = ground_friction
    }
}

if is_aether_stage() && get_gameplay_time() > 2 {
    with (oPlayer) {
        ice_friction_original = ice_friction_original
        if (!free && y < get_marker_y(1) && y > get_marker_y(2) && x > get_marker_x(1) && x < get_marker_x(2)) {
          switch (state) {
    		case PS_WALK:
    		    if (hsp >= walk_speed) hsp = walk_speed + 1;
    		    if (hsp <= -walk_speed) hsp = -walk_speed - 1;
    		break;
    		case PS_DASH_START:
    		    if (hsp >= initial_dash_speed) hsp = initial_dash_speed + 1;
    		    if (hsp <= -initial_dash_speed) hsp = -initial_dash_speed - 1;
    		break;
    		case PS_DASH:
    		    if (hsp >= dash_speed) hsp = dash_speed + 1;
    		    if (hsp <= -dash_speed) hsp = -dash_speed -1
    		break;
    	}
    	//force-restore hsp and apply only 33% of friction
    	ground_friction = 0.06;  
        }else if !free {
            ground_friction = ice_friction_original
        }
    }
}