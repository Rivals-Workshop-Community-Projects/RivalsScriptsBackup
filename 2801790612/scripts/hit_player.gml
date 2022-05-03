// code for kamehameha
//sound_play(sfx_pepsiman);

if (my_hitboxID.attack == AT_FSPECIAL) {
	hit_fspecial = true;
}

if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1) {
	sound_play(sfx_pepsi_screech);
}

//if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 5) {
//	sound_play(sfx_pepsi_screech);
//}

if (my_hitboxID.attack != AT_FSPECIAL){
	var timer_set = 0;
	switch(my_hitboxID.attack){
		case AT_NAIR:
		case AT_FAIR:
		case AT_DAIR:
		case AT_BAIR:
		case AT_UAIR:
		case AT_JAB:
		case AT_FTILT:
		case AT_UTILT:
		case AT_DTILT:
			timer_set = get_window_value(my_hitboxID.attack, 2, AG_WINDOW_LENGTH) + get_window_value(my_hitboxID.attack, 3, AG_WINDOW_LENGTH);
			break;
	}
	fspecial_timer = timer_set;
}

//General hit stuff for lazy combo system
var prev_mod = pepsi_meter % 25;
if (combo < 5) {
	combo += 1;
}
combo_timer = combo_time;
if (pepsi_meter < 100) {
	pepsi_meter += combo + 1;
}
if (pepsi_meter > 100) pepsi_meter = 100;


//pepsi_meter += 1;
var curr_mod = pepsi_meter % 25;

if (curr_mod < prev_mod) {
	sound_play(sfx_pepsi_can)
}