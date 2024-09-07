//got_parried
if (my_hitboxID.attack == AT_DAIR) {
	if my_hitboxID.hbox_num == 1 {
		my_hitboxID.hitbox_timer = 1;
		my_hitboxID.grav = .2;
		my_hitboxID.no_other_hit = 1;
		my_hitboxID.can_tech = 1;
	}

	if my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 {
		my_hitboxID.hitbox_timer = 0;
		my_hitboxID.length += 30;
		my_hitboxID.grav = 0;
		my_hitboxID.grounds = 1;
		my_hitboxID.walls = 1;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
		my_hitboxID.hitbox_timer = 1;
			
		var angle = point_direction(my_hitboxID.x, my_hitboxID.y, x, y+10);
		my_hitboxID.hsp = lengthdir_x(12, angle)*-my_hitboxID.spr_dir;
		my_hitboxID.vsp = -lengthdir_y(12, angle);
	
}
		
if (my_hitboxID.attack == AT_NSPECIAL) {
	if my_hitboxID.hbox_num == 1 {
		my_hitboxID.hitbox_timer = 1;
		my_hitboxID.hsp += 5*my_hitboxID.spr_dir;
	}
}

if (my_hitboxID.attack == AT_EXTRA_2) {
	my_hitboxID.hitbox_timer = 1;
	my_hitboxID.hsp = 7*my_hitboxID.spr_dir;
}
		
if (my_hitboxID.attack == AT_DATTACK) {
	window = 4;
}