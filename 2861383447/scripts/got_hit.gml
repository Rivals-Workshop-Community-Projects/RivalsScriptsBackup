move_cooldown[AT_FSPECIAL] = 0;

elec_charge -= 6;

if (!arsene)
rebellion_meter += enemy_hitboxID.damage * 2;
if (arsene)
rebellion_meter -= enemy_hitboxID.damage;

if (!is_nana){
	if (out_cd == 0)
	{
		outs++;
	}
	out_cd = 20;
}