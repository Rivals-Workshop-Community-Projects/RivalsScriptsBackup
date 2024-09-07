//parry
randomFunny = random_func(0, 12, true);

if randomFunny > 3 {
sound_play(sound_get("dripgoku"));
} else {
sound_play(sound_get("blocked"));
}

if enemy_hitboxID.player_id == id {
	if (my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_FSPECIAL) {
		my_hitboxID.destroyed = true;
	}
}