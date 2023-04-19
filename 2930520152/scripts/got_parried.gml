if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num < 10){
    was_parried = true;
}

if(my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 2){
    my_hitboxID.length = my_hitboxID.hitbox_timer + my_hitboxID.length;
}

if(my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 10 || my_hitboxID.hbox_num == 11)){
    if(hit_player_obj == self){
        invincible = false;
        invince_time = 0;
        // can_be_hit[hit_player_obj.player] = 0;
    }
    if(variable_instance_exists(my_hitboxID, "eruption_owner")){
        my_hitboxID.eruption_owner.state = 420;
        my_hitboxID.eruption_owner.state_timer = 0;
        my_hitboxID.eruption_owner.image_index = 0;
    }
}