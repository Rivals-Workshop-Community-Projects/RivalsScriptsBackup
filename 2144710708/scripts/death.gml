// death

// refill ammo upon death
ammo = maxammo;
bomb_ammo = bomb_maxammo;

// mark nspecial as inactive upon death
nspecial_active = false;

// resets nametag height if you die during taunt... how?????
// did a floating platform carry you off the map?
// also resets air accel status
char_height = 52;

// resets cooldowns for fspecial and uspecial upon death.
// this is a weird edge case...
move_cooldown[AT_USPECIAL] = 1;	
move_cooldown[AT_FSPECIAL] = 1;	

// halves your hype when you die while it's inactive (abyss rune)
if (hype_active == false) {
	hype = hype / 2;
}

// removes all hype when you die while it's active (abyss rune)
if (hype_active == true) {
	hype_disable_override = true;
}