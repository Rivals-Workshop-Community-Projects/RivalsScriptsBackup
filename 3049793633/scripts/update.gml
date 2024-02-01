//Music randomizer
if (cur_song == -1) cur_song = random_func(current_second, 8, true)+1;

music_play_file("music_track" + string(cur_song));

//Secret trigger to select the Sunset Hill Edit, added for a friend
if (get_gameplay_time() < 120){
  with (oPlayer) {
    if (taunt_down && !up_down && !right_down && !left_down && !down_down) {
      with (other) {
        cur_song = 4
        }
      }
    }
  }
  
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
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 2
        }
      }
    }
    //Option 2: Right
    if (shield_down && right_down || right_stick_down) {
      with (other) {
        cur_song = 3
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 4
        }
      }
    }
    //Option 3: Down
    if (shield_down && down_down || down_stick_down) {
      with (other) {
        cur_song = 5
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 6
        }
      }
    }
    //Option 4: Left
    if (shield_down && left_down || left_stick_down) {
      with (other) {
        cur_song = 7
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 8
        }
      }
    }
  }
}

//Controls the cameos' state and order.
cameos_timer += 1

if (cameos_timer = 200) {
    cameos_state = 2
}

if (cameos_timer = 1820) {
    cameos_state = 3
}

if (cameos_timer = 3620) {
    cameos_state = 4
}

if (cameos_timer = 5420) {
   cameos_state = 3
}
    
if (cameos_timer = 7220) {
    cameos_state = 4
    chase += 1
}

if (cameos_timer = 9020) {
    cameos_state = 2
}

if (cameos_timer = 12020) {
    cameos_state = 1
    cameos_timer = 1
    chase += 1
}
    
print(cameos_state)
print(cameos_timer)