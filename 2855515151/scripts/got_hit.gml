if (hatted_id != undefined)
{
	if (instance_exists(hatted_id))
	{
		hatted_id.visible = true;
		hatted_id.invincible = false;
		hatted_id.vsp = 0;
		hatted_id.hitstop = 0; //will release players out instantly
	}
	hatted_id = undefined;
}