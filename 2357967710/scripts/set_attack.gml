//set_attack
if (free == true && attack == AT_NSPECIAL)
{
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_DSPECIAL)
{
    if (slot = 0 and free = false)
    {
        attack = AT_FSPECIAL_2
    }
    else if (slot > 0 and evidence1 == 7 and free == false)
    {
        attack = AT_EXTRA_2;
    }
}
if (((special_pressed and attack_pressed) or (special_down and attack_down) or (special_down and attack_pressed) or (special_pressed and attack_down)) and free == false)
{
    attack = AT_FSPECIAL_2
}


if (turnabout == 1)
{
    switch(attack)
    {
        case AT_FAIR:
            attack = AT_FTHROW;
            break;
        case AT_DAIR:
            attack = AT_DTHROW;
            break;
        case AT_DTILT:
            attack = AT_DSTRONG_2;
            break;
        case AT_UTILT: 
            attack = AT_UTHROW;
            break;
    }
}