//hit_player

if (my_hitboxID.attack == AT_DAIR) 
{
    if (my_hitboxID.hbox_num != 3)
    {
        old_vsp = -1;
    }
    else
    {
        old_vsp = -4.5;
    }
}



if (my_hitboxID.attack == AT_NSPECIAL) 
{
   
    var my_yy = my_hitboxID.my_yinyang
    my_yy.hit_timer = my_yy.hit_timer_ref;
    
    
    // The greater of the 2 is changed
    if (abs(my_yy.vsp) >= abs(my_yy.hsp))
    {
        my_yy.vsp *= -1;
    }
    else
    {
        my_yy.hsp *= -1;
    }

}

if (my_hitboxID.attack == AT_DSTRONG) 
{
    has_hit = true;
}


if (my_hitboxID.attack == AT_DSPECIAL) 
{
    dspe_stall += 1;
    if (dspe_stall > 20)
    {
        dspe_stall = 20;
    }
}




