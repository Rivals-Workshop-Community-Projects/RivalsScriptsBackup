///#args attack // this line makes code editors not freak out for some reason

if (instance_exists(plunger_guard)) 
{
	if !(attack == AT_JAB || attack == AT_UTILT || attack == AT_FTILT || attack == AT_DTILT 
	|| attack == AT_DATTACK || attack == AT_FSTRONG|| attack == AT_USTRONG || attack == AT_DSTRONG 
	|| attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_BAIR 
	|| attack == AT_DAIR || attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL 
	|| attack == AT_TAUNT) 
	{
		move_cooldown[attack] = 1;
	}
}

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

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);