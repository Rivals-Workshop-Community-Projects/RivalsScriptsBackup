if ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && strong_max == true){
	strong_max = false;
	strong_max_cont = 0;
}

if (attack == AT_DSPECIAL && (window == 2 || window == 3 || window == 4) && (clone_alive == false || (runeE || has_rune("E")))){
//	spawn_hit_fx( x, y, 13);
	take_damage(player, hit_player_obj.player, -floor( enemy_hitboxID.damage * 1));
	counter = true;
}

if (move_cooldown[AT_NSPECIAL] > 0){
	if (enemy_hitboxID.damage >= 1 && enemy_hitboxID.damage <= 4){
		move_cooldown[AT_NSPECIAL] += 50;
	}
	if (enemy_hitboxID.damage >= 5 && enemy_hitboxID.damage <= 8){
		move_cooldown[AT_NSPECIAL] += 80;
	}
	if (enemy_hitboxID.damage >= 9 && enemy_hitboxID.damage <= 12){
		move_cooldown[AT_NSPECIAL] += 120;
	}
	if (enemy_hitboxID.damage >= 13){
		move_cooldown[AT_NSPECIAL] += 150;
	}
}


