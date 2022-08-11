//
with( obj_stage_main ){
	var player_die = obj_stage_main.player_die
}
if player_die == 1 && oPlayer.hitpause == false{
	if time < 30{
	time += 1;
	} else { mode = !mode; time = 0; player_die = 0; }
}

if glow < 1{
	glow_timer++;
	glow_timer = (glow_timer+1) mod 360;
}