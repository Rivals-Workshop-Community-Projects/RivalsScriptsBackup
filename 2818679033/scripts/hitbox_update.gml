if attack == AT_NSPECIAL {
    with (oPlayer) if (id != other.id) {
        var is_in_galaxy = (state_cat == SC_HITSTUN && activated_kill_effect)
	    other.can_hit[player] = !activated_kill_effect
    }
}