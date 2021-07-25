//got_hit
if runeK and !runeL{
	take_damage( player, -1, floor(enemy_hitboxID.damage/-2) )
	stagger += floor(enemy_hitboxID.damage/2)
}
if runeL {
	if runeK {
		take_damage( player, -1, floor(enemy_hitboxID.damage) )
		stagger += floor(enemy_hitboxID.damage)
	}
	else {
		take_damage( player, enemy_hitboxID.player, enemy_hitboxID.damage )
	}
}