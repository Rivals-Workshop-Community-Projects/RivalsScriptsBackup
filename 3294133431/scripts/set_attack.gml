//set_attack

if(disguised && attack == AT_TAUNT && !disguisedAsSelf)
    attack = AT_TAUNT_2;
    
if(attack == AT_FAIR)
    attack = AT_FTILT;
    
    
if(taunt_down && disguised && !disguisedAsSelf)
{
    if(attack != AT_TAUNT_2)
    {
        attack_end();
        state = free ? PS_IDLE_AIR : PS_IDLE;
    }
}


if(!disguised || disguisedAsSelf)
{
    if(state_cat == SC_GROUND_NEUTRAL && down_down && taunt_pressed)
        attack = AT_EXTRA_2;

    if(state_cat == SC_GROUND_NEUTRAL && up_down && taunt_pressed)
        attack = AT_EXTRA_3;
}