//Notes!

var const = 1.05946309436; //12th root of 2; important music constant

if !is_array(note_not) note_not = [note_not];

for (var i = 0; i < array_length_1d(note_not); i++){
	
	//Extract sharps
	
	var cur = (note_not[i] > 0) ? floor(note_not[i]) : floor(note_not[i]);
	
	var sharp = sign(note_not[i] - cur); //if decimal, sharp
	
	
	//Convert high/low numbers to octaves
	
	var temp_oct = note_oct;
	var tot = 12; //notes in octave
	switch(note_sca){
		case 1:
		case 2:
			tot = 7;
			break;
	}
	
	while(cur > tot){
		cur -= tot;
		temp_oct++;
	}
	
	while (cur < 1){
		cur += tot;
		temp_oct--;
	}
	
	
	
	//Handle any whole-steps in the current scale
	
	var skips = []; //intervals that take two half-steps to reach
	var wholes = 0; //amount added bc of this step
	
	switch(note_sca){
		case 0: //chromatic
			break;
		case 1: //major
			skips = [2, 3, 5, 6, 7];
			break;
		case 2: //minor
			skips = [2, 4, 5, 7];
			break;
	}
	
	if !array_equals(skips, []) for (var j = 0; j < array_length_1d(skips); j++){
		if cur >= skips[j]{
			wholes++;
		}
	}
	
	
	
	//Tally half-steps

	var notes_up = 12 * temp_oct;
	
	notes_up += cur - 1;
	notes_up += sharp * (1 + (false));
	notes_up += wholes;
	notes_up += note_key;
	
	
	
	//Set pitch, play sound
	
	var pitch = 1;
	
	pitch = pitch * power(const, notes_up);
	
	sound_play(note_sfx, false, noone, note_vol, pitch);
	
}