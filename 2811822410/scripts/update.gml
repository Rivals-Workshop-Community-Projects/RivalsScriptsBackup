//
/*
if (state == PS_ROLL_FORWARD) {
	if (roll_dir == spr_dir) {
		state = PS_ROLL_BACKWARD;
	}
} else {
	roll_dir = spr_dir;
}
print(spr_dir)
print(joy_dir);
print(old_hsp);
print(hsp);
*/

//print(window);

if (!free || state == PS_WALL_JUMP) {
	move_cooldown[AT_USPECIAL] = 0;
}

//Scanned
with oPlayer {
	//print(scanned);
	if (scanned && scanned_id == other) {
		scanned--;
	}
	if (state == PS_RESPAWN) {
		scanned = false;
	}
}