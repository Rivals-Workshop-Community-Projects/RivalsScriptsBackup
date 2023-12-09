//The first line
alt_cur = get_player_color(player);
//CSS Cursor Stuff
if instance_exists(cursor_id){
	var cur_x = get_instance_x(cursor_id);
	var cur_y = get_instance_y(cursor_id);
	
	//Voice Logic
	if get_player_color(player) ==11 || get_player_color(player) ==12 {	
		if (cur_x > 16  + x )&& (cur_x <=  48 + x )&& (cur_y > 74 + y )&& (cur_y <=  100 + y ){		//Button Coordinates
			suppress_cursor = true;
			if menu_a_pressed  {
				voice_button = !voice_button;
				 sound_play(asset_get("mfx_option"));
				menu_a_pressed = false;
			}
		}
	} else {
		voice_button = 0;
	}
	//Pill Logic
	if (cur_x > 12 + x )&& (cur_x <=  50  + x )&& (cur_y > 46 + y )&& (cur_y <=  66  + y ){		//Button Coordinates
		suppress_cursor = true;
		if menu_a_pressed  {
			pill_button = pill_button+1;
			if pill_button >8{pill_button = 1}								//TOTAL AMOUNT OF PILLS
			sound_play(asset_get("mfx_option"));
			menu_a_pressed = false;
			pill_prev = pill_button;
		}
	}
}

if alt_prev != alt_cur{
	if alt_cur == 11 || alt_cur == 12{		//Medic
		if alt_prev != 12 && alt_prev !=11 {pill_button=6;}
	}
	else if alt_cur == 16{			//Eggman
		pill_button=5;
	}
	else if alt_cur == 21 || alt_cur == 22{		//Tetris
		if alt_prev != 22 && alt_prev !=21 {pill_button=4;}
	}
	else if alt_cur == 20{			//Virus
		pill_button=8;
	}
	else if alt_cur == 25{			//Pringles
		pill_button=2;
	}
	else if alt_cur == 28{			
		pill_button=3;
	}
	else if alt_cur == 29{			//Rice
		pill_button=6;
	}
	else if alt_cur == 31{			//Mothra
		pill_button=7;
	}
	else {

		pill_button=pill_prev;

	}

}

//The last line
alt_prev = alt_cur; 
pill_cur = pill_button

//We receive the Voice Toggle and Pill Skin
generated_var = generate_synced_var(voice_button, 1, pill_button, 4)

set_synced_var(player, generated_var);

#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}
return real(output);


