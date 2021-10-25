// death.gml
// Runs when the player dies

LoveMeter = 0;
got_hitFspecial = false;

// resets all cooldowns
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;