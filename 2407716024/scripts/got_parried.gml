//got parried 
with (my_hitboxID) {
	if(attack == AT_FTILT){
	hitbox_timer = 0;
	hsp *= 1.5;
	draw_xscale *= -1;
	}
}

with (my_hitboxID) {
	if(attack == AT_FSPECIAL){
	hitbox_timer = 0;
	hsp *= 1.5;
	draw_xscale *= -1;
	}
}