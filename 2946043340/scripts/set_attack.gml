//set_attack

switch (attack)
{
    //changing around dash attack to do my bidding
    case AT_DATTACK:
        if (up_down) attack = AT_UTILT;
        else if (down_down) attack = AT_DTILT;
        else if (left_down || right_down) attack = AT_DATTACK;
        break;
}

//if (attack == AT_FSPECIAL && (move_cooldown[AT_FSPECIAL] > 0)) { attack = AT_FSPECIAL_2; }