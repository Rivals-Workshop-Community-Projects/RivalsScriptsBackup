if (phone_cheats[CHEAT_PERSIST] % 2 == 0) {
	if (revengeBuffer < 0) {
		revengeMult -= 0.1;
	} else {
		revengeBuffer -= 10;
	}
}
if (!has_rune("H")) {
    revengeMult = clamp(revengeMult, 1, 4);
} else {
    if (revengeMult < 1) {
        revengeMult = 1;
    }
}

if  (prev_state != PS_SPAWN) {
	muno_event_type = 2;
	user_event(14);
}