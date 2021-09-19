// called when the character gets KO'd

if (last_player_hit_me!=0){
	sound_play(sound_get("dying"))
	var deaded = instance_create(e_previ_x, e_previ_y, "obj_article1");
	deaded.particle_type = 2;
	deaded.state_end = 120;
	deaded.hsp = clamp(e_prev_hsp*-1,-6,6);
	deaded.vsp = (e_prev_hsp/-3)-18;
	//print(string(e_previ_x)+", y"+string(e_previ_y))
}else{
	sound_play(sound_get("falling_death"))
}
boost_left = boost_max;
if (boostinit){boostinit = false; boostinit_timer = 0;}
if (boost_duration){boost_duration = 0; boost_selected = 0;}
nsp_remain = 3;
nair_count_before_land = 0;
