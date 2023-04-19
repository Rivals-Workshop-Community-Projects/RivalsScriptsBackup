vsp += grav;
if air_timer {
	air_timer -= 1;
}

if place_meeting(x, y, asset_get("par_block")) && !air_timer {
	//print("sand kill")
	instance_destroy(self);
}