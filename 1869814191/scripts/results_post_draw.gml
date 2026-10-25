set_victory_portrait(results_timer < 50? asset_get("empty_sprite"): sprite_get("portrait"));
var t = results_timer;

if t <= 50 draw_rectangle_color(0, 0, 1000, 1000, 0, 0, 0, 0, 0);
if t <= 30 draw_sprite_ext(sprite_get("portrait_win"), 0, portrait_x, portrait_y, 2, 2, 0, c_white, t/30);
if t == 20 || t == 35 || t == 50 sound_play(sound_get("sfx_sans_click"));
if t == clamp(t, 20, 35) draw_man(2, .5);
shader_end();

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

#define draw_man(num, alpha)
if "man" not in self{
    man = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAA4AAAASCAMAAABcgh8DAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJUExURQAAAP///wAAAHPGg3EAAAADdFJOU///ANfKDUEAAAAJcEhZcwAADsEAAA7BAbiRa+0AAAAZdEVYdFNvZnR3YXJlAFBhaW50Lk5FVCA1LjEuMTGKCBbOAAAAuGVYSWZJSSoACAAAAAUAGgEFAAEAAABKAAAAGwEFAAEAAABSAAAAKAEDAAEAAAACAAAAMQECABEAAABaAAAAaYcEAAEAAABsAAAAAAAAANh2AQDoAwAA2HYBAOgDAABQYWludC5ORVQgNS4xLjExAAADAACQBwAEAAAAMDIzMAGgAwABAAAAAQAAAAWgBAABAAAAlgAAAAAAAAACAAEAAgAEAAAAUjk4AAIABwAEAAAAMDEwMAAAAABDWKhIwO8T+AAAAD1JREFUKFNjYAIDBgYoDeEwMkIEQAQDIxiAmRhcKA/MZ0DwQHwCXCQeyDZKuPgtQnckxH9QH0K8zcAA9T8AmO4BFR/Z09AAAAAASUVORK5CYII=", 1, 7, 9)
    forgotten = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAFAAAAAOCAMAAACPS2sYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAGUExURQAAAAAAAKVnuc8AAAACdFJOU/8A5bcwSgAAAAlwSFlzAAAOvwAADr8BOAVTJAAAABl0RVh0U29mdHdhcmUAUGFpbnQuTkVUIDUuMS4xMYoIFs4AAAC4ZVhJZklJKgAIAAAABQAaAQUAAQAAAEoAAAAbAQUAAQAAAFIAAAAoAQMAAQAAAAIAAAAxAQIAEQAAAFoAAABphwQAAQAAAGwAAAAAAAAApnYBAOgDAACmdgEA6AMAAFBhaW50Lk5FVCA1LjEuMTEAAAMAAJAHAAQAAAAwMjMwAaADAAEAAAABAAAABaAEAAEAAACWAAAAAAAAAAIAAQACAAQAAABSOTgAAgAHAAQAAAAwMTAwAAAAAGOG8p6O7+O5AAAAi0lEQVQ4T82QSw7AIAhEx/tfupFRGIRFk7qoCfIbXi0Ylw/OwteDMQAQ646B19mZqTY8P8pLrPVslHosQdUCBAqqCORFhVe0LVAj8yZogbt9AvVndWavaFusLLF1hwvoncQ7vl7zuKXfAMXRYocvgVXQCIs1QAunszxeIgXyOKC7imqqz3uNXDv/Bz7bsAMvI0OuzAAAAABJRU5ErkJggg==", 10, 4, 7)
}
draw_set_alpha(alpha);
draw_sprite(man, 0, 944, 520);
draw_set_alpha(1);
draw_sprite(forgotten, num, 944, 520);