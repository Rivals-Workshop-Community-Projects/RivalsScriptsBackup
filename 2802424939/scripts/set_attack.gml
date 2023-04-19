switch(attack)
{
    case AT_NSPECIAL:
        set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);//code for landing lag
        break;
    case AT_FSPECIAL:
        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);//code for landing lag
        break;
    case AT_USTRONG:
        set_attack_value(AT_USTRONG, AG_CATEGORY, 2);//code for landing lag
        break;
    case AT_DSPECIAL:   
        if (instance_exists(stopwatch))
        attack = AT_DSPECIAL_2;
        break;
    case AT_BAIR:
        if (bair_mode)
        {
            attack = AT_FSTRONG_2;
        }
}
attack_dir = spr_dir;