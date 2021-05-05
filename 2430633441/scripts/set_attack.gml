if waveland_cancel {
	hsp = 0;
	print_debug("cancelled")
}
//print_debug(string(prev_state))
print_debug("uspecial used is "+string(uspecial_used)+" "+string(prev_state)+" "+string(prev_prev_state))
if uspecial_used {
	if free {
		vsp = min(vsp, -3)
		print_debug("cancelled air");
	} else {
		vsp = 1;
		print_debug("cancelled ground");
	}
}

if attack == AT_USPECIAL && instance_exists(sun_ins) {
	sun_ins.time = max(sun_ins.time, 2)
	attack = AT_USPECIAL_2;
	uspecial_used = 1;
} else {
uspecial_used = 0;
}
tossed_planet = -1;

/*if attack == AT_USPECIAL {
	starsleft = max_stars;
	star_dir = 90;
	minstar = max_stars;
	maxstar = -1;
	
	uspecial_repeat = 0;
	uspecial_dir = 90;
}
*/
/*
if is_special_pressed(DIR_NONE) {
	attack = AT_EXTRA_3;
}
*/
if attack == AT_USPECIAL_2 {
	times_through = 1;
}
grabbing = 0;
grab_ids = array_create(0);
print_debug(string(y))
if attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] {
	attack = AT_NSPECIAL_2
}
planet_can_hit = array_create(20, 1)
dair = 0;
/*if attack == AT_USPECIAL && (left_down or right_down) {
	var ok = 0;
	for (i = 0; i < 3; i++) {
		if planet[i].orbiting && planet[i].owner == id ok = 1;
	}
	if ok attack = AT_FSPECIAL;
}


