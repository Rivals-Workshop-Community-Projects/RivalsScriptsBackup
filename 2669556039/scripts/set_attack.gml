//set_attack


if(taunt_down)
    state = free ? PS_IDLE_AIR : PS_IDLE;
else if(attack == AT_NSPECIAL)
{
    if(nspecialType == 1)
        attack = AT_NSPECIAL_2;
    if(nspecialType == 2)
        attack = AT_EXTRA_1;
    if(nspecialType == 3)
        attack = AT_EXTRA_2;
}

if(attack == AT_USPECIAL)
{
    if(!free)
        attack = AT_USPECIAL_GROUND;
}