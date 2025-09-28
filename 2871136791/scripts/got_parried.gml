if (my_hitboxID.attack == AT_DSPECIAL && !my_hitboxID.was_parried)
{
	if (recharge1 > recharge2) recharge1 += 240;
	else recharge2 += 240;

	canShoot = 0;
	if (recharge1 <= 1) canShoot++;
	if (recharge2 <= 1) canShoot++;
}