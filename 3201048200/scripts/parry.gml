
// DSpecial: in the off chance you parry the opponent, play the stinger
if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG) {
    
    if (hit_player != player) {
        sound_play(sound_get("sfx_perry_stinger"), 0, 0, 1.5);
		stinger_cooldown = 110;
    }
    
}

// Normal parry: small proc chance
else if (random_func(player, 1, false) < 0.1) {
    sound_play(sound_get("sfx_perry_stinger"), 0, 0, 1.5);
	stinger_cooldown = 110;
}