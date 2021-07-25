// called when the character gets KO'd

bofa = false;
chungus = false;
dennis = 0;
randomFunny = random_func(0, 12, true);

if randomFunny > 7 {
	sound_play(sound_get("bruh"));
} else if randomFunny > 4 {
	sound_play(sound_get("keyboardbreak"));
} else {
	sound_play(sound_get("yodadies"));
}