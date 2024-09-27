//artucle2 update

y+=2;
	//spawn_hit_fx(x, y, 108)

if (discarded){
	instance_destroy();
	exit;
}else if ( place_meeting(x, y, asset_get ("par_block")) ){
	player_id.cloud_y_limit = y;
	//print(string(id)+"yea i see the ground. :"+string(y));
	//spawn_hit_fx(x, y, 111)
	instance_destroy();
	exit;
}else if (timer==300){
	instance_destroy();
	exit;
}

timer++;