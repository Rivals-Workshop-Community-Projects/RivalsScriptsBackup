if (attack == AT_FSPECIAL)
{
	carjump = 0;
    window = 6;
	window_timer = 1;
	set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
	
}

if (attack == AT_USPECIAL)
{
	window = 4;
	window_timer = -1;
}

if (attack == AT_DATTACK)
{
	set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
}

if (attack == AT_FSTRONG)
{
	fstrparry = 1;
}

if (my_hitboxID.attack == AT_NSPECIAL)
{
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp *= 2;
	my_hitboxID.transcendent = true;
}
if (my_hitboxID.attack == AT_USTRONG)
{
	my_hitboxID.transcendent = true;
}