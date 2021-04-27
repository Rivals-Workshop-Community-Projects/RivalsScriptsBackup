if free{
	used_fspecial = false;
}
if can_swift = true{
	if (attack == AT_DSPECIAL) {
		if (window == 2) {
			window = 4;
			window_timer = 0;
			take_damage(player, -1, -(enemy_hitboxID.damage));
			user_event(0);
		}
	}
}