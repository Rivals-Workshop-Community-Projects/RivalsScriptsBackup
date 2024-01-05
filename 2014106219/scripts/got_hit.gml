//got_hit

if attack == AT_USPECIAL {
	destroy_hitboxes();
}


if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL {
		wblastcharge = 0;
}