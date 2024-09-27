///#args attack
//  ^ this line up here makes gmedit not freak out

//set_attack.gml

switch (attack)
{
    case AT_DATTACK:
        if (up_down) attack = AT_UTILT;
        else if (down_down) attack = AT_DTILT;
        else if (left_down || right_down) attack = AT_DATTACK;
        break;
    case AT_FSPECIAL:
        can_fspec = false;
        break;
    case AT_DSPECIAL:
        healing_dspec = false;
        break;
}