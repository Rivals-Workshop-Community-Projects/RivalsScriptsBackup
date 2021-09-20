if (attack == AT_DSPECIAL && hbox_num == 1) {
	with (oPlayer) {
		if (player != other.player_id.revengeTarget) {
			other.can_hit[player] = false;
		}
	}
}