if(attack == AT_DSPECIAL && window == 2){
	attack_invince = true;
	//take_damage(player,-1,-enemy_hitboxID.damage); //Remove enemy damage during counter
	
	set_player_damage(player, counter_heal);
	
	
	
	slTimer += enemy_hitboxID.damage * 12;
	set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1.5* enemy_hitboxID.damage)
	
	if(enemy_hitboxID.type == 1){
		hit_player_obj.hitpause = true
		hit_player_obj.hitstop += 4 * enemy_hitboxID.damage;
		
		hitpause = true
		hitstop += 10 + 1 * enemy_hitboxID.damage;
	}
	
	window = 4;
	window_timer = 0;
}



slTimer += 0 * enemy_hitboxID.damage * (slActive?-1:0);

fspec_airgrab = false;
fspec_id = -1;