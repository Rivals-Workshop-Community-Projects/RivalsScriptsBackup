//
timer++;

//print_debug(string(text_arr))

var raw_string = text_arr[text_index];

switch text_type {
    case 1: case 2: case 5: case 7: //speech bubble: 1 = bottom, 2 = left, 5 = right, 7 = right small
    var delay_frames = 6; //number of frames before next text is displayed
    var text_sound = sound_get("snd_mtt" + string(random_func_2(4, 8, true) + 1));
    var block_length = 3; //number of chars to display at once
    var sound_spaces = true; //whether to play sounds while displaying " " text
    break;
    
    case 3: //battle textbox speech
    var delay_frames = 2;
    var text_sound = sound_get("textbox_sfx");
    var block_length = 1;
    var sound_spaces = false;
    break;
    
    case 4: //menu
    var delay_frames = 2;
    var text_sound = sound_get("textbox_sfx");
    var block_length = 1;
    var sound_spaces = false;
    break;
}

if text_type != 100 && text_type != 6 && timer mod delay_frames == 0 { //6 = essay
    var current_length = string_length(text_current);
    if current_length < string_length(raw_string) {
        text_current = string_copy(raw_string, 1, current_length + block_length);
        if sound_spaces || string_char_at(raw_string, current_length+1) != " " {
            sound_play(text_sound);
        }
    } else {
        finished = true;
    }
}

var player_attack_pressed = false;
with oPlayer {
    if !custom_clone && !clone && !is_dead && attack_pressed {
        player_attack_pressed = true;
    }
}

if player_attack_pressed && finished && can_attack_skip {
	if text_index + 1 < array_length(text_arr) {
		text_index++;
		text_current = "";
		finished = false;
	} else {
	    player_id.textbox_finished = true;
		instance_destroy(id);
    }
}