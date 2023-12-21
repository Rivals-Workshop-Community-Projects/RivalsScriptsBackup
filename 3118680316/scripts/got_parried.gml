//got_parried
explosive_special = false;

if(my_hitboxID.attack == AT_EXTRA_2)
{
    if(free){
        set_state(PS_PRATFALL);
    }
    else
    {
        set_state(PS_PRATLAND);
    }
    was_parried = true;
    extended_parry_lag = true;
    parry_lag = 40;
}

if(my_hitboxID.attack == AT_EXTRA_1)
{
    was_parried = true;
}