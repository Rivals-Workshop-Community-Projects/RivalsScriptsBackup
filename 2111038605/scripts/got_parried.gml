if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    move_cooldown[AT_NSPECIAL] = block_cooldown;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2){
    do_the_thing = true;
    move_cooldown[AT_NSPECIAL] = block_cooldown;
}


    with (obj_article_solid){
        if (player_id == other.id){
            with (other){
                move_cooldown[AT_NSPECIAL] = block_cooldown;
            }
            die = true;
        }
    }
    with (obj_article1){
        if (player_id == other.id){
            die = true;
        }
    }
    