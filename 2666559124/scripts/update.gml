//update
if (!free && move_cooldown[AT_DAIR] >= 0){
	move_cooldown[AT_DAIR] = 0;
}

if state == (PS_WALL_JUMP || PS_WALL_TECH) {
	move_cooldown[AT_DAIR] = 0;
}

if (free) {
	move_cooldown[AT_FSPECIAL] = 2;
}
