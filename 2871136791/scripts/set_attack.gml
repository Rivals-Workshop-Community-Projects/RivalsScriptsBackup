//set_attack

if ((prevState == PS_DOUBLE_JUMP || vsp == -djump_speed) && is_special_pressed(DIR_UP))
	djumps = prevDjumps + (prevState != PS_DOUBLE_JUMP);

switch (attack)
{
	case AT_USPECIAL:
		if (birdOut) attack = AT_USPECIAL_2;
		break;
	case AT_USTRONG:
		if (parryUpSmashModifier)
		{
			set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 35);
			parryUpSmashModifier = false;
		}
		else
		{
			reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
		}
		break;
	case AT_DATTACK:
		reverseDir = true;
		break;
	case AT_DAIR:
		can_fast_fall = false;
		dairDamageTimer = 0;
		dairDJumps = djumps;
		break;
	case AT_FSPECIAL:
		if (birdOut)
			attack = AT_FSPECIAL_2;
		break;
	case AT_NSPECIAL:
		if (!birdOut)
			attack = AT_NSPECIAL_2;
		break;
	case AT_TAUNT:
		if (up_down || down_down)
		{
			attack = AT_TAUNT_2;
		}
		break;
}