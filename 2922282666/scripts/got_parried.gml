switch(my_hitboxID.attack)
{
    case AT_NSPECIAL_2:
            old_hsp = 0;
            old_vsp = 0;
            set_state(PS_PRATFALL);
        break;
    case AT_NSPECIAL:
        GemObj.state = 4;
        GemObj.state_timer = 0;
        break;
}