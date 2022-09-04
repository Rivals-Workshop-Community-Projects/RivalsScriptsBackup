//Reset all tail and bike animations so that they don't linger into the attack
trotation=0;
tsprite_index=-1;
tsx=1;
tsy=1;
if (attack !=43)
{
	bsprite_index=-1;
}
//This code lets Carol get on the bike if fuel is full
if (attack == AT_DSPECIAL && motorbike == false)
{
	if (fuel >=40  && motorbike == false && !free)
	{
		fuel = 40;
		attack = AT_EXTRA_1;
	}
}

//Insurance for tail animations... just in case!
if (attack == AT_EXTRA_2 && motorbike == false)
{
    tsprite_index = sprite_get("tail_walk");
    timage_index=0;
    timage_number=7;
	tfront=false;
	tx=-46*spr_dir;
	ty=-70;
	tsx=1;
	tsy=1;
	bsprite_index=-1;
}

//Carol has a different moveset while on the bike so this code ensures that she uses her bike moveset while on the bike
if (motorbike == true)
{
	/*If you want an easy guide to know which indexes are free, this code shows exactly that. 3, 39, 40 and 42-49 
	are all unused attack index which have no named equivalent */
	//This looks a bit messy tbh, but there's so many attacks to go over. May clean this up later
	if (attack = AT_JAB)
	{
		attack = 48;
	}
	if (attack = AT_FTILT)
	{
		attack = 47;
	}
	if (attack = AT_UTILT)
	{
		attack = 46;
	}
	if (attack = AT_DTILT)
	{
		attack = 45;
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
		attack = 40;
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
		attack = AT_FSPECIAL_2;
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