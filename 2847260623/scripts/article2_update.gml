//
with( obj_stage_main ){
	var player_die = obj_stage_main.player_die
}
if player_die == 1 && oPlayer.hitpause == false{
	if time < 30{
	time += 1;
	} else { mode = !mode; time = 0; player_die = 0; }
}

move_x += round(x_speed)/4;
x += round(x_speed)/4;

if (x_speed > 0){
	if x == 0 { instance_create( x - room_width/4, y, "obj_stage_article", 2); }
	if x >= room_width/4 { instance_destroy(); }
}
if (x_speed < 0){
	if x == room_width/2 {instance_create( room_width/2, y, "obj_stage_article", 2); }
	if x <= room_width/4 { instance_destroy(); }
}

//(x_speed * abs(x_speed))