
// if this ai is recovering, is close enough to a wall, and has rocket ammo,
// start rocket jumping up the wall
if (ai_recovering) {
	if (place_meeting(x + 5, y, asset_get("par_block"))) || (place_meeting(x - 5, y, asset_get("par_block"))) {
		
		if (rockets_clip > 0) {
			attack = AT_DSTRONG;
		}
		
	}
}