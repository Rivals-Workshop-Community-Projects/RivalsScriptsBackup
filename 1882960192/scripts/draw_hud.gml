//draw_hud

if (codec_playing) {
    // draw the Box
    draw_sprite(sprite_get("codecbox"), floor(codec_box_frame), temp_x, temp_y);

	//draw if the box is open
    if (floor(codec_box_frame) == 8 && !codec_is_closing) {
        var speaker  = codec_dialogue[codec_page][0];
        var portrait = codec_dialogue[codec_page][1];
        var sentence = codec_dialogue[codec_page][2];

        // portraits
        switch (speaker) {
            case 0: draw_sprite(sprite_get("codec_azure"), portrait, temp_x + 54, temp_y + 38); break;
            case 1: draw_sprite(sprite_get("codec_cinna"), portrait, temp_x + 54, temp_y + 38); break;
            case 2: draw_sprite(sprite_get("codec_bbot"),  portrait, temp_x + 54, temp_y + 38); break;
            case 3: draw_sprite(sprite_get("codec_mozza"),  portrait, temp_x + 54, temp_y + 38); break;
            case 4: draw_sprite(sprite_get("codec_troops"),  portrait, temp_x + 54, temp_y + 38); break;
        }

		// le typewriter
		var temp_sentence = sentence; 
		var current_x = floor(temp_x + 4); 		
		var current_y = floor(temp_y - 60); 
		var timer_left = ceil(codec_text_timer) + 2; // padding so punctuation shows up, unlike on my commented text

		while (string_length(temp_sentence) > 0 && timer_left > 0) {
			var break_pos = string_pos("|", temp_sentence);
			
			if (break_pos == 0) {
				// last line or no breaks left
				var draw_str = string_copy(temp_sentence, 1, timer_left);
				draw_debug_text(current_x, current_y, string(draw_str));
				break; 
			} else {
				// cut at the '|'
				var line_text = string_copy(temp_sentence, 1, break_pos - 1);
				
				if (timer_left >= break_pos) {
					draw_debug_text(current_x, current_y, string(line_text));
					temp_sentence = string_delete(temp_sentence, 1, break_pos);
					timer_left -= break_pos;
					current_y += 16; 
				} else {
					// still typing this line
					var draw_str = string_copy(line_text, 1, timer_left);
					draw_debug_text(current_x, current_y, string(draw_str));
					break; 
				}
			}
		}
    }
}