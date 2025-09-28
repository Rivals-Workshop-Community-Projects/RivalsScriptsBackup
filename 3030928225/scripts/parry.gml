//parry.gml
//This script runs when the player parries an attack
if (va_mode_active) {
	play_va_line("parry_landed", 2, 100, 1);
}

// All voice lines start with va_, and will randomize between num_options
// Chance is 0 - 100 % chance of playing the line at all
// Volume needs to be between 0 and 1
#define play_va_line(va_line, num_options, chance, volume)
playing_stance_line = false;
curr_va_line_must_play_fully = false;
var roll = random_func(13, 100, false);
if (roll < chance) {
	if (curr_va_line != noone) {
		sound_stop(curr_va_line);
	}
	if (num_options > 1) {
		var choice = random_func(14, num_options, true);
		curr_va_line = sound_play(sound_get("va_" + va_line + string(choice + 1)), false /*looping*/, noone /*panning*/, volume/*volume*/, 1/*pitch*/);
	} else {
		curr_va_line = sound_play(sound_get("va_" + va_line), false /*looping*/, noone /*panning*/, volume/*volume*/, 1/*pitch*/);
	}
}