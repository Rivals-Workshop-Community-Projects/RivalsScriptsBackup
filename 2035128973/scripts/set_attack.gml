if (get_synced_var(player) == 15005) exit;
switch (attack)
{
	case AT_DSPECIAL:
		if (!hasBone) set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_boneless"));
		else reset_attack_value(AT_DSPECIAL, AG_SPRITE);
		break;
	case AT_USPECIAL:
		if (!hasBone /*|| uspecBan*/) attack = AT_USPECIAL_2;
		break;
	case AT_FSPECIAL:
		if (hasBone) attack = AT_FSPECIAL_2;
		break;
	case AT_DTILT:
		if (!hasBone) attack = AT_DTHROW;
		break;
	case AT_FTILT:
		if (!hasBone) attack = AT_FTHROW;
		break;
	case AT_NAIR:
		if (!hasBone) attack = AT_NSPECIAL_AIR;
		break;
	case AT_FAIR:
		if (!hasBone) attack = AT_FSPECIAL_AIR;
		break;
	case AT_DAIR:
		if (!hasBone) attack = AT_DSPECIAL_AIR;
		break;
	case AT_UAIR:
		if (!hasBone) attack = AT_USPECIAL_GROUND;
		break;
	case AT_TAUNT:
		if (down_down || up_down) attack = AT_EXTRA_1;
		break;
}

hasMovedUp = false;