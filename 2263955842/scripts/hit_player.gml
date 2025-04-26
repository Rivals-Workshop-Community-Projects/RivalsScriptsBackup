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
     destroyed = true;
    my_hitboxID.my_yinyang.yy_hit_lockout = 30;
    var hbox = my_hitboxID;
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    my_hitboxID.my_yinyang.hitstop = floor(desired_hitstop);
    if(my_hitboxID.my_yinyang.yinyang_should_bounce_on_hit){
        my_hitboxID.my_yinyang.prev_hsp = -my_hitboxID.my_yinyang.hsp
        my_hitboxID.my_yinyang.prev_vsp = -my_hitboxID.my_yinyang.vsp
    }
   
   /* var my_yy = my_hitboxID.my_yinyang
    my_yy.hit_timer = my_yy.hit_timer_ref;
    
    
    // The greater of the 2 is changed
    if (abs(my_yy.vsp) >= abs(my_yy.hsp))
    {
        my_yy.vsp *= -1;
    }
    else
    {
        my_yy.hsp *= -1;
    }*/

}

if (my_hitboxID.attack == AT_DSTRONG) 
{
    has_hit = true;
}

if (my_hitboxID.attack == AT_USTRONG)
{
    if (my_hitboxID.hbox_num == 1)
    {
        sound_play(sound_get("soku_blow_heavy2"));
    }
}

if (my_hitboxID.attack == AT_FSTRONG)
{
    if (my_hitboxID.hbox_num == 1)
    {
        sound_play(sound_get("soku_energyblow_heavy1"));
    }
}

if (my_hitboxID.attack == AT_DSPECIAL) 
{
    dspe_stall += 1;
    if (dspe_stall > 20)
    {
        dspe_stall = 20;
    }
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
        sound_play(sound_get("soku_energyblow_break"))
    }
}





