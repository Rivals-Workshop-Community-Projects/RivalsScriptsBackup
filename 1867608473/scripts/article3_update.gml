depth = player_id.depth - 1
if (my_attack != player_id.attack || (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR)) {
	instance_destroy(self)
}