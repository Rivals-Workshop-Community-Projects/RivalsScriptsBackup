//set_attack.gml

if (attack == AT_DSPECIAL && !godmode && !old_dspec)
{
	attack = free?AT_DSPECIAL_AIR:AT_DSPECIAL_2;
}