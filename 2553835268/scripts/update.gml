// Music Picker
if (songpicked <= 8){
    music_play_file("MimiRemastered");
}
if (songpicked > 8 && songpicked <= 18){
    music_play_file("MimiNew");
}
if (songpicked > 18 && songpicked <= 28){
    music_play_file("MimiRidiculon");
}
if (songpicked > 28 && songpicked <= 38){
    music_play_file("MimiOrg");
}
if (songpicked >= 39){
  music_play_file("QuietLoop");
  // Move BG2 and BG5 offscreen
  set_bg_data(2, BG_LAYER_Y, 20000);
  set_bg_data(5, BG_LAYER_Y, 20000);
}
// Do things if Strong or Special are being held when opening the stage
if (get_gameplay_time() < 122 && get_gameplay_time() >= 0) {
    with (oPlayer) {
        if (strong_down) {
            other.songpicked = 1 + current_second%38;
            // Do not remove the mimigas
        }
        if (special_down) {
            other.songpicked = 40;
            // Remove the mimigas
        }
    }
}