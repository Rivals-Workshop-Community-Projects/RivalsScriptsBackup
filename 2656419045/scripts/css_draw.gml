alt = get_player_color(player);
// var chars = ["mario", "luigi", "toad", "toadette", "toad", "wario", "toad", "toad", "toad", "toad", "toad"];
var chars = ["mario", "luigi", "toad", "toadette", "toad", "toad", "toad", "toad", "toad", "toad"];
if(!"old_alt_neo" in self) { old_alt_neo = -1; prev_char_sfx = array_create(array_length_1d(chars), noone); }

if(alt != old_alt_neo) {
	old_alt_neo = get_player_color(player);
	//Count how many sounds there are with this name
	var invalid_sfx = sound_get(""), current_sfx = sound_get(`voc_${chars[alt]}_select1`), sounds_count = 0;
	while(current_sfx != invalid_sfx && sounds_count < 20) {
		sounds_count++;
		current_sfx = sound_get(`voc_${chars[alt]}_select${sounds_count + 1}`);
	}
	//If there's at least one sound, then play it with the old play_voice_sfx function. If not, that's probs bad
	if(sounds_count > 0) {
		sound_stop(prev_char_sfx[alt]);
		prev_char_sfx[alt] = sound_play(sound_get(`voc_${chars[alt]}_select${1 + random_func(0, sounds_count, true)}`), false, 0.0, 1.0, 1.0);
	}
	else print(`Warning: There is no voc_${chars[alt]}_select1.ogg :(`);
}

draw_sprite(sprite_get("misc_character_select"), alt, x + 8, y + 10);

//user_event(12);
muno_event_type = 6; user_event(14);