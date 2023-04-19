with (enemy_hitboxID) {
	other.hitbox_damage = damage;
}

if(curr_materia == 2){
	if (hitbox_damage > 3) {
take_damage(player, hit_player_obj.player, -2);	
}
}

if(curr_materia == 1){
take_damage(player, hit_player_obj.player, 2);		
}

if(curr_materia > 0){
	if(materia_currhp > 0){
	with (enemy_hitboxID) {
	other.materia_currhp -= damage;
}	
	}
}