switch (attack)
{

    case AT_DATTACK:
        if (up_down) attack = AT_UTILT; 
        else if (left_down || right_down) attack = AT_FTILT; //no dash attack fuck you haha
        else if (down_down) attack = AT_DTILT;
        break;

    case AT_NAIR:
    case AT_FAIR:
    case AT_BAIR:
    case AT_UAIR:
    case AT_DAIR:
        if (left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed) attack = AT_ASTRONG; //however
        //if (left_strong_pressed && spr_dir = 1 || right_strong_pressed && spr_dir = -1) spr_dir = -spr_dir;
        break;
}