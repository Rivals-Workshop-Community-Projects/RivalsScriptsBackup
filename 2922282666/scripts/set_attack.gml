switch(attack)
{
    case AT_TAUNT:
        if(down_down) attack = AT_TAUNT_2
        break;
    case AT_FSPECIAL:
        if(GemObj.state != 0) attack = AT_DSPECIAL;
        break;
    case AT_NSPECIAL:
        attack = AT_NSPECIAL_2;
        break;
    case AT_DSPECIAL:
        attack = AT_NSPECIAL;
        break;
}