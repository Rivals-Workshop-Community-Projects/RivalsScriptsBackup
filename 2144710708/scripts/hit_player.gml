//hit player

var hitmove = my_hitboxID.attack;

// abyss rune
// gain hype meter upon hitting enemies (100 is max)
if (gimmick_activated == true) {
	if (hype_active == false) {
		if (hype < hype_max) {
			var hypeadd = my_hitboxID.damage;
			hype = hype + hypeadd;
		} 
		
		// cant be above hype_max
		if (hype > hype_max) {
			hype = hype_max;
		}
	}
}

/*
if (hitmove = AT_DAIR) {
	sound_play(asset_get("sfx_blow_heavy2"));
}
*/


if (hitmove == AT_NSPECIAL) {
	sound_play(asset_get("sfx_blow_weak2"));
}

// steve support
if (hitmove == AT_FTILT || hitmove == AT_UTILT || hitmove == AT_DTILT || hitmove == AT_USTRONG || hitmove == AT_DSTRONG || hitmove == AT_USTRONG || hitmove == AT_NAIR || hitmove == AT_FAIR || hitmove == AT_BAIR || hitmove == AT_DAIR || hitmove == AT_UTHROW || hitmove == AT_FSTRONG) {	
	steve_death_message = "owen killed Steve using weapon_crowbar."
}
else if (hitmove == AT_DATTACK || hitmove == AT_UAIR) {
	steve_death_message = "owen killed Steve using swep_legs."
}
else if (hitmove == AT_USPECIAL) {
	steve_death_message = "owen killed Steve using weapon_gauss."
}
else if (hitmove == AT_FSPECIAL) {
	steve_death_message = "owen killed Steve using weapon_physcannon."
}
else if (hitmove == AT_DSPECIAL) {
	steve_death_message = "owen killed Steve using prop_physics."
}
else if (hitmove == AT_NSPECIAL) {
	steve_death_message = "owen killed Steve using weapon_smg1."
}
else if (hitmove == AT_DSTRONG_2) {
	steve_death_message = "owen killed Steve using grenade_ar2."
}
else if (hitmove == AT_TAUNT) {
	steve_death_message = "owen killed Steve using swep_mew."
}
else if (hitmove == AT_JAB) { // troled
	steve_death_message = "owen killed Steve using weapon_crowbar."
}
else {
	steve_death_message = "owen killed Steve using %weaponname%.";	
}


