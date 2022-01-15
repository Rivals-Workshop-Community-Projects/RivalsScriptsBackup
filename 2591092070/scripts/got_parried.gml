if(my_hitboxID.attack == AT_FSPECIAL)
    with(pHitBox)
    {
        if(player_id == other.id && attack == AT_FSPECIAL)
        {
            destroyed = true;
        }
    }
    
if(my_hitboxID.attack == AT_NSPECIAL)
    with(pHitBox)
    {
    destroyed = true;
    }