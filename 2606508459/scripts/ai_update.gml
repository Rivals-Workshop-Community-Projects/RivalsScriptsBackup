//AI update

//====> DASH ATTACK #######################################################

if (attack == AT_DATTACK)
{
    if (dattack_cool <= 0 && !flag_dattack)
    {
        dattack_cool = c_dattack_cool;
        flag_dattack = true;
    }
    
    if (dattack_cool <= 0 && flag_dattack)
    {
        flag_dattack = false;
        attack_pressed = true;
    }
}

//====> NEUTRAL SPECIAL #######################################################

if (attack == AT_NSPECIAL)
{
    var r_ns = random_func_2(0, 4, false);
    //print_debug(r_ns)
    
    if (r_ns > 1 && !nspecial_aiFlag)
    {
        if (r_ns > 3)   nspecial_hado_lock = 1;
        else            nspecial_hado_lock = 2;
    }
    if (nspecial_charge < c_nspecial_chargeFor)
    {
        special_down = true;
    }
    
    nspecial_aiFlag = true;
}
else
{
    nspecial_aiFlag = false;
}

//====> COOLDOWNS #######################################################

dattack_cool--;         if (dattack_cool <= 0)          { dattack_cool = 0; }