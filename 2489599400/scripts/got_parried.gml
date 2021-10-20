// got_parried.gml

if (my_hitboxID.attack == AT_FSPECIAL) {
	rolltime = 25;
}

if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 3) {
	destroyed = true;
}