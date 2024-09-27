//The randomizer for the stage's music, set up under an if statement to prevent update from running it every frame.
//The number within the randomizer (in this case, 4) is the total number of songs.
//Edit this value to adjust how many songs are randomized.
if (cur_song == -1) cur_song = random_func(current_second, 5, true)+1;

//Aether Mode's randomizer, set up the same as above with the addition of the +# value at the end changing.
//It should be one higher then the total number of songs randomized for basic.
//Remove if you don't have Aether exclusive songs.
if (cur_song == -2) {
    cur_song = random_func(current_second, 2, true)+5;
}

//This is the actual line of code that plays the selected song.
//"music_track" can be adjusted to whatever you prefer but make sure you rename the song files to match.
music_play_file("music_track" + string(cur_song));

//New as of V1.2!
//If preferred, songs can now be selected from a set of four instead of randomized!
//This is done by reading the inputs from both the left and right sticks, WHILE HOLDING SHIELD, along with their keyboard equivalents.
//Directions are listed starting clockwise from the top.
//Edit the value for "cur_song" under each input to change which song is set to that selection.
//Aether Mode music is also supported, if you don't have Aether exclusive songs the parts to remove are labeled.
if (get_gameplay_time() < 120){
  with (oPlayer) {
      //Option 1: Up
    if (shield_down && up_down || shield_down && up_stick_down) {
      with (other) {
        cur_song = 1
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 5
        }
      }
    }
    //Option 2: Right
    if (shield_down && right_down || shield_down && right_stick_down) {
      with (other) {
        cur_song = 2
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 6
        }
      }
    }
    //Option 3: Down
    if (shield_down && down_down || shield_down && down_stick_down) {
      with (other) {
        cur_song = 3
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 7
        }
      }
    }
    //Option 4: Left
    if (shield_down && left_down || shield_down && left_stick_down) {
      with (other) {
        cur_song = 4
        //Remove the following if statement and brackets if you don't have Aether exclusive songs.
        if is_aether_stage() {
            cur_song = 8
        }
      }
    }
  }
}

