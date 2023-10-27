if(hit_player_obj.frostineFreeze && parry_lag != 0)
    hit_player_obj.frostineFreeze = false;
    
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.transcendent = 1;
    my_hitboxID.hsp *= 1.5;
    //my_hitboxID.proj_angle = my_hitboxID.proj_angle + 180;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.transcendent = 1;
    my_hitboxID.hsp *= 1.5;
    //my_hitboxID.proj_angle = my_hitboxID.proj_angle + 180;
}

if(my_hitboxID.type == 2 || my_hitboxID.attack == AT_DSPECIAL){
    with(obj_article1)
    {
        if(player_id == other.id)
        {
            with(other)
            {
                other.state = 3;
                other.state_timer = 0;
                }
            }
        
    }
}