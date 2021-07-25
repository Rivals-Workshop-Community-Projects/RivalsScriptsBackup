if attack == AT_TAUNT {
	set_victory_theme(sound_get("birdup"));
} else {
	set_victory_theme(sound_get("victory"));
}


if (attack == AT_USPECIAL && free && move_cooldown[attack] == 0) {
    // if (USPECIAL_VERTICAL_COUNT < 3) {
    //     var boost = USPECIAL_VERTICAL_BOOST[USPECIAL_VERTICAL_COUNT];
    //     vsp = boost;

    //     USPECIAL_VERTICAL_COUNT++;
    // }

    vsp = USPECIAL_VERTICAL_BOOST[0];
}
if attack == AT_NSPECIAL {
	if nspecial_active {
		window = 3;
	}
}

if attack == AT_FSPECIAL {
	glide_used++;
}