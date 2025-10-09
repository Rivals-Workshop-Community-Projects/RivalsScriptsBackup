//
/*
if ("delay" in self && delay) {
	delay--;
	visible = false;
	x = player_owner.x;
	y = player_owner.y;
	exit;
}
*/
visible = true;
life--;
if (!life) { 
	instance_destroy(self) 
}