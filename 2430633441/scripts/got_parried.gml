if my_hitboxID.attack == AT_EXTRA_1 {
	
	var spd = 18;
	for (var i = 0; i < maxplanets; i++) {
	if !planet[i].active continue;
	planet[i].parrytime = 60;
	planet[i].cooldown = 60;
	var dir = point_direction(planet[i].x,planet[i].y,x,y);
	planet[i].vsp = lengthdir_y(spd, dir)
	planet[i].hsp = lengthdir_x(spd, dir)
	planet[i].gravity_amount = 0;
	planet[i].gravity_friction = 0;
	planet[i].gravity_speed = spd;
	}
//	planet[i].cooldown = 60;
}