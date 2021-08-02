switch (attack)
{
	case AT_NSPECIAL:
		if (aura > 0) nspecCharge = nspecChargeMax+20;
		if (nspecCharge > nspecChargeMax+10) attack = AT_NSPECIAL_2;
		break;

	case AT_TAUNT:
		if (down_down || up_down) attack = AT_EXTRA_1;
		break;
}