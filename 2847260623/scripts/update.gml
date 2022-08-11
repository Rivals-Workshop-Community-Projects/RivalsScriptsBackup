//
if player_die == 1 && oPlayer.hitpause == false{
	if time < 30{
		time += 1;
	} else { time = 0; mode = !mode; player_die = 0; }
}

if music_change == 0{
	music_crossfade(0, 0.1);
} else {
	music_crossfade(1, 0.1);
}