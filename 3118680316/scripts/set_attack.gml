//set_attack
if(attack == AT_DATTACK)
{
    if(down_down)
    {
        set_window_value(AT_DATTACK,1,AG_WINDOW_HSPEED,4);
    }
    else
    {
        reset_window_value(AT_DATTACK,1,AG_WINDOW_HSPEED);
    }
}

if(attack == AT_DSPECIAL)
{
    if(!can_dspecial_air && !explosive_special) move_cooldown[AT_DSPECIAL] = 1;
}

if(attack == AT_NSPECIAL)
{
    if(has_rune("C"))
    {
        set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
    }
}