switch(attack)
{
    case AT_TAUNT:
        if(down_down) attack = AT_TAUNT_2
        break;
    case AT_NSPECIAL:
        if(GemSelect != 2) attack = AT_NSPECIAL_2;
        break;
}