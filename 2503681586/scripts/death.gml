//
if !is_nana {
	spawnClown = 1
	nanaDamage = 0
	army.nana_state = 5
	army.clownState = 0
	if army.state != PS_RESPAWN {
		army.state = PS_IDLE
	}
} else {
	if "is_bubble" !in self {
		army_leader.clownfishDeadHealth = get_player_damage(player)
		set_player_stocks( player, get_player_stocks( player ) + 1 )
		nana_state = 6
		custom_clone = false
	}
}