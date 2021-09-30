if !"arrow_hud" in self exit;
//for voice effect
if(get_gameplay_time() <= 120){
	if(voice == false){
		draw_debug_text(temp_x, temp_y - 20, "Taunt to hear less BF.");
	}
	if(taunt_pressed){
		if(voice == false){
			sound_play(sound_get("Ah_Short"));
			voice = true;
		}
	}
}

//Draws the Arrow icon on the HUD
draw_sprite_ext(sprite_get("arrow_icon"), arrow_hud, temp_x+180, temp_y-25, 2, 2, 0, c_white, 1);

if (note_cont == 30){
	draw_sprite_ext(sprite_get("uncharged_note"), 0, temp_x+158, temp_y-3, 1, 1, 0, c_white, 1);		
}

if (note_cont >= 32 && note_cont < 70){
	draw_sprite_ext(sprite_get("tier1_note"), 0, temp_x+156, temp_y-3, 1, 1, 0, c_white, 1);		
} 

if (note_cont == 71){
	draw_sprite_ext(sprite_get("charged_note"), 0, temp_x+129, temp_y-52, 1, 1, 0, c_white, 1);	
}

//Draws the Mic when it's fully charged
if (mic_cont == 71){
	draw_sprite_ext(sprite_get("miccv"), 0, temp_x+123, temp_y-26, 2, 2, 0, c_white, 1);	
}

muno_event_type = 5;
user_event(14);