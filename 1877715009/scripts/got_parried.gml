if (my_hitboxID.attack != AT_NSPECIAL || my_hitboxID.hbox_num != 1)
{
	aura = false;
	killarticles = true;
	killarticles2 = true;
	aurapt[5] = 0;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num > 3 && attack == AT_NSPECIAL)
{
    as_charge = 0;
	as_frame = 0;
	window = 8;
	window_timer = 0;
	as_charging = false;
}
else if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num <= 3)
{
	my_hitboxID.hitbox_timer = 0;
}