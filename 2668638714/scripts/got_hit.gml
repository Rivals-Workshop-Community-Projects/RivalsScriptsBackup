// end_match();
fspecial_used = false;
dspecial_used = false;

if fspecial_charge == fspecial_max_charge
{
	take_damage(player,hit_player_obj.player,2);
}

if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND and attack == AT_FSPECIAL and window == 2)
{
	fspecial_charge = fspecial_charge_cut;
}