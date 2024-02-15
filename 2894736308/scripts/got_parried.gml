if(my_hitboxID.attack == AT_JAB){
    was_parried = false;
}//*/

if(my_hitboxID.attack == AT_FSPECIAL){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.draw_xscale *= -1;
    my_hitboxID.hsp *= 1.2;
    
    ring_cd[add_on] = 300;
    ring_cd_max[add_on] = 300;
}

if(my_hitboxID.attack == AT_NSPECIAL_2){
    my_hitboxID.draw_xscale *= -1;
    my_hitboxID.transcendent = true;
}

if(ring_equipped > -1 && my_hitboxID.type == 1){
    ring_timer += floor(ring_time_max/2);
}

if(my_hitboxID.type == 1 && ring_out != noone){
    if(ring_out.state != 2){
        ring_out.state_timer = 0;
        ring_out.state = 2;
    }
}
