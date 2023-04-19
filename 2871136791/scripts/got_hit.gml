can_fast_fall = true;

if (dairID != noone)
{
	if (dairID.state == PS_PRATFALL) with (dairID) set_state(PS_IDLE);
	dairID = noone;
}

move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_FSPECIAL_2] = 0;