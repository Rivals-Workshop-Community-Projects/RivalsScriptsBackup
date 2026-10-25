//results_draw_portrait.gml
//draws sprites over the results but under everything that's in results_post_draw.gml
var cur_alt = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

//tyty once again based supersonicnk
if (winner == player) {
    var mus = sound_get("dogsong");
    switch(cur_alt) {
        case 27:
            mus = sound_get("mus_smile");
        break;
    }
    if !("smile" in self) { smile = 0; }
    if (results_loop_active) {
        suppress_stage_music(0, 1)
        if (smile == 0) {
            smile = sound_play(mus, true, 0, (2-get_local_setting(3)) * get_local_setting(4))
            if get_player_color(player) == 24 print_debug("another w for green sans");
            else print_debug("geeettttttt dunked on!!!");
        }
        if (end_charselect || end_rematch) {
            sound_stop(smile)
        }
    }
}