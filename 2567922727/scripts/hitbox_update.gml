if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}


if (attack == AT_DSPECIAL and get_gameplay_time() % 70 == 0)
{  for(var p = 0; p < array_length(can_hit); p++) 
	{ can_hit[p] = true; }}