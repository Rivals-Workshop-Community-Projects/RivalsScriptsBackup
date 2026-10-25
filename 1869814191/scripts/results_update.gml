//results_update

var cur_alt = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);
var sec = 60;

if (winner == player) {
    //suppress_stage_music(0, 1);
    
    if (string_lower(winner_name) == "sans de wins!") { winner_name = "sans wins!"; }
    //if (string_lower(winner_name) == "sans de wins!") { winner_name = "geeettttttt dunked on!!!"; }
    
    if !("dogsong" in self) {
        victoryTimer = 0;
        entry17 = 0;
        dogsong = 0;
        //print_debug("geeettttttt dunked on!!!");
    } else {
        /*
        if (cur_alt == 15) {
            sound_stop(sound_get("mus_win_sans"));
            if (!entry17) { entry17 = sound_play(sound_get("mus_smile"), true, 0, 1.3); }
        } else {
            victoryTimer++;
            if (victoryTimer >= 18.5*sec && !dogsong) {
                dogsong = sound_play(sound_get("dogsong"), true, 0, 1.2);
            }
        }
        */
    }
}