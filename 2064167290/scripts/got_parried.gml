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
    
    parry_lag = 50;
    
    
}

if (my_hitboxID.attack == AT_FSPECIAL)
{
    set_state(PS_PRATFALL);
}

if (my_hitboxID.attack == AT_USTRONG  && my_hitboxID.hbox_num < 4)
{
    was_parried = true;

}


if(my_hitboxID.attack == AT_NSPECIAL_2)

{
   my_hitboxID.hitbox_timer = 0
   my_hitboxID.hsp *= 1.5;
}