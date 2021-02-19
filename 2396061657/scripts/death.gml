// death.gml
// Runs when the player dies

// Clears all LoveMeters
for (var i = 0; i < 3; i++) {
	LoveMeter[i] = 0;
}

// resets all cooldowns
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;