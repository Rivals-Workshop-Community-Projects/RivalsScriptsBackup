if my_hitboxID.attack = AT_DSPECIAL && clone_pl != self{
	venus.state = 8;
	venus.timer = 0;
	move_cooldown[AT_DSPECIAL] = 200;
	exit;
}

if clone_pl == self{
	if main_pl.state = PS_ATTACK_GROUND || main_pl.state == PS_ATTACK_AIR main_pl.was_parried = 1;
	else with main_pl{
		set_state(PS_PRATLAND);
		parry_lag = 40;
	}
	if !special_state should_die = 1;
}