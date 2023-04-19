//The randomizer for the stage's music, set up under an if statement to prevent update from running it every frame.
//The number within the randomizer (in this case, 4) is the total number of songs.
//Edit this value to adjust how many songs are randomized.
if (cur_song == -1) cur_song = random_func(current_second, 8, true)+1;

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
      }
    }
    //Option 2: Right
    if (shield_down && right_down || shield_down && right_stick_down) {
      with (other) {
        cur_song = 2
      }
    }
    //Option 3: Down
    if (shield_down && down_down || shield_down && down_stick_down) {
      with (other) {
        cur_song = 5
      }
    }
    //Option 4: Left
    if (shield_down && left_down || shield_down && left_stick_down) {
      with (other) {
        cur_song = 8
      }
    }
  }
}

if portal = 1{
with (oPlayer) {
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2) + char_height*2/3{
        y -= 256;
    }else if y <= get_marker_y(1) + char_height*2/3{
        y += 256;
    }
}
}

with (obj_article1) {
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2){
        y -= 256;
    }else if y <= get_marker_y(1){
        y += 256;
    }
}
}

with (obj_article2) {
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2){
        y -= 256;
    }else if y <= get_marker_y(1){
        y += 256;
    }
}
}

with (obj_article3) {
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2){
        y -= 256;
    }else if y <= get_marker_y(1){
        y += 256;
    }
}
}

with (obj_article_solid) {
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2){
        y -= 256;
    }else if y <= get_marker_y(1){
        y += 256;
    }
}
}

with (obj_article_platform) {
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2){
        y -= 256;
    }else if y <= get_marker_y(1){
        y += 256;
    }
}
}

with (pHitBox) if type = 2{
if x >= get_marker_x(1) && x <= get_marker_x(2){
    if y >= get_marker_y(2){
        y -= 256;
    }else if y <= get_marker_y(1){
        y += 256;
    }
}
}



}else{

with (oPlayer) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3) + char_height*2/3{
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

with (obj_article1) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3){
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

with (obj_article2) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3){
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

with (obj_article3) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3){
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

with (obj_article_solid) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3){
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

with (obj_article_platform) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3){
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

with (pHitBox) {
if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y >= get_marker_y(3){
    x += 512 * sign(get_marker_x(7) - x);
    vsp *= -1;
    vsp -= 1;
}
}

}

if (timer = 1) {
    print(timer)
    if (get_gameplay_time()%660 == 0){
        glados_taunt = 19
        timer = 0
        print(timer)
}
}