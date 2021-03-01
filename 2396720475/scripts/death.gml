// death.gml
// Runs when the player dies

// resets all cooldowns
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_USPECIAL] = 0;

zipping = false;
zip_hit = false;
can_zoop = false;

usedFspecial = false;
usedUspecial = false;
usedUspecial_Again = 0;
chargedash = 0;


if (instance_exists(needleplatform)){
	instance_destroy(needleplatform);
}