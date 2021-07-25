//update

if (buff_damage != 0)
{
    buff_charge += buff_damage;
    buff_damage = 0;
}


if (buff_charge > required_charge && buff_mode = 0)
{
    buff_charge = required_charge;
    buff_ready = 1;
}

if (buff_mode = 1)
{
    buff_ready = 0;
    if (buff_charge > 0)
    {
        buff_charge += -charge_drain_rate;
    }
    else
    {
        buff_mode = 0;
    }
}
