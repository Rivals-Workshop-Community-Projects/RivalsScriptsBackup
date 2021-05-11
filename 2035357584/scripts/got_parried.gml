//got parried

//Manual logic for parry lag when parrying explosion 
//(parrying explosion from own grenade gives no lag but reduces invince_time to less
//than the parry animation length)
if(my_hitboxID.attack == AT_EXPLOSION){
    if(hit_player_obj != id){
        //explosion from the trap has this unique variable to prevent parry stun
        if(my_hitboxID.camera_shake == 0){
            was_parried = false;
        }
        else{
            if(free){
                set_state(PS_PRATFALL);
            }
            else{
                set_state(PS_PRATLAND);
            }
            was_parried = true;
            extended_parry_lag = true;
            parry_lag = 40;
        }
    }
    else{
        invince_time = floor(invince_time/4);
    }
}

if(my_hitboxID.attack == AT_FAIR_G){
    set_state(PS_PRATFALL);
}