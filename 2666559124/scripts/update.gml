//update
if (!free && move_cooldown[AT_DAIR] >= 0){
	move_cooldown[AT_DAIR] = 0;
}
if state == (PS_WALL_JUMP or PS_WALL_TECH) {
	move_cooldown[AT_DAIR] = 0;
}
