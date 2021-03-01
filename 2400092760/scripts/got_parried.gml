if(my_hitboxID.attack == AT_DTILT
|| my_hitboxID.attack == AT_USPECIAL
|| my_hitboxID.attack == AT_NSPECIAL
|| my_hitboxID.attack == AT_DSPECIAL
|| my_hitboxID.attack == AT_DSPECIAL_AIR){
    with(obj_article1){
        if(player_id == other.id){
            
            art_parried = true;
            if(state == 0){
                state_timer = 90;
                hsp = 0;
            }
            if(state == 10){
                state_timer = 20;
            }
            if(state == 4){
                state_timer = 40;
                destroy_hitboxes();
            }
        }
    }
}


if(attack == AT_FSPECIAL){
    if(window == 2){
        window = 3;
        window_timer = 0;
        image_index = 0;
    }
}