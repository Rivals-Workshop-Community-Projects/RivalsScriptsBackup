//
//if(strong_down and strong_buffer <= 0 and !strong_was_pressed){
//	strong_buffer = 6;
//	strong_pressed = true;
//	strong_was_pressed = true;
//} else if(!strong_down){
//	strong_was_pressed = false;
//} else if (strong_buffer > 0){
//	strong_buffer--;
//	if(strong_buffer <= 0){
//		strong_pressed = false;
//	}
//}
//Miku Trailer

/*
with oPlayer {
	if (player != other.player && !other.custom_clone) {
		attack = other.attack;
		window = 1;
		window_timer = 0;
		state = other.state;
	}
}
*/

if ("rune_a" in self && rune_a) { //Rune bair spins longer
	bair_spins = 10;
} else {
	bair_spins = 1;
}

dtilts = dtilts_max;
//test_var = false;

uspecial_loop = uspecial_loop_max;
uspecial_has_pratfall = false;

nspec_hold = 45;

switch(attack) {
	case AT_NSPECIAL:
		if (free) {
			attack = AT_NSPECIAL_AIR;
		}
	break;
}	

ftilt_hit = [0, 0, 0, 0, 0];