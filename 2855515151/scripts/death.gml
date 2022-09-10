if (hatted_id != undefined)
{
	if (instance_exists(hatted_id))
	{
		hatted_id.visible = true;
		hatted_id.invincible = false;
		hatted_id.vsp = 0;
	}
	hatted_id = undefined;
}

if(instance_exists(hat_object)){
	if(hat_object.state < 3){
		hat_object.state = 6;
	} else {
		hat_object.state = 5;
	}
	hat_object.state_timer = 0;
	hat_object.health = 0;
}
hat_health = 0;
fspecial_air_count = 0;

