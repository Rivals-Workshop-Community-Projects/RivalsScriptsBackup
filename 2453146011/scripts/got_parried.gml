// got parried

// Dspecial parry
if(attack == AT_DSPECIAL)
{
    was_parried = true;
    //extended_parry_lag = true;
    
    // Reset stuff
    if(time_knife != noone) with(time_knife) x = -1;
}

if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_DSPECIAL){
    //sound_play(sound_get("PARRY"));
    attack_end();
    set_state(free ? PS_PRATFALL : PS_PRATLAND);
    was_parried = 1;
 }

// Destroy portals
charges = 0;
