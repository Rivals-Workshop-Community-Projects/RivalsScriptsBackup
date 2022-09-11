//	got_parried.gml

//	stop it
if (attack == AT_DTILT)
{
	if (!free)
	{
		set_state(PS_PRATLAND);
	}
	
	if (free)
	{
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_FSPECIAL)
{	
	if (!free)
	{
		set_state(PS_PRATLAND);
	}
	
	if (free)
	{
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_FSPECIAL_2)
{	
	if (!free)
	{
		set_state(PS_PRATLAND);
	}
	
	if (free)
	{
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_DSPECIAL)
{	
	if (!free)
	{
		set_state(PS_PRATLAND);
	}
	
	if (free)
	{
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_DSPECIAL_2)
{	
	if (!free)
	{
		set_state(PS_PRATLAND);
	}
	
	if (free)
	{
		set_state(PS_PRATFALL);
	}
}

// Reset DAIR's projectile
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.type == 2) 
{
    //reset the projectile's lifetime
    
	my_hitboxID.hitbox_timer 	= 0;
	my_hitboxID.hsp 			*= 1.4;
    my_hitboxID.length 			/= 1.5;
}