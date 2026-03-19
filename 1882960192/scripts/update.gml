//update
if !(get_player_color( player ) == 16) { 
	if (wblastcharge >= 35) { 
		var outlineclr = (sin((get_gameplay_time() - wblastcharge) * 0.2) * -50) + 50
		outline_color = [ 0, outlineclr * 1.05, outlineclr * 2];

		if get_gameplay_time() mod 25 == 0 {
				spawn_hit_fx(x-30, y-60, nspecialAfter);
		}
		if get_gameplay_time() mod 20 == 0 {
				spawn_hit_fx(x+30, y-40, nspecialAfter);
		}
		if get_gameplay_time() mod 30 == 0 {
				spawn_hit_fx(x-34, y-14, nspecialAfter);
		}
	}
	else 
	if (get_player_color( player) == 19) {
		outline_color = [ 23, 22, 97];
	}	else {
		outline_color = [ 0, 0, 0 ];
	}
}

if !free {
	if stupidstall == false {
		stupidstall = true;
	}
}

with (asset_get("pHitBox")) {
	if (player_id == other.id && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) && hbox_num == 1) {
        player_id.hookOut = true;
    }
} 

if state == PS_WALL_JUMP {
	move_cooldown[AT_DSPECIAL] = 0;
}

if (get_player_color( player ) == 16) {
	if (wblastcharge >= 35) and ((get_gameplay_time() mod 20) >= 5) {
		outline_color = [ 40, 100, 255];
	}
	else {	
		outline_color = [31, 31, 31];
	}
}

init_shader();

if (wblastcharge > 35) { //Ensure wblastcharge never goes above 35
	wblastcharge = 35;
}

if (0 > wblastcharge) { //Ensure wblastcharge never goes below zero
	wblastcharge = 0;
}

if !(url == 1882960192) {
	set_state(PS_DEAD);
}

if (codec_playing) {
	if (!codec_is_closing) {
			//startup
			if codec_box_frame == 2 sound_play(sound_get("dialogue-open"));
			if (codec_box_frame < 8) {
				codec_box_frame += 0.5;
			} else { 
				//idle and typing
				codec_box_frame = 8; 
				
				var speaker = codec_dialogue[codec_page][0];
				var full_text = codec_dialogue[codec_page][2];
				var text_len = string_length(full_text);

				if (codec_text_timer < text_len) {
					codec_text_timer += 0.4;
					var current_floor = floor(codec_text_timer);
					
					if (current_floor > codec_prev_length && current_floor <= text_len) {
						var current_char = string_char_at(full_text, current_floor);
						
						if (current_char != " " && current_char != "|") {
						 
							var sfx_vol = 0.5; 
							var sfx_pitch = 1.2;
							var sfx = sound_get("dialogue-bot");
							
							// 2. Adjust Pitch and Sound per Speaker
							if (speaker == 0) { //zuzu
								sfx_pitch = 0.95 + (random_func(1, 10, false) / 100)
								var sfx = sound_get("dialogue-azu");
							} else if (speaker == 1) { //cinna-pie
								sfx = sound_get("dialogue-cin");
								sfx_pitch = 0.95 + (random_func(1, 10, false) / 100)
							} else if (speaker == 2) { //BlueyBot
								sfx = sound_get("dialogue-bot");
								sfx_pitch = 1.0; // bbot stays monotone
							} else if (speaker == 3) { //Mozza
								sfx = sound_get("dialogue-moz");
								sfx_pitch = 0.95 + (random_func(1, 10, false) / 100)
							} else if (speaker == 4) { //Troops
								sfx = sound_get("dialogue-tro");
								sfx_pitch = 0.95 + (random_func(1, 10, false) / 100)
							}
							
							sound_stop(sfx);
							sound_play(sfx, false, 0, sfx_vol, sfx_pitch);
						}
						codec_prev_length = current_floor;
					}
				} else {
					codec_auto_timer++;
				}

				var manual_skip = (down_down && shield_pressed);
				var auto_skip = (codec_auto_timer >= 180); // 180 frames = 3 seconds wait time

				if (manual_skip || auto_skip) {
					if (codec_text_timer < text_len && manual_skip) {
						codec_text_timer = text_len;
						codec_prev_length = text_len;
					} else {
						codec_page++;
						codec_text_timer = 0;
						codec_prev_length = 0;
						codec_auto_timer = 0;
						
						if (codec_page >= codec_max_pages) {
							codec_is_closing = true;
							codec_box_frame = 9; 
						}
					}
					if (manual_skip) clear_button_buffer(PC_SHIELD_PRESSED);
				}
			}
		} else {
			//end
			if codec_box_frame == 9  sound_play(sound_get("dialogue-close"));
			if (codec_box_frame < 14) {
				codec_box_frame += 0.5;
			} else {
				codec_playing = false;
		}
	}
}