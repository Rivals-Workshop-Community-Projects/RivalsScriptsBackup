//hitbox_update.gml

if (attack == AT_DSPECIAL){
	//destroyed = true;
	if (!place_meeting(x,y,(player_id.monkeyBall)) && hbox_num == 1){
		destroyed = true;
	}
	if(hbox_num == 1){
		if(instance_exists(player_id.monkeyBall)){
			x = player_id.monkeyBall.x;
			y = player_id.monkeyBall.y;
		}
	}
	if (player != player_id.player){
		projectile_parry_stun = false;
	} else if (player == player_id.player){
		projectile_parry_stun = true;
	}
}