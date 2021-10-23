user_event(13);

if (attack == AT_FSPECIAL)
{
    attack = AT_NSPECIAL;
}
else if (attack == AT_NSPECIAL)
{
    attack = AT_FSPECIAL;
}

if (attack == AT_USPECIAL && free)
{
    attack = AT_USPECIAL_2;
}

if (attack == AT_TAUNT)
{
}

if (attack = AT_FAIR)
{
    attack = AT_EXTRA_2;
}