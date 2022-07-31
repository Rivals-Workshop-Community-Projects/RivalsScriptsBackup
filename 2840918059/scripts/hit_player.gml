//Ice Clone Gauge
var hitmove = my_hitboxID.attack;

if(GAUGE_CURRENT < GAUGE_MAX) {
	if (hitmove == AT_FSTRONG) {
		GAUGE_CURRENT += 2;
}
	if (hitmove == AT_FAIR || hitmove == AT_DAIR || hitmove == AT_DSTRONG) {
		GAUGE_CURRENT += 1;

}

//Nspecial Charged Hits
	if (hitmove == AT_NSPECIAL && hit_player_obj.hitstop == 6){
	GAUGE_CURRENT += 1;

}
	if (hitmove == AT_NSPECIAL && hit_player_obj.hitstop == 8){
	GAUGE_CURRENT += 3;

}
	else if (hitmove != AT_FSTRONG || hitmove != AT_FAIR || hitmove != AT_DAIR || hitmove != AT_DSTRONG) {
		GAUGE_CURRENT += 1;

}
	if (GAUGE_CURRENT > GAUGE_MAX) { GAUGE_CURRENT = GAUGE_MAX; }

}	


//Fatality Effect On KO Moves
if (hit_player_obj.should_make_shockwave && hit_player_obj.old_hsp > 19 && spr_dir == 1){
	var fx = spawn_hit_fx(x, y-100, fatality)
	fx.depth = -10
}

if (hit_player_obj.should_make_shockwave && hit_player_obj.old_hsp < -19 && spr_dir == -1){
	var fx = spawn_hit_fx(x, y-100, fatality2)
	fx.depth = -10
}

if (hit_player_obj.should_make_shockwave && hit_player_obj.old_hsp < -19 && spr_dir == 1){
	var fx = spawn_hit_fx(x, y-100, fatality)
	fx.depth = -10
}

if (hit_player_obj.should_make_shockwave && hit_player_obj.old_hsp > 19 && spr_dir == -1){
	var fx = spawn_hit_fx(x, y-100, fatality2)
	fx.depth = -10
}



if (hit_player_obj.should_make_shockwave && hit_player_obj.old_vsp > 27 && spr_dir == 1){
	var fx = spawn_hit_fx(x, y-100, fatality)
	fx.depth = -10
}

if (hit_player_obj.should_make_shockwave && hit_player_obj.old_vsp < -27 && spr_dir == -1){
	var fx = spawn_hit_fx(x, y-100, fatality2)
	fx.depth = -10
}

if (hit_player_obj.should_make_shockwave && hit_player_obj.old_vsp < -27 && spr_dir == 1){
	var fx = spawn_hit_fx(x, y-100, fatality)
	fx.depth = -10
}

if (hit_player_obj.should_make_shockwave && hit_player_obj.old_vsp > 27 && spr_dir == -1){
	var fx = spawn_hit_fx(x, y-100, fatality2)
	fx.depth = -10
}


    



