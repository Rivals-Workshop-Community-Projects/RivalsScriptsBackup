if guitar.chord_juice{
	guitar.chord_juice -= enemy_hitboxID.damage * 5;
	guitar.chord_juice = max(guitar.chord_juice, 0);
}

can_uspecial_bounce = true;

take_damage(player, enemy_hitboxID.player, round(enemy_hitboxID.damage * (dtaken_multiplier - 1)));