///#args set_attack

if !move_cooldown[attack] switch attack{
	case AT_NSPECIAL:
	if !tokens move_cooldown[attack] = 2;
	else tokens--;
	break;
}
drill_angle = 0;