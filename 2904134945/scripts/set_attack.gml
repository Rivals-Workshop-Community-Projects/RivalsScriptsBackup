if (attack == AT_TAUNT)
{
	if (down_down || up_down) attack = AT_TAUNT_2;
	else if (!shield_down && practice) attack = AT_EXTRA_1;
}