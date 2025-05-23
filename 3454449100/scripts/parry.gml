// parry.gml

//print(hit_player)
//print(player)

// prevents koopa from getting invincibility from parrying their own parried koopa shell
if (instance_exists(currKoopaShell)){
	//print(enemy_hitboxID.attack == AT_NSPECIAL)
	
	if (enemy_hitboxID.attack == AT_NSPECIAL || enemy_hitboxID.player_id == player){
		
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
	
		if (currKoopaShell.whoParriedShell >= 0){	// checks if koopa parries their own shell. if the shell wasn't already parried, then don't give parry invincibility
			invince_time = 0;
		}
	}
}