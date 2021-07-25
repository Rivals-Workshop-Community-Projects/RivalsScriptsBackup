if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    with (obj_article_solid){
        if (player_id == other.id){
            vsp = -6;
        }
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2){
    do_the_thing = true;
    with (obj_article_solid){
        if (player_id == other.id && place_meeting(x, y, other.my_hitboxID)){
            state = 0;
            state_timer = 0;
            hsp = -6*spr_dir;
            free = true;
            vsp = -6;
        }
    }
}