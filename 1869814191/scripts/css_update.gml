//css_update

var cur_alt = get_player_color(player);
var _name = string_lower(get_player_name(player));
var there_is_a_man = false;
if ("initCheck" in self) { //shut the fuck up error messages
    var max_alts = (array_length_1d(alt_name)-1);
    if (alt_name[cur_alt] == "goner") {
        if !(sfx_gaster) { 
            sfx_gaster = sound_play(sound_get("sfx_gaster")); 
        }
    //    suppress_stage_music(0, 1); 
    } else {
        sound_stop(sfx_gaster); sfx_gaster = 0;
    }
}

/*
if !cur_alt {
    var egg = random_func_2(current_second, 5, true);
    if (egg == 1) { there_is_a_man = true; }
} else { there_is_a_man = false; }
var gonerName = false;

switch(_name) {
    case "gaster":
    case "egg":
    case "goner":
        gonerName = true;
    break;
}

if (max_alts > 0) {
    if (gonerName || there_is_a_man) {
        set_num_palettes(max_alts+1);
    } else { set_num_palettes(max_alts); }
}

css_anim_time ++;

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;

}
*/