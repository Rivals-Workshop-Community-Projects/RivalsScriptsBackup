if(!fast_falling){
    if my_hitboxID.attack == AT_DAIR
    {
        if my_hitboxID.hbox_num == 1
        {
            old_hsp *= 0.7
            old_vsp -= 2
        }
        else
        {
            old_vsp = -4
        }
    }
    else if my_hitboxID.attack == AT_BAIR
    {
        old_vsp = -2
        old_hsp = old_hsp - 1*spr_dir;
    } else if (my_hitboxID.attack == AT_NAIR){
        switch(my_hitboxID.hbox_num){
            case 1:

                old_vsp = -3;
                break;
            case 2:

                old_vsp = 1;
                break;
            case 3:
                
                old_vsp = -6;
                break;
        }
    } else if (my_hitboxID.attack == AT_UAIR){
        old_vsp += -1.4;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL) and !hit_player_obj.clone
{
    move_cooldown[AT_NSPECIAL] = 0;
    shadowball_hit = true;
    shadowball_hit_player = hit_player_obj;
    shadowball_hit_timer = 60*my_hitboxID.shadowball_size;
    set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5 + my_hitboxID.shadowball_size/6);
} else if (my_hitboxID.attack == AT_USPECIAL_2){
    shadowball_hit = false;
    shadowball_hit_timer = 0;
}
