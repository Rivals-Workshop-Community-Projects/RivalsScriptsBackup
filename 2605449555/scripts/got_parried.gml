//got_hit.gml

if (HeatLevel > 2) {
	HeatLevel -= 2;
} else {
	HeatLevel = 0;
}

if (my_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.player_id != id && my_hitboxID.hbox_num = 3) {
	CannBallParry = true;
}