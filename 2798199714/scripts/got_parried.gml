// got_parried


if(my_hitboxID.attack == AT_NSPECIAL){
	var angle3 = point_direction(my_hitboxID.x, my_hitboxID.y, x, y - 30);
	my_hitboxID.hsp = lengthdir_x(-24, angle3);
    my_hitboxID.vsp = lengthdir_y(-24, angle3);
	my_hitboxID.transcendent = true;my_hitboxID.damage *= 2;
}

if(instance_exists(time_rift)){
	time_rift.state = 5;time_rift.timer = 0;
}