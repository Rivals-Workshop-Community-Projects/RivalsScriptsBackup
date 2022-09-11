///#args attack // this line makes code editors not freak out for some reason

//	Taunts
if (attack == AT_TAUNT) 
{
	if (left_down || right_down)
	{
		attack = AT_TAUNT_2;
	}
	
	if (down_down) 
	{
		attack = AT_EXTRA_1;
	}
}

if (attack == AT_NSPECIAL && special_pressed && free)
{
    attack = AT_NSPECIAL_AIR;
}

//	No power, no service
if (attack == AT_NSPECIAL && energy_meter < 5)
{
	attack = AT_EXTRA_3;
}

if (attack == AT_FSPECIAL && special_pressed && !free && energy_meter < 10)
{
	attack = AT_EXTRA_3;
}

//	This is once again, another stupid work around
if (attack == AT_FSPECIAL && special_pressed && free && energy_meter < 10)
{
	attack = AT_NSPECIAL_AIR;
}

if (attack == AT_DSPECIAL && special_pressed && free && energy_meter < 25)
{
	attack = AT_NSPECIAL_AIR;
}

if (attack == AT_USPECIAL && energy_meter < 25)
{
	attack = AT_EXTRA_3;
}

/*if (special_down && energy_meter == 0)
{
	attack = AT_EXTRA_3;
}*/

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);