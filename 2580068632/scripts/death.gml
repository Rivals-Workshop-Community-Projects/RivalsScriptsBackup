//death.gml

wings_out = false;

if (voiced == true){
	var deathVC = random_func( 1, 3, true ) + 1;
	if (deathVC == 1){
		sound_play(vc_mk_death_1);
	} else if (deathVC == 2){
		sound_play(vc_mk_death_2);
	} else if (deathVC == 3){
		sound_play(vc_mk_death_3);
	}
}