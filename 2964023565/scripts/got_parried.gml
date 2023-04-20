// code for kamehameha

if (attack == AT_DSPECIAL){
	with (pHitBox){ //Touching itself, moving away
	 if id = player_id.goop_1 && !free{
	 	with player_id{
	 		instance_destroy(goop_1);
	 	}	
	 }
	 if id = player_id.goop_2 && !free{
	 	with player_id{
	 		instance_destroy(goop_2);
	 	}	
	 }
	}
}