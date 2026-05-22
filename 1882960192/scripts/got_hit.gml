//got_hit

if attack == AT_USPECIAL {
	destroy_hitboxes();
}

with (asset_get("pHitBox")) {
	if (player_id == other.id && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) {
        destroyed = true;
    }
}

if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL {
		wblastcharge = 0;
}