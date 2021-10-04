//parry.gml

if (enemy_hitboxID.type == 1 || enemy_hitboxID.type == 2)
{
	mp_current += 25;

	if (has_rune("O")) od_current += 10;

	mp_gain_hit = 25;

	if (show_player_info)
	{
		show_miniMP = true;
		miniMP_time = miniMP_attack;
		miniMP_alpha = 1;
	}
		
	if (mp_current >= mp_max && !has_rune("K")) mp_current = mp_max;
	else if (mp_current >= runeK_mp_max && has_rune("K")) mp_current = runeK_mp_max;
}

if (theikos && mp_current == mp_max) take_damage(player, player, -50);