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
}