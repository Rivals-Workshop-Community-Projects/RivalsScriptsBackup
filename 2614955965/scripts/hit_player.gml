
// making time stop when a super is performed
if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 1)
{
    hit_player_obj.hitpause = true;
    
    hit_player_obj.old_hsp = 0;
    
    hit_player_obj.old_vsp = 0;
    
    hit_player_obj.hitstop = 2;
    
    hit_player_obj.hitstop_full = 2;

}

if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 2)
{
    slashed = true;

}