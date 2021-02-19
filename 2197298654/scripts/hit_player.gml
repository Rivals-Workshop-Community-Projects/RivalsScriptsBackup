
if (my_hitboxID.attack == AT_NSPECIAL_2){
moonout = 0
}

if (my_hitboxID.attack == AT_NSPECIAL_2){
    if (!hit_player_obj.sleepytimeszzz) {
        sound_play(sound_get("snore")); // replace if using built-in SFX
    }
	hit_player_obj.sleepytimeszzz = true;
    hit_player_obj.sleepytimeszzzid = id; // optional, but HIGHLY recommended
	
	// the next variable is used for status effects that wear off or that do something based on a timer (e.g. Zetterburn fire)
	// replace 600 with the duration of your status effect before it wears off
	// replace 600 with 0 if you want the timer to count up from 0 and never wear off
	// (see "Various types of status effects" for more information)
	hit_player_obj.sleepytimesr = 200;
}

