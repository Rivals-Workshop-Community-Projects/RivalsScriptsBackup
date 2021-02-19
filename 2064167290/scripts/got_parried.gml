// got parried

if (my_hitboxID.attack == AT_DSPECIAL)
{
    with (obj_article1)
    {
        if (player_id == other)
        {
            can_hit = false;
             //hsp = hsp * 1.5;
            vsp = -7 - (hsp == 0) * 2;
            
            PV -= uspecial_damage;
        }
    }
    
    parry_lag = 70;
    
    
}

if (my_hitboxID.attack == AT_FSPECIAL)
{
    set_state(PS_PRATFALL);
}

if (my_hitboxID.attack == AT_USTRONG)
{
     parry_lag = 56;
}