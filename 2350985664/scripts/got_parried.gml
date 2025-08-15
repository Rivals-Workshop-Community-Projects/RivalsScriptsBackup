// got parried

hit_player_obj.blinded = 0;

switch (my_hitboxID.attack )
{
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DAIR:
    case AT_DATTACK:
        parry_lag = 60;
        
         set_state(PS_PRATFALL);
        
        old_vsp = 0
        old_hsp = 0;
        
        vsp = 0;
        hsp = 0;
    break;
    case AT_NSPECIAL:
        if (my_hitboxID.hbox_num == 3)
        {
            parry_lag = 60;
        
            set_state(PS_PRATFALL);
            
            old_vsp = 0
            old_hsp = 0;
            
            vsp = 0;
            hsp = 0;
        }
    break;
    case AT_DTILT:
        with (pHitBox)
        {
            if (player_id == other) and (attack == AT_DTILT)
            {
               destroyed = true;
            }
        
        }        
        parry_lag = 60;
    break;
    
    
    
    
}


parry_lag_ref = parry_lag;