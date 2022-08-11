//
with( obj_stage_main ){
	var player_die = obj_stage_main.player_die;
}
if player_die == 1 && oPlayer.hitpause == false{
	if time < 30{
	time += 1;
	trans = 1;
	} else { trans = 0; mode = !mode; time = 0; player_die = 0; }
}