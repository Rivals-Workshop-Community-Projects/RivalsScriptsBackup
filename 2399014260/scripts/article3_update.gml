if !has_inited{
	hsp = -4 * spr_dir;
	vsp = -4;
	
	has_inited = 1;
}

else{
	vsp += ((abs(vsp ) < 2) ? 0.25 : 0.5);
	hsp -= ((abs(vsp ) < 2) ? 0.025 : 0.05) * sign(hsp);
	image_angle -= 2 * point_distance(0, 0, hsp, vsp);
}



if y > room_height + 1000{
	instance_destroy();
	exit;
}