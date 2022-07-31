//set_attack.gml

if (instance_exists (vacuum) && move_cooldown[AT_DSPECIAL] == 0){
	if (attack == AT_DSPECIAL){
	    attack = AT_DSPECIAL_2;
	}
}