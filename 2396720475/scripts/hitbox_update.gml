// hitbox_update.gml
// Called every frame a hitbox is out
// From the perspective of a hitbox

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