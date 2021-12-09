// death.gml
// Runs when the player dies

with (oPlayer){
	if ("mimikyu_curse" in self){
		mimikyu_curse_tick = 0;
		mimikyu_curse = false;
	}
}


if (mim_wisp != noone && instance_exists(mim_wisp)){
	mim_wisp.state = 6;
	mim_wisp.cooldown_timer = 10;
	mim_wisp.active = false;
}

move_cooldown[AT_DSPECIAL] = 0;
move_cooldown[AT_DSPECIAL_2] = 0;
move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;

fspec_per_air = 2;
fspec_flip = false;

uspec_per_air = 2;
uspec_flip = false;
