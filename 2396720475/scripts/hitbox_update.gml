// hitbox_update.gml
// Called every frame a hitbox is out
// From the perspective of a hitbox
/*
if (attack == AT_NSPECIAL){

	// vsp = 4 * cos(get_gameplay_time()/4 mod (2*pi)); // The nerd way

	// The cowards way (that's me)
	if (vsp == 3.5){
		proj_speed = -0.5;
	}

	if (vsp == -3.5){
		proj_speed = 0.5;
	}

	vsp += proj_speed;

}
*/

if (attack == AT_DSPECIAL){
	if (was_parried){
		if (instance_exists(player_id.movingbox)){
			if (player_id.movingbox.vsp < -4){
				player_id.movingbox.vsp = -10;
			}
			else {
				player_id.movingbox.vsp = -6;
			}
			player_id.movingbox.hsp = clamp((player_id.movingbox.hsp * -1) * 100, -8, 8);
		}
		was_parried = false;
	}
}
