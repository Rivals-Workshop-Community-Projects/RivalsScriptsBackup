if (attack == AT_TAUNT)
{
	if ((down_down || up_down) && (menuStateBuffer==0 || menuStateBuffer==5 || menuStateBuffer==6)) attack = AT_TAUNT_2;
	else if (!shield_down && practice) attack = AT_EXTRA_1;
}