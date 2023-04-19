//got_hit.gml
if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1) {
	FlytrapID.strongLag += 60;
} else {
	FlytrapID.killNow = true;
}
