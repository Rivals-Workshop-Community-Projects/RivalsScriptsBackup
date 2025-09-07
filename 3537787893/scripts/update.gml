//Checks for characters in the match and sets their variables to true.
with (asset_get("oPlayer")) {
   if (string_count("rex & pyra", string_lower(get_char_info(player, INFO_STR_NAME))) > 0) {
    with (other) {
        total_songs = 9
    }
    }
}

//Music randomizer
if (cur_song == -1) cur_song = random_func(current_second, total_songs, true)+1;

music_play_file("music_track" + string(cur_song));

if (get_gameplay_time() < 120){
  with (oPlayer) {
    if (taunt_down && !up_down && !right_down && !left_down && !down_down) {
      with (other) {
        cur_song = 9
        }
      }
    }
  }

//New as of V1.2!
//If preferred, songs can now be selected from a set of four instead of randomized!
//This is done by reading the inputs from both the left and right sticks, WHILE HOLDING SHIELD, along with their keyboard equivalents.
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
            cur_song = 3
        }
      }
    }
    //Option 2: Right
    if (shield_down && right_down || right_stick_down) {
      with (other) {
        cur_song = 2
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

