switch(attack)
{
    case AT_TAUNT:
        if(down_down && move_cooldown[AT_TAUNT_2] < 1) 
        {
            attack = AT_TAUNT_2
            clear_button_buffer(PC_TAUNT_PRESSED);
        }
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