//update

// Prevent player from placing bombs in the air
if (free && move_cooldown[AT_DSPECIAL] <= 2) {
	move_cooldown[AT_DSPECIAL] = 2;
}
