
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){    //Has the enemy enter in contact with the
    block1.lighting_strike = true;                                      //activation box from the Block1?
    hit_player_obj.x = block1.x;
    hit_player_obj.y = block1.y;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){    //Has the enemy enter in contact with the
    block2.lighting_strike = true;                                      //activation box from the Block2?
    hit_player_obj.x = block2.x;
    hit_player_obj.y = block2.y;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 3){    //Has the enemy enter in contact with the
    block3.lighting_strike = true;                                      //activation box from the Block3?
    hit_player_obj.x = block3.x;
    hit_player_obj.y = block3.y;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 4){    //Has the enemy enter in contact with the
    butterfly.lighting_strike = true;                                   //activation box from the Butterfly?
    hit_player_obj.x = butterfly.x;
    hit_player_obj.y = butterfly.y;
}

