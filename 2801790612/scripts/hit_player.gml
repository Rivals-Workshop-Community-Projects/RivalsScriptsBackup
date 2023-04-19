var hit_att = my_hitboxID.attack;
var hit_num = my_hitboxID.hbox_num;
var dmg_done = my_hitboxID.damage;

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


// Pepsi Meter Gain
var prev_mod = pepsi_meter % 25;

if (hit_att == AT_NSPECIAL) {
	if (hit_num == 1) pepsi_meter += 6;
	if (hit_num == 2) pepsi_meter += 12;
	if (hit_num == 3) pepsi_meter += 25;
}
else {
	var base_gain = floor(dmg_done / 2)
	if (base_gain == 0) base_gain = 1;
	pepsi_meter += base_gain + combo;
}


//General Pepsi gain

//if (combo < 5) {
//	combo += 1;
//}
//combo_timer = combo_time;
//if (pepsi_meter < 100) {
//	//pepsi_meter += combo + 2;
//	var base_gain = floor(dmg_done / 2)
//	if (base_gain == 0) base_gain = 1;
//	pepsi_meter += base_gain + combo;
//}
if (pepsi_meter > 100) pepsi_meter = 100;

var curr_mod = pepsi_meter % 25;

if (curr_mod < prev_mod) {
	sound_play(sfx_pepsi_can)
}