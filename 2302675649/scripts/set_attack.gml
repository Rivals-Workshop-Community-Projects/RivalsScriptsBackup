switch (attack)
{
	case AT_NAIR:
	case AT_FAIR:
	case AT_UAIR:
	case AT_DAIR:
		if (CheckJumpStrong()) attack = AT_NTHROW;
		break;
	case AT_BAIR:
		if (CheckJumpStrong())
		{
			attack = AT_NTHROW;
			spr_dir *= -1;
		}
		break;
	case AT_FSTRONG:
		attack = has_rune("A")&&CheckJumpStrong()?AT_NTHROW:AT_FTILT;
		break;
	case AT_USTRONG:
		attack = has_rune("A")&&CheckJumpStrong()?AT_NTHROW:AT_UTILT;
		break;
	case AT_DSTRONG:
		attack = has_rune("A")&&CheckJumpStrong()?AT_NTHROW:AT_DTILT;
		break;
	case AT_TAUNT:
		if (down_down)
			attack = AT_EXTRA_1;
		else if (get_player_color(player) == 12 && !practice)
			attack = AT_TAUNT_2;
		break;
	case AT_DSPECIAL:
		if (move_cooldown[attack] == 0) dspecImage = {sprite:sprite_index, image:image_index, x:x, y:y, spr_dir:spr_dir, alpha:20};
		break;
}

#define CheckJumpStrong()
{
	if (jsTimer > 0)
	{
		jsCStick = false;
		jsSmashStick = false;
		if (left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed)
		{
			jsCStick = (left_stick_pressed || right_stick_pressed || up_stick_pressed || down_stick_pressed);
			return true;
		}
	}
	return false;
}