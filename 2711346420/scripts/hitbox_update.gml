//hitbox_update.gml

if (attack == AT_DSPECIAL){
	if (!place_meeting(x,y,(player_id.monkeyBall))){
		destroyed = true;
	}
	if (player != player_id.player){
		projectile_parry_stun = false;
	} else if (player == player_id.player){
		projectile_parry_stun = true;
	}
}