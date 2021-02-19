//set_attack.gml

if (attack == AT_TAUNT && helmet == 1)
{
	attack = AT_TAUNT_2;
}
else if (attack == AT_USPECIAL && !free)
{
	attack = AT_USPECIAL_GROUND;
}