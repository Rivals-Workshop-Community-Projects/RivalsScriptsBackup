//artucle2 update

if (discarded){
	instance_destroy();
	exit;
}else if ( place_meeting(x, y, asset_get ("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough")) ){
	player_id.grounddetected = true;
	//print("ground detected!")
}