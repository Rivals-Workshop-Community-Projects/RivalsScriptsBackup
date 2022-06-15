//set_attack
if (free == true and attack == AT_DSPECIAL)
{
    attack = AT_DSPECIAL_2;
}

if (free == true and attack == AT_NSPECIAL)
{
    attack = AT_NSPECIAL_2;
}

if (free == true and attack == AT_FSPECIAL)
{
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_FSPECIAL_AIR)
{
    set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
}