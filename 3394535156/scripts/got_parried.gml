// got_parried.gml


charged_nspecial_timer = 0;
charging_nspecial_buffer = false

// do stuff here
switch (my_hitboxID.attack) {
	case AT_NSPECIAL:
		if my_hitboxID.hbox_num == 1 {
			var dir = point_direction(x, y - floor(char_height/2), my_hitboxID.x, my_hitboxID.y)
			var spd = 20;
			my_hitboxID.hsp = lengthdir_x(spd, dir);
			my_hitboxID.vsp = lengthdir_y(spd, dir);
			my_hitboxID.can_hit_self = true;
			my_hitboxID.hitbox_timer = 0;
		}
	break;
}