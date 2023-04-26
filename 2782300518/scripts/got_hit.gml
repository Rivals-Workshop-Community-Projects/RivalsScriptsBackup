if (motorbike == true)
{
	//This variable determines the strength of Knockback for bike animation
	if (enemy_hitboxID.kb_value >= 9)
	{
		damageCheck = true;
	}
	else
	{
		damageCheck = false;
	}
	/*In Freedom Planet, getting hit three times while on the bike breaks the bike. 
	This is not a one to one recreation but its something similar*/
	fuel = fuel - enemy_hitboxID.damage;
	//A bunch of conditions to prevent Carol from flying off into outer space on her bike
	if (wall_ride)
	{
		hsp = 0;
		old_hsp = 0;
		vsp = 0;
		old_vsp = 0;		
	}
	switch (prev_state)
	{
		case PS_WALL_JUMP:
			hsp = 0;
			old_hsp = 0;
			vsp = 0;
			old_vsp = 0;
		break;
	}
	switch (prev_prev_state)
	{
		case PS_WALL_JUMP:
			hsp = 0;
			old_hsp = 0;
			vsp = 0;
			old_vsp = 0;
		break;
	}
}