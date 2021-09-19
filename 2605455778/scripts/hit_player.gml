if(attack == AT_FSPECIAL_2 && window == 4){
    armorpoints -= 1;
}
if(attack == AT_NSPECIAL && window == 2 && my_hitboxID.hbox_num == 1 && !hit_player_obj.soft_armor && !hit_player_obj.super_armor){
    grabbed_player = hit_player_obj;
}
if(attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
    if(swallowups){
        var uPow = create_hitbox(AT_USPECIAL, 4, my_hitboxID.x, my_hitboxID.y);
        swallowups = false;
    }else{
        var rockPow = create_hitbox(AT_USPECIAL, 2, my_hitboxID.x, my_hitboxID.y);
    }
    my_hitboxID.destroyed = true;
}