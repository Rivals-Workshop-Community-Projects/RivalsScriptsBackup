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
  set_bg_data(2, BG_LAYER_Y, 20000);
  set_bg_data(5, BG_LAYER_Y, 20000);
}
if (get_gameplay_time() < 122 && get_gameplay_time() >= 0) {
    with (oPlayer) {
        if (strong_down) {
            other.songpicked = 1 + current_second%38;
        }
        if (special_down) {
            other.songpicked = 40;
        }
    }
}