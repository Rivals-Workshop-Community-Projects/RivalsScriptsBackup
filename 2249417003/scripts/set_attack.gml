//set_attack.gml

if (attack != AT_DSPECIAL && ralsei_heart_active) {
	ralsei_heart_active = false;
	has_airdodge = (!free || ralsei_heart_has_airdodge_before_activating);
	sound_play(sound_get("dr_powerup"), 0, noone, 0.5, 1);
	hitpause = true;
	old_hsp = hsp;
	old_vsp = vsp;
	hitstop = max(hitstop, 1);
	
}

switch (attack) {
	case AT_NSPECIAL:
		if (move_cooldown[AT_NSPECIAL] <= 0 && ralsei_nspec_ammo <= 0) window = 5;
	break;
	case AT_USPECIAL:
		if (!free) attack = AT_USPECIAL_GROUND;
	break;
	case AT_FSPECIAL:
		if (free && move_cooldown[AT_FSPECIAL] <= 0) attack = AT_FSPECIAL_AIR;
	break;
}


