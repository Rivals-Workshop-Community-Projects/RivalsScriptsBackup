if my_hitboxID.attack == AT_EXTRA_1 {
	var spd = 18;
	my_hitboxID.planet.parrytime = 60;
	var dir = point_direction(my_hitboxID.planet.x,my_hitboxID.planet.y,x,y);
	my_hitboxID.planet.vsp = lengthdir_y(spd, dir)
	my_hitboxID.planet.hsp = lengthdir_x(spd, dir)
	my_hitboxID.planet.gravity_amount = 1;
	my_hitboxID.planet.gravity_friction = 0;
	my_hitboxID.planet.gravity_speed = spd;
//	my_hitboxID.planet.cooldown = 60;
}