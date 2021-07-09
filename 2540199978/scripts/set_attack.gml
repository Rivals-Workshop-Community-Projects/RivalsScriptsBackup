switch (attack)
{
	case AT_NSPECIAL:
		if (nspecCharge > nspecChargeMax+10)
		{
			attack = AT_NSPECIAL_2;
		}
		break;
}