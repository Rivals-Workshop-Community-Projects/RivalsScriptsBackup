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
    if (shield_down && up_down || shield_down && up_stick_down) {
      with (other) {
        cur_song = 1
      }
    }
    //Option 2: Right
    if (shield_down && right_down || shield_down && right_stick_down) {
      with (other) {
        cur_song = 3
      }
    }
    //Option 3: Down
    if (shield_down && down_down || shield_down && down_stick_down) {
      with (other) {
        cur_song = 4
      }
    }
    //Option 4: Left
    if (shield_down && left_down || shield_down && left_stick_down) {
      with (other) {
        cur_song = 5
      }
    }
  }
}