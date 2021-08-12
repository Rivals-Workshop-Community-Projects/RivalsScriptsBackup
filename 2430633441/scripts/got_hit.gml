if has_rune("M") {
		for (var i = maxplanets-1; i >= 0; i--) {
			if planet[i].orbiting == 1 && planet[i].owner == id break;
		}
		//print_debug("planet found is "+string(i))
		if i >= 0 {
			var ang = point_direction(0,0,old_hsp,old_vsp)
			planet[i].orbiting = 0;
			planet[i].time = 0;
			planet[i].shot_time = 50;
			planet[i].gravity_time = 90;
			planet[i].active = false
			planet[i].hsp = lengthdir_x(orig_knock*1.5, ang);
			planet[i].vsp = lengthdir_y(orig_knock*1.5, ang);
			planet[i].parrytime = 3*60;
					planet[i].cooldown = 15;
			orig_knock *= 0.5;
		}
}

if attack == AT_USPECIAL_2 && super_armor {
	times_through--;

}
/*
if enemy_hitboxID.orig_player == player && enemy_hitboxID.was_parried && enemy_hitboxID.attack == AT_EXTRA_1 {

}