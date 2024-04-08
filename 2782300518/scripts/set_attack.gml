//Reset all tail and bike animations so that they don't linger into the attack
trotation=0;
tsprite_index=-1;
tsx=1;
tsy=1;
bsprite_index=-1;
//This code lets Carol get on the bike if fuel is full
if (attack == AT_DSPECIAL && motorbike == false)
{
	if (move_cooldown[AT_DSPECIAL] > 0) exit;
}

//Carol has a different moveset while on the bike so this code ensures that she uses her bike moveset while on the bike
if (motorbike == true)
{
	/*If you want an easy guide to know which indexes are free, this code shows exactly that. 3, 39, 40 and 42-49 
	are all unused attack index which have no named equivalent */
	//This looks a bit messy tbh, but there's so many attacks to go over. May clean this up later
	if (attack = AT_JAB)
	{
		attack = AT_NTHROW;
	}
	if (attack = AT_FTILT)
	{
		attack = AT_FTHROW;
	}
	if (attack = AT_UTILT)
	{
		attack = AT_UTHROW;
	}
	if (attack = AT_DTILT)
	{
		attack = AT_DTHROW;
	}
	if (attack = AT_NAIR)
	{
		attack = 44;
	}
	if (attack = AT_FAIR)
	{
		attack = 43;
	}
	if (attack = AT_UAIR)
	{
		attack = 42;
	}
	if (attack = AT_DAIR)
	{
		attack = AT_EXTRA_1;
	}
	if (attack = AT_BAIR)
	{
		attack = 39;
	}
	if (attack = AT_DATTACK)
	{
		attack = 3;
	}
	if (attack == AT_NSPECIAL)
	{
		attack = AT_NSPECIAL_2;
	}
	if (attack == AT_FSPECIAL)
	{
		if (free)
		{
			attack = AT_FSPECIAL_AIR;
		}
		else
		{
			attack = AT_FSPECIAL_2;
		}
	}
	if (attack == AT_USPECIAL)
	{
		attack = AT_USPECIAL_2;
	}
	if (attack == AT_DSPECIAL)
	{
		if (free)
		{
			attack = AT_DSPECIAL_AIR;
		}
		else
		{
			attack = AT_DSPECIAL_2;
		}
	}
	if (attack == AT_FSTRONG)
	{
		attack = AT_FSTRONG_2;
	}
	if (attack == AT_USTRONG)
	{
		attack = AT_USTRONG_2;
	}
	if (attack == AT_DSTRONG)
	{
		attack = AT_DSTRONG_2;
	}
	if (attack == AT_TAUNT)
	{
		attack = AT_TAUNT_2;
	}
}
else if (attack == AT_TAUNT)
{
	if (up_down && get_stage_data(SD_ID) == "3104498030" && (x >= 390 && x <= 460) && y == 416)
	{
		attack = 45;
	}	
	if (down_down)
	{
		attack = AT_EXTRA_3;
	}
}