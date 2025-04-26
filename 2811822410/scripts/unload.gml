//
if (pipe_strong_was_last) {
	set_victory_theme( sound_get( "pipe_victory" ));
}

if (
	(current_day == 14 && current_month == 6) || //My Birthday
	(current_day == 31 && current_month == 8) //Miku Birthday
) {
	set_victory_theme( sound_get( "birthday" ));
}

//Feliz Navidad
if (
	(current_month == 12) && (current_day == 24 || current_day == 25) 
) {
	set_victory_theme( sound_get( "feliznavidad" ));
}