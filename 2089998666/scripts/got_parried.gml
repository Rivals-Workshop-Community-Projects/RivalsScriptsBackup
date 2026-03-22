//got_parried

if (my_hitboxID.attack == AT_FSPECIAL) {
	if (my_hitboxID.hbox_num == 1) {
		my_hitboxID.angle = point_direction(my_hitboxID.x, my_hitboxID.y, x, y-32);	
		my_hitboxID.eggBounce = 3;
		my_hitboxID.hitbox_timer = 0;
	}
	if (my_hitboxID.hbox_num == 2) {
		my_hitboxID.hitbox_timer = 0;
	}
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if (my_hitboxID.hbox_num == 1) {
		my_hitboxID.hitbox_timer = my_hitboxID.length;
		tongueOutcome = 0;
	}
}



if (my_hitboxID.attack == AT_DSPECIAL) {

    my_hitboxID.y -= 4;
    var dir = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 42);
    my_hitboxID.hsp = -lengthdir_x(14, dir);
    my_hitboxID.vsp = lengthdir_y(14, dir);
}