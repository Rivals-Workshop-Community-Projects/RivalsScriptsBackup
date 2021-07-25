init_shader();

if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	char_height = 64
}

if plantCooldown > 0 {
	plantCooldown -= 1
}

if plantSun >= 3 {
	if plant[0] != -4 {
		if (plant[0].plantState == 2) {
			sunflowerAttack = 1
		}
	}
	plantSun = 3
} else {
	if plant[0] != -4 {
		if (plant[0].plantState == 2) {
			sunflowerAttack = 0
		}
	}
}
/*
if get_gameplay_time() % 5 = 0 {
set_player_damage(player, get_player_damage(player) + 1)
}
*/
